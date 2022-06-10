// helper methods for tests
import { Worker, NearAccount, JsonRpcProvider, Action, KeyPair } from 'near-workspaces';
import { transactions, utils } from 'near-api-js';
import { sha256 } from 'js-sha256';
import { TestFn } from 'ava';


const { serialize, key_pair } = utils;


type NearWorkspacesTest = TestFn<{
  worker: Worker;
  accounts: Record<string, NearAccount>;
}>;

class ErrObj {
  message!: string;
  stack!: string;
}

class TX {
  receiver!: string;
  actions!: Action[];
}

function getFunctionCallError (errObj: ErrObj): string {
  const parsedMsg: any = JSON.parse(errObj.message);
  return parsedMsg.result.status.Failure.ActionError.kind.FunctionCallError.ExecutionError;
}

function encodeBase64 (inputStr: string): string {
  return Buffer.from(inputStr).toString("base64");
}

// manually sign & send multiple transactions
async function signAndSendTransactions (
  account: NearAccount,
  provider: JsonRpcProvider,
  TXs: TX[]
): Promise<any[]> {

  // get the account's keyPair
  const initKeys: KeyPair = (await account.getKey())!;
  // re-create the keys to adhere with transaction SCHEMA from near-api-js
  const keys = key_pair.KeyPair.fromString( initKeys.toString() )
  const pubKey = keys.getPublicKey();

  // get accessKey info and a recent block hash
  const accessKey: any = await provider.query(
    `access_key/${account.accountId}/${pubKey.toString()}`, ""
  );
  let nonce: number = accessKey.nonce;
  let recentBlockHash: Buffer = serialize.base_decode(accessKey.block_hash);

  // sign & send every transaction
  const txResults = await Promise.all( TXs.map( async (tx, i) => {
    // increment nonce
    let txNonce = nonce + i + 1;
    // prepare current TX
    const { receiver, actions } = tx;
    const transaction = transactions.createTransaction(
      account.accountId,
      pubKey,
      receiver,
      txNonce,
      actions,
      recentBlockHash
    );

    // Before we can sign the transaction we must perform three steps
    // 1) Serialize the transaction in Borsh
    const serializedTx = serialize.serialize(
      transactions.SCHEMA,
      transaction
    );
    // 2) Hash the serialized transaction using sha256
    const serializedTxHash = new Uint8Array(sha256.array(serializedTx));
    // 3) Create a signature using the hashed transaction
    const signature = keys.sign(serializedTxHash);
    // Sign the transaction
    const signedTransaction = new transactions.SignedTransaction({
      transaction,
      signature: new transactions.Signature({
        keyType: transaction.publicKey.keyType,
        data: signature.signature
      })
    });
    // Send the transaction
    return (await provider.sendTransaction(signedTransaction));
  } ));

  return txResults;
}


export {
  getFunctionCallError,
  encodeBase64,
  NearWorkspacesTest,
  TX,
  signAndSendTransactions
};

import { env, context, ContractPromiseBatch, u128, base64 } from "near-sdk-as";
import { BatchCall } from "./model";


// returns a promise that aggregates all calls
export function _internal_multicall(calls: BatchCall[][]): void {
  const last_ids = new Array<u64>(calls.length);

  for (let i = 0; i < calls.length; i++) {
    let curr_chain = calls[i];
    let curr_id: u64;

    // construct a promise chain
    for (let j = 0; j < curr_chain.length; j++) {

      if (j > 0) {
        // add a batch to the promise chain
        curr_id = make_batch(curr_chain[j], false, curr_id);
      } else {
        // make the first batch in the promise chain
        curr_id = make_batch(curr_chain[j], true);
      }
    }

    // save id of last batch in each promise chain
    last_ids[i] = (curr_id);
  }

  // aggregate all promise chains
  const aggregated_promise = <ContractPromiseBatch> {
    id: env.promise_and( last_ids.dataStart, last_ids.length )
  };

  // can't return joint promises as result
  // so create a gas-cheap promise and return it
  const final_promise = aggregated_promise
    .then(context.contractName)
    .transfer(u128.Zero)

  // return final promise as result
  env.promise_return(final_promise.id);

}

function make_batch(
  batch_call: BatchCall,
  is_first: boolean,
  prior_id: u64 = 0
): u64 {

  let promiseBatch: ContractPromiseBatch;
  if (is_first == true) {
    promiseBatch = ContractPromiseBatch.create(batch_call.address);
  } else {
    let prior_batch = { id: prior_id } as ContractPromiseBatch;
    promiseBatch = prior_batch.then(batch_call.address);
  }

  const actions = batch_call.actions;
  for (let i = 0; i < actions.length; i++) {
    promiseBatch = promiseBatch.function_call(
      actions[i].func,
      base64.decode(actions[i].args),
      actions[i].depo,
      actions[i].gas
    );
  }

  return promiseBatch.id;
}

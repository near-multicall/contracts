import { u128 } from 'near-sdk-as';


@nearBindgen
export class MulticallInitArgs { 
  admin_accounts: string[]
}

@nearBindgen
export class OnCreateArgs {
  account_id: string;
  attached_deposit: u128;
  predecessor_account_id: string
}

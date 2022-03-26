// helper methods for tests


class ErrObj {
    message: string;
    stack: string;
}

function getFunctionCallError (errObj: ErrObj): string {
    const parsedMsg: any = JSON.parse(errObj.message);
    return parsedMsg.result.status.Failure.ActionError.kind.FunctionCallError.ExecutionError;
}

function encodeBase64 (inputStr: string): string {
    return Buffer.from(inputStr).toString("base64");
}


export {
    getFunctionCallError,
    encodeBase64
};

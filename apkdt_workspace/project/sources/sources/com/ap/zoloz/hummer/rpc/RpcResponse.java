package com.ap.zoloz.hummer.rpc;

import com.zoloz.zhub.common.factor.model.FactorNextResponse;

/* loaded from: classes.dex */
public class RpcResponse {
    public FactorNextResponse factorNextResponse = new FactorNextResponse();
    public String exception = "";

    public String toString() {
        return "RpcResponse{factorNextResponse = " + this.factorNextResponse.toString() + ", exception = " + this.exception + '}';
    }
}

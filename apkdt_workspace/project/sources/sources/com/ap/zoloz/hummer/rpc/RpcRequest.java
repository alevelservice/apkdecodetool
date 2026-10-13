package com.ap.zoloz.hummer.rpc;

import com.zoloz.zhub.common.factor.model.FactorNextRequest;

/* loaded from: classes.dex */
public class RpcRequest {
    public FactorNextRequest factorNextRequest = new FactorNextRequest();
    public String currentTaskName = "";
    public boolean showLoading = false;

    public String toString() {
        return "RpcRequest{factorNextRequest = " + this.factorNextRequest.toString() + ", currentTaskName = " + this.currentTaskName + ", showLoading = " + this.showLoading + '}';
    }
}

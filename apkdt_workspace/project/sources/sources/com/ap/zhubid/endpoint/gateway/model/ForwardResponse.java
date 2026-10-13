package com.ap.zhubid.endpoint.gateway.model;

/* loaded from: classes.dex */
public class ForwardResponse extends AbstractEkycGwResponse {
    public String resultMap;
    public String versionToken;

    public String toString() {
        return "ForwardResponse{success = " + this.success + ", retCode = " + this.retCode + ", retMsg = " + this.retMsg + ", retCodeSub = " + this.retCodeSub + ", retMessageSub = " + this.retMessageSub + ", resultMap = " + this.resultMap + ", versionToken = " + this.versionToken + '}';
    }
}

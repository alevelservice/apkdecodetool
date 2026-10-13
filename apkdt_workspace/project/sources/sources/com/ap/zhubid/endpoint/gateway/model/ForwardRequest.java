package com.ap.zhubid.endpoint.gateway.model;

/* loaded from: classes.dex */
public class ForwardRequest extends AbstractEkycGwRequest {
    public String actionParams;
    public String actionType;
    public String versionToken;

    public String toString() {
        return "ForwardRequest{eKYCId = " + this.ekycId + ", bizId = " + this.bizId + ", actionType = " + this.actionType + ", actionParams = " + this.actionParams + ", versionToken = " + this.versionToken + '}';
    }
}

package com.alipay.mobile.security.faceauth.api;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class AntDetectResponse implements Serializable {
    private static final long serialVersionUID = 110;
    String token = "";
    String resultMessage = "";
    int result = 0;
    boolean isSuccess = false;
    String tag = "";
    Map<String, String> ext = new HashMap();

    public Map<String, String> getExt() {
        return this.ext;
    }

    public int getResult() {
        return this.result;
    }

    public String getResultMessage() {
        return this.resultMessage;
    }

    public String getTag() {
        return this.tag;
    }

    public String getToken() {
        return this.token;
    }

    public boolean isSuccess() {
        return this.isSuccess;
    }

    public void setExt(Map<String, String> map) {
        this.ext = map;
    }

    public void setResult(int i2) {
        this.result = i2;
    }

    public void setResultMessage(String str) {
        this.resultMessage = str;
    }

    public void setSuccess(boolean z) {
        this.isSuccess = z;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public void setToken(String str) {
        this.token = str;
    }
}

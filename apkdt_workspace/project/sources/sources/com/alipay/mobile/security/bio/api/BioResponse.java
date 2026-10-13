package com.alipay.mobile.security.bio.api;

import com.alipay.mobile.security.bio.utils.StringUtil;
import java.io.Serializable;
import java.util.Map;

/* loaded from: classes.dex */
public class BioResponse implements Serializable {
    private static final long serialVersionUID = 110;
    private Map<String, String> ext;
    public String subCode;
    public String subMsg;
    private String token = "";
    private String resultMessage = "";
    private int result = 0;
    private boolean isSuccess = false;
    private String tag = "";

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

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("BioResponse{token='");
        sb.append(this.token);
        sb.append('\'');
        sb.append(", resultMessage='");
        sb.append(this.resultMessage);
        sb.append('\'');
        sb.append(", result=");
        sb.append(this.result);
        sb.append(", isSuccess=");
        sb.append(this.isSuccess);
        sb.append(", tag='");
        sb.append(this.tag);
        sb.append('\'');
        sb.append(", ext=");
        Map<String, String> map = this.ext;
        sb.append(map == null ? "null" : StringUtil.collection2String(map.keySet()));
        sb.append('}');
        return sb.toString();
    }
}

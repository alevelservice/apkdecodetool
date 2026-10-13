package com.alipay.bis.core.protocol;

import com.alipay.mobile.security.zim.biz.ZimPlatform;

/* loaded from: classes.dex */
public class BisMetaInfo {
    private String fmt = "1";
    private String evVer = "EYE";
    private String feVer = "5.2";
    private String hwVer = "1.0";
    private String bEva = ZimPlatform.REASON_0;

    public String getEvVer() {
        return this.evVer;
    }

    public String getFeVer() {
        return this.feVer;
    }

    public String getFmt() {
        return this.fmt;
    }

    public String getHwVer() {
        return this.hwVer;
    }

    public String getbEva() {
        return this.bEva;
    }

    public void setEvVer(String str) {
        this.evVer = str;
    }

    public void setFeVer(String str) {
        this.feVer = str;
    }

    public void setFmt(String str) {
        this.fmt = str;
    }

    public void setHwVer(String str) {
        this.hwVer = str;
    }

    public void setbEva(String str) {
        this.bEva = str;
    }
}

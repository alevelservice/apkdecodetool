package com.alipay.mobile.security.bio.config.bean;

/* loaded from: classes.dex */
public class NavigatePage {
    private boolean enable = false;
    private String url = "";

    public String getUrl() {
        return this.url;
    }

    public boolean isEnable() {
        return this.enable;
    }

    public void setEnable(boolean z) {
        this.enable = z;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "NavigatePage{enable=" + this.enable + ", url='" + this.url + "'}";
    }
}

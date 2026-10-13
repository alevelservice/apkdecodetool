package com.alipay.mobile.security.bio.workspace;

/* loaded from: classes.dex */
public class NavPageConfig {
    private boolean enable = true;
    private String version = "";
    private String userNameHidden = "";
    private String url = "";
    private boolean titleVisible = false;

    public String getUrl() {
        return this.url;
    }

    public String getUserNameHidden() {
        return this.userNameHidden;
    }

    public String getVersion() {
        return this.version;
    }

    public boolean isEnable() {
        return this.enable;
    }

    public boolean isTitleVisible() {
        return this.titleVisible;
    }

    public void setEnable(boolean z) {
        this.enable = z;
    }

    public void setTitleVisible(boolean z) {
        this.titleVisible = z;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setUserNameHidden(String str) {
        this.userNameHidden = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}

package com.alipay.mobile.security.bio.workspace;

/* loaded from: classes.dex */
public class ProtocolConfig {
    private NavPageConfig navigatepage;
    private int env = 0;
    private int ui = 991;
    String version = "1.0";

    public int getEnv() {
        return this.env;
    }

    public NavPageConfig getNavigatepage() {
        return this.navigatepage;
    }

    public int getUi() {
        return this.ui;
    }

    public String getVersion() {
        return this.version;
    }

    public void setEnv(int i2) {
        this.env = i2;
    }

    public void setNavigatepage(NavPageConfig navPageConfig) {
        this.navigatepage = navPageConfig;
    }

    public void setUi(int i2) {
        this.ui = i2;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}

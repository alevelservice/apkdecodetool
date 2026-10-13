package com.zoloz.builder.buildconfig;

/* loaded from: classes.dex */
public class ZolozBuildConfig {
    private String deviceId;
    private String gwLogUrl;
    private String gwUrl;

    public ZolozConfig build() {
        ZolozConfig.getInstance().setGwUrl(this.gwUrl);
        ZolozConfig.getInstance().setGwLogUrl(this.gwLogUrl);
        ZolozConfig.getInstance().setDeviceId(this.deviceId);
        return ZolozConfig.getInstance();
    }

    public ZolozBuildConfig setDeviceId(String str) {
        this.deviceId = str;
        return this;
    }

    public ZolozBuildConfig setGWLogUrl(String str) {
        this.gwLogUrl = str;
        return this;
    }

    public ZolozBuildConfig setGWUrl(String str) {
        this.gwUrl = str;
        return this;
    }
}

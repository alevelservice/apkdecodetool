package com.alipay.mobile.security.bio.log;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class VerifyBehavior {
    private String appID;
    private String param1;
    private String param2;
    private String param3;
    private String seedID;
    private String userCaseID;
    private Map<String, String> extParams = new HashMap();
    private int loggerLevel = 2;
    private String bizType = "VerifyIdentity";

    public void addExtParam(String str, String str2) {
        this.extParams.put(str, str2);
    }

    public String getAppID() {
        return this.appID;
    }

    public String getBizType() {
        return this.bizType;
    }

    public Map<String, String> getExtParams() {
        return this.extParams;
    }

    public int getLoggerLevel() {
        return this.loggerLevel;
    }

    public String getParam1() {
        return this.param1;
    }

    public String getParam2() {
        return this.param2;
    }

    public String getParam3() {
        return this.param3;
    }

    public String getSeedID() {
        return this.seedID;
    }

    public String getUserCaseID() {
        return this.userCaseID;
    }

    public void removeExtParam(String str) {
        this.extParams.remove(str);
    }

    @Deprecated
    public void setAppID(String str) {
        this.appID = str;
    }

    public void setBizType(String str) {
        this.bizType = str;
    }

    public void setLoggerLevel(int i2) {
        this.loggerLevel = i2;
    }

    public void setParam1(String str) {
        this.param1 = str;
    }

    public void setParam2(String str) {
        this.param2 = str;
    }

    public void setParam3(String str) {
        this.param3 = str;
    }

    public void setSeedID(String str) {
        this.seedID = str;
    }

    public void setUserCaseID(String str) {
        this.userCaseID = str;
    }
}

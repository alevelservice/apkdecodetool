package com.alipay.mobile.security.faceauth.api;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class AntDetectParameter implements Serializable {
    private static final long serialVersionUID = 111;
    private int appID;
    private String protocol;
    private int action = 0;
    private String extJson = "";
    private String tag = "";
    private String remoteUrl = "";
    private boolean autoClose = true;
    private String apdid = "";
    private int scene = 0;
    protected Map<String, String> extProperty = new HashMap();
    private boolean enableNavPage = true;
    private boolean enablePrePoseAlert = true;

    public void addExtProperty(String str, String str2) {
        this.extProperty.put(str, str2);
    }

    public boolean enableNavPage() {
        return this.enableNavPage;
    }

    public boolean enablePrePoseAlert() {
        return this.enablePrePoseAlert;
    }

    public int getAction() {
        return this.action;
    }

    public String getApdid() {
        return this.apdid;
    }

    public int getAppID() {
        return this.appID;
    }

    public String getExtJson() {
        return this.extJson;
    }

    public Map<String, String> getExtProperty() {
        return this.extProperty;
    }

    public String getProtocol() {
        return this.protocol;
    }

    public String getRemoteUrl() {
        return this.remoteUrl;
    }

    public int getScene() {
        return this.scene;
    }

    public String getTag() {
        return this.tag;
    }

    public boolean isAutoClose() {
        return this.autoClose;
    }

    public void setAction(int i2) {
        this.action = i2;
    }

    public void setApdid(String str) {
        this.apdid = str;
    }

    public void setAppID(int i2) {
        this.appID = i2;
    }

    public void setAutoClose(boolean z) {
        this.autoClose = z;
    }

    public void setEnableNavPage(boolean z) {
        this.enableNavPage = z;
    }

    public void setEnablePrePoseAlert(boolean z) {
        this.enablePrePoseAlert = z;
    }

    public void setExtJson(String str) {
        this.extJson = str;
    }

    public void setProtocol(String str) {
        this.protocol = str;
    }

    public void setRemoteUrl(String str) {
        this.remoteUrl = str;
    }

    public void setScene(int i2) {
        this.scene = i2;
    }

    public void setTag(String str) {
        this.tag = str;
    }
}

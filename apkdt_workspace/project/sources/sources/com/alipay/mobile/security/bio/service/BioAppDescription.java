package com.alipay.mobile.security.bio.service;

import android.os.Bundle;
import com.alibaba.fastjson.JSONObject;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class BioAppDescription implements Serializable {
    public static final int APP_TYPE_ACTIVITY = 0;
    public static final int APP_TYPE_BROADCAST_RECIEVER = 3;
    public static final int APP_TYPE_CONTENT_PROVIDER = 4;
    public static final int APP_TYPE_SERVICE = 1;
    private static final long serialVersionUID = 1;
    private String appInterfaceName;
    private String appName;
    private int bioAction;
    private int bioType;
    private String bistoken;
    private Bundle bundle;
    private String cfg;
    private String headImageDir;
    private JSONObject mFcSpecialData;
    private String remoteURL;
    private String tag;
    private int appType = 0;
    private boolean signed = true;
    protected Map<String, String> extProperty = new HashMap();
    protected Map<String, String> extMetaInfo = new HashMap();
    private long productID = -1;
    private boolean autoClose = true;

    public void addExtProperty(String str, String str2) {
        this.extProperty.put(str, str2);
    }

    public String getAppInterfaceName() {
        return this.appInterfaceName;
    }

    public String getAppName() {
        return this.appName;
    }

    public int getAppType() {
        return this.appType;
    }

    public int getBioAction() {
        return this.bioAction;
    }

    public int getBioType() {
        return this.bioType;
    }

    public String getBistoken() {
        return this.bistoken;
    }

    public Bundle getBundle() {
        return this.bundle;
    }

    public String getCfg() {
        return this.cfg;
    }

    public Map<String, String> getExtMetaInfo() {
        return this.extMetaInfo;
    }

    public Map<String, String> getExtProperty() {
        return this.extProperty;
    }

    public JSONObject getFcSpecialData() {
        return this.mFcSpecialData;
    }

    public String getHeadImageURL() {
        return this.headImageDir;
    }

    public long getProductID() {
        return this.productID;
    }

    public String getRemoteURL() {
        return this.remoteURL;
    }

    public String getTag() {
        return this.tag;
    }

    public boolean isAutoClose() {
        return this.autoClose;
    }

    public boolean isSigned() {
        return this.signed;
    }

    public void setAppInterfaceName(String str) {
        this.appInterfaceName = str;
    }

    public void setAppName(String str) {
        this.appName = str;
    }

    public void setAppType(int i2) {
        this.appType = i2;
    }

    public void setAutoClose(boolean z) {
        this.autoClose = z;
    }

    public void setBioAction(int i2) {
        this.bioAction = i2;
    }

    public void setBioType(int i2) {
        this.bioType = i2;
    }

    public void setBistoken(String str) {
        this.bistoken = str;
    }

    public void setBundle(Bundle bundle) {
        this.bundle = bundle;
    }

    public void setCfg(String str) {
        this.cfg = str;
    }

    public void setExtMetaInfo(Map<String, String> map) {
        this.extMetaInfo = map;
    }

    public void setFcSpecialData(JSONObject jSONObject) {
        this.mFcSpecialData = jSONObject;
    }

    public void setHeadImageURL(String str) {
        this.headImageDir = str;
    }

    public void setProductID(long j2) {
        this.productID = j2;
    }

    public void setRemoteURL(String str) {
        this.remoteURL = str;
    }

    public void setSigned(boolean z) {
        this.signed = z;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(" appType:" + this.appType);
        sb.append(" bioType:" + this.bioType);
        sb.append(" bioAction:" + this.bioAction);
        sb.append(" appName:" + this.appName);
        sb.append(" cfg:" + this.cfg);
        sb.append(" signed:" + this.signed);
        sb.append(" bistoken:" + this.bistoken);
        sb.append(" autoClose:" + this.autoClose);
        sb.append(" appInterfaceName:" + this.appInterfaceName);
        sb.append(" productID:" + this.productID);
        return sb.toString();
    }
}

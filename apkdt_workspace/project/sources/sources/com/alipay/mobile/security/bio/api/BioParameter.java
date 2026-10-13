package com.alipay.mobile.security.bio.api;

import android.os.Bundle;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class BioParameter implements Serializable {
    private static final long serialVersionUID = 111;
    private Bundle bundle;
    private String headImageUrl;
    private String protocol;
    private String remoteURL;
    private Map<String, String> extProperty = new HashMap();
    private boolean autoClose = true;
    public boolean isValidate = false;

    public void addExtProperty(String str, String str2) {
        this.extProperty.put(str, str2);
    }

    public Bundle getBundle() {
        return this.bundle;
    }

    public Map<String, String> getExtProperty() {
        return this.extProperty;
    }

    public String getHeadImageUrl() {
        return this.headImageUrl;
    }

    public String getProtocol() {
        return this.protocol;
    }

    public String getRemoteURL() {
        return this.remoteURL;
    }

    public boolean isAutoClose() {
        return this.autoClose;
    }

    public void setAutoClose(boolean z) {
        this.autoClose = z;
    }

    public void setBundle(Bundle bundle) {
        this.bundle = bundle;
    }

    public void setHeadImageUrl(String str) {
        this.headImageUrl = str;
    }

    public void setProtocol(String str) {
        this.protocol = str;
    }

    public void setRemoteURL(String str) {
        this.remoteURL = str;
    }
}

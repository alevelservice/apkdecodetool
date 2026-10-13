package com.example.native_webview;

import java.io.Serializable;
import java.util.List;

/* compiled from: NativeWebviewOptions.java */
/* loaded from: classes.dex */
public class d implements Serializable {
    private String appVersion;
    private String errorMessage;
    private String fullURL;
    private List<String> rootURL;
    private Boolean showInFullScreen;
    private String title;
    private String token;

    public String getAppVersion() {
        return this.appVersion;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public String getFullURL() {
        return this.fullURL;
    }

    public List<String> getRootURL() {
        return this.rootURL;
    }

    public Boolean getShowInFullScreen() {
        return this.showInFullScreen;
    }

    public String getTitle() {
        return this.title;
    }

    public String getToken() {
        return this.token;
    }

    public void setAppVersion(String str) {
        this.appVersion = str;
    }

    public void setErrorMessage(String str) {
        this.errorMessage = str;
    }

    public void setFullURL(String str) {
        this.fullURL = str;
    }

    public void setRootURL(List<String> list) {
        this.rootURL = list;
    }

    public void setShowInFullScreen(Boolean bool) {
        this.showInFullScreen = bool;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setToken(String str) {
        this.token = str;
    }
}

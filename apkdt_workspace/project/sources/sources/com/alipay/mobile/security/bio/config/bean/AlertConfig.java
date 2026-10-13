package com.alipay.mobile.security.bio.config.bean;

/* loaded from: classes.dex */
public class AlertConfig {
    private String leftButtonText;
    private String message;
    private int returnCode;
    private String rightButtonText;
    private String title;

    public String getLeftButtonText() {
        return this.leftButtonText;
    }

    public String getMessage() {
        return this.message;
    }

    public int getReturnCode() {
        return this.returnCode;
    }

    public String getRightButtonText() {
        return this.rightButtonText;
    }

    public String getTitle() {
        return this.title;
    }

    public void setLeftButtonText(String str) {
        this.leftButtonText = str;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setReturnCode(int i2) {
        this.returnCode = i2;
    }

    public void setRightButtonText(String str) {
        this.rightButtonText = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "AlertConfig{title='" + this.title + "', message='" + this.message + "', leftButtonText='" + this.leftButtonText + "', rightButtonText='" + this.rightButtonText + "', returnCode=" + this.returnCode + '}';
    }
}

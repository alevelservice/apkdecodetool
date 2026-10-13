package com.alipay.zoloz.zface.beans;

/* loaded from: classes.dex */
public class AlertData {
    public int errorCode;
    public String leftBtnText;
    public String rightBtnText;
    public String scene;
    public String subCode;
    public String subMsg;
    public String subTitle;
    public String title;
    public int type;

    public String toString() {
        return "AlertData{type=" + this.type + ", title='" + this.title + "', subTitle='" + this.subTitle + "', leftBtnText='" + this.leftBtnText + "', rightBtnText='" + this.rightBtnText + "', errorCode=" + this.errorCode + ", subCode='" + this.subCode + "', subMsg='" + this.subMsg + "', scene='" + this.scene + "'}";
    }
}

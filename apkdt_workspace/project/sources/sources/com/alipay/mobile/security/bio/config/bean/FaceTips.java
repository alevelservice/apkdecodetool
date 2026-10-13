package com.alipay.mobile.security.bio.config.bean;

/* loaded from: classes.dex */
public class FaceTips {
    private String adjustPoseText;
    private String noBlinkText;
    private String noFaceText;
    private String brandTip = "";
    private String stopScanTip = "";
    public String sceneText = "";
    public String topText = "";
    public String bottomText = "";
    public String topText_noface = "";
    public String topText_light = "";
    public String topText_rectwidth = "";
    public String topText_integrity = "";
    public String topText_angle = "";
    public String topText_blur = "";
    public String topText_quality = "";
    public String topText_blink = "";
    public String topText_stay = "";
    public String topText_max_rectwidth = "";
    public String topText_pitch = "";
    public String topText_yaw = "";
    public String topText_openness = "";
    private AlertConfig unsurpportAlert = new AlertConfig();
    private AlertConfig systemVersionErrorAlert = new AlertConfig();
    private AlertConfig systemErrorAlert = new AlertConfig();
    private AlertConfig cameraNoPermissionAlert = new AlertConfig();
    private AlertConfig exitAlert = new AlertConfig();
    private AlertConfig timeoutAlert = new AlertConfig();
    private AlertConfig failAlert = new AlertConfig();
    private AlertConfig limitAlert = new AlertConfig();
    private AlertConfig networkErrorAlert = new AlertConfig();
    private AlertConfig interruptAlert = new AlertConfig();
    private AlertConfig authorizationAlert = new AlertConfig();
    private AlertConfig failNoRetryAlert = new AlertConfig();

    public FaceTips() {
        this.unsurpportAlert.setReturnCode(102);
        this.systemVersionErrorAlert.setReturnCode(105);
        this.systemErrorAlert.setReturnCode(205);
        this.cameraNoPermissionAlert.setReturnCode(100);
        this.exitAlert.setReturnCode(202);
        this.timeoutAlert.setReturnCode(203);
        this.failAlert.setReturnCode(208);
        this.limitAlert.setReturnCode(209);
        this.networkErrorAlert.setReturnCode(207);
        this.interruptAlert.setReturnCode(202);
        this.authorizationAlert.setReturnCode(210);
        this.failNoRetryAlert.setReturnCode(202);
    }

    public String getAdjustPoseText() {
        return this.adjustPoseText;
    }

    public AlertConfig getAuthorizationAlert() {
        return this.authorizationAlert;
    }

    public String getBrandTip() {
        return this.brandTip;
    }

    public AlertConfig getCameraNoPermissionAlert() {
        return this.cameraNoPermissionAlert;
    }

    public AlertConfig getExitAlert() {
        return this.exitAlert;
    }

    public AlertConfig getFailAlert() {
        return this.failAlert;
    }

    public AlertConfig getFailNoRetryAlert() {
        return this.failNoRetryAlert;
    }

    public AlertConfig getInterruptAlert() {
        return this.interruptAlert;
    }

    public AlertConfig getLimitAlert() {
        return this.limitAlert;
    }

    public AlertConfig getNetworkErrorAlert() {
        return this.networkErrorAlert;
    }

    public String getNoBlinkText() {
        return this.noBlinkText;
    }

    public String getNoFaceText() {
        return this.noFaceText;
    }

    public String getStopScanTip() {
        return this.stopScanTip;
    }

    public AlertConfig getSystemErrorAlert() {
        return this.systemErrorAlert;
    }

    public AlertConfig getSystemVersionErrorAlert() {
        return this.systemVersionErrorAlert;
    }

    public AlertConfig getTimeoutAlert() {
        return this.timeoutAlert;
    }

    public AlertConfig getUnsurpportAlert() {
        return this.unsurpportAlert;
    }

    public void setAdjustPoseText(String str) {
        this.adjustPoseText = str;
    }

    public void setAuthorizationAlert(AlertConfig alertConfig) {
        this.authorizationAlert = alertConfig;
    }

    public void setBrandTip(String str) {
        this.brandTip = str;
    }

    public void setCameraNoPermissionAlert(AlertConfig alertConfig) {
        this.cameraNoPermissionAlert = alertConfig;
    }

    public void setExitAlert(AlertConfig alertConfig) {
        this.exitAlert = alertConfig;
    }

    public void setFailAlert(AlertConfig alertConfig) {
        this.failAlert = alertConfig;
    }

    public void setFailNoRetryAlert(AlertConfig alertConfig) {
        this.failNoRetryAlert = alertConfig;
    }

    public void setInterruptAlert(AlertConfig alertConfig) {
        this.interruptAlert = alertConfig;
    }

    public void setLimitAlert(AlertConfig alertConfig) {
        this.limitAlert = alertConfig;
    }

    public void setNetworkErrorAlert(AlertConfig alertConfig) {
        this.networkErrorAlert = alertConfig;
    }

    public void setNoBlinkText(String str) {
        this.noBlinkText = str;
    }

    public void setNoFaceText(String str) {
        this.noFaceText = str;
    }

    public void setStopScanTip(String str) {
        this.stopScanTip = str;
    }

    public void setSystemErrorAlert(AlertConfig alertConfig) {
        this.systemErrorAlert = alertConfig;
    }

    public void setSystemVersionErrorAlert(AlertConfig alertConfig) {
        this.systemVersionErrorAlert = alertConfig;
    }

    public void setTimeoutAlert(AlertConfig alertConfig) {
        this.timeoutAlert = alertConfig;
    }

    public void setUnsurpportAlert(AlertConfig alertConfig) {
        this.unsurpportAlert = alertConfig;
    }

    public String toString() {
        return "FaceTips{noFaceText='" + this.noFaceText + "', noBlinkText='" + this.noBlinkText + "', adjustPoseText='" + this.adjustPoseText + "', brandTip='" + this.brandTip + "', stopScanTip='" + this.stopScanTip + "', unsurpportAlert=" + this.unsurpportAlert + ", systemVersionErrorAlert=" + this.systemVersionErrorAlert + ", systemErrorAlert=" + this.systemErrorAlert + ", cameraNoPermissionAlert=" + this.cameraNoPermissionAlert + ", exitAlert=" + this.exitAlert + ", timeoutAlert=" + this.timeoutAlert + ", failAlert=" + this.failAlert + ", limitAlert=" + this.limitAlert + ", networkErrorAlert=" + this.networkErrorAlert + ", interruptAlert=" + this.interruptAlert + '}';
    }
}

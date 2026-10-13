package com.intercept.plugins.qr_scanner;

import java.io.Serializable;
import java.util.List;

/* compiled from: QrScannerOptions.java */
/* loaded from: classes.dex */
public class a implements Serializable {
    private String alertActionText;
    private String alertDescription;
    private String alertTitle;
    private int autoFocusIntervalInMs;
    private String description;
    private boolean executeAfterPermissionGranted;
    private boolean forceAutoFocus;
    private boolean handlePermissions;
    private String qrValidationRegex;
    private String themeColor;
    private String title;
    private boolean torchEnabled;
    private List<String> whiteListedUrls;

    public String getAlertActionText() {
        return this.alertActionText;
    }

    public String getAlertDescription() {
        return this.alertDescription;
    }

    public String getAlertTitle() {
        return this.alertTitle;
    }

    public int getAutoFocusIntervalInMs() {
        return this.autoFocusIntervalInMs;
    }

    public String getDescription() {
        return this.description;
    }

    public String getQrValidationRegex() {
        return this.qrValidationRegex;
    }

    public String getThemeColor() {
        return this.themeColor;
    }

    public String getTitle() {
        return this.title;
    }

    public List<String> getWhiteListedUrls() {
        return this.whiteListedUrls;
    }

    public boolean isExecuteAfterPermissionGranted() {
        return this.executeAfterPermissionGranted;
    }

    public boolean isForceAutoFocus() {
        return this.forceAutoFocus;
    }

    public boolean isHandlePermissions() {
        return this.handlePermissions;
    }

    public boolean isTorchEnabled() {
        return this.torchEnabled;
    }

    public void setAlertActionText(String str) {
        this.alertActionText = str;
    }

    public void setAlertDescription(String str) {
        this.alertDescription = str;
    }

    public void setAlertTitle(String str) {
        this.alertTitle = str;
    }

    public void setAutoFocusIntervalInMs(int i2) {
        this.autoFocusIntervalInMs = i2;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setExecuteAfterPermissionGranted(boolean z) {
        this.executeAfterPermissionGranted = z;
    }

    public void setForceAutoFocus(boolean z) {
        this.forceAutoFocus = z;
    }

    public void setHandlePermissions(boolean z) {
        this.handlePermissions = z;
    }

    public void setQrValidationRegex(String str) {
        this.qrValidationRegex = str;
    }

    public void setThemeColor(String str) {
        this.themeColor = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTorchEnabled(boolean z) {
        this.torchEnabled = z;
    }

    public void setWhiteListedUrls(List<String> list) {
        this.whiteListedUrls = list;
    }
}

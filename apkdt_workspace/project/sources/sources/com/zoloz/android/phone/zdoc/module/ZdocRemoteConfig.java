package com.zoloz.android.phone.zdoc.module;

import java.io.Serializable;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class ZdocRemoteConfig implements Serializable {
    public static final int CAPTURE_SCAN = 1;
    public static final int CAPTURE_TAKE_PHOTO = 0;
    public static String CURRENT_LANG;
    private int captureMode = 0;
    private float ratio = 0.7f;
    private int env = 1;
    private int uploadMonitorPic = 0;
    private int monitorMaxFrameCount = 11;
    private int monitorCaptureInterval = 3000;
    private int showGuidePage = 0;
    private String guidePageUrl = "";
    private ArrayList<DocModule> modules = new ArrayList<>();
    private String sceneCode = "DUMMY_BIZ_SCENE_CODE";
    private int showPowerByZoloz = 0;

    public int getCaptureMode() {
        return this.captureMode;
    }

    public int getEnv() {
        return this.env;
    }

    public String getGuidePageUrl() {
        return this.guidePageUrl;
    }

    public ArrayList<DocModule> getModules() {
        return this.modules;
    }

    public int getMonitorCaptureInterval() {
        return this.monitorCaptureInterval;
    }

    public int getMonitorMaxFrameCount() {
        return this.monitorMaxFrameCount;
    }

    public float getRatio() {
        return this.ratio;
    }

    public String getSceneCode() {
        return this.sceneCode;
    }

    public int getShowGuidePage() {
        return this.showGuidePage;
    }

    public int getShowPowerByZoloz() {
        return this.showPowerByZoloz;
    }

    public int getUploadMonitorPic() {
        return this.uploadMonitorPic;
    }

    public void setCaptureMode(int i2) {
        this.captureMode = i2;
    }

    public void setEnv(int i2) {
        this.env = i2;
    }

    public void setGuidePageUrl(String str) {
        this.guidePageUrl = str;
    }

    public void setModules(ArrayList<DocModule> arrayList) {
        this.modules = arrayList;
    }

    public void setMonitorCaptureInterval(int i2) {
        this.monitorCaptureInterval = i2;
    }

    public void setMonitorMaxFrameCount(int i2) {
        this.monitorMaxFrameCount = i2;
    }

    public void setRatio(float f2) {
        this.ratio = f2;
    }

    public void setSceneCode(String str) {
        this.sceneCode = str;
    }

    public void setShowGuidePage(int i2) {
        this.showGuidePage = i2;
    }

    public void setShowPowerByZoloz(int i2) {
        this.showPowerByZoloz = i2;
    }

    public void setUploadMonitorPic(int i2) {
        this.uploadMonitorPic = i2;
    }
}

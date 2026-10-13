package com.alipay.mobile.security.faceauth.circle.protocol;

import com.alipay.mobile.security.bio.config.bean.Algorithm;
import com.alipay.mobile.security.bio.config.bean.Coll;
import com.alipay.mobile.security.bio.config.bean.FaceTips;
import com.alipay.mobile.security.bio.config.bean.NavigatePage;
import com.alipay.mobile.security.bio.config.bean.SceneEnv;
import com.alipay.mobile.security.bio.config.bean.Upload;
import com.alipay.mobile.security.bio.utils.StringUtil;

/* loaded from: classes.dex */
public class FaceRemoteConfig {
    private SceneEnv sceneEnv = new SceneEnv();
    private NavigatePage navi = new NavigatePage();
    private Coll coll = new Coll();
    private Upload upload = new Upload();
    private Algorithm algorithm = new Algorithm();
    private FaceTips faceTips = new FaceTips();
    private DeviceSetting[] deviceSettings = new DeviceSetting[0];
    private int env = 0;
    private int ui = 991;

    public Algorithm getAlgorithm() {
        return this.algorithm;
    }

    public Coll getColl() {
        return this.coll;
    }

    public DeviceSetting[] getDeviceSettings() {
        return this.deviceSettings;
    }

    public int getEnv() {
        return this.env;
    }

    public FaceTips getFaceTips() {
        return this.faceTips;
    }

    public NavigatePage getNavi() {
        return this.navi;
    }

    public SceneEnv getSceneEnv() {
        return this.sceneEnv;
    }

    public int getUi() {
        return this.ui;
    }

    public Upload getUpload() {
        return this.upload;
    }

    public void setAlgorithm(Algorithm algorithm) {
        this.algorithm = algorithm;
    }

    public void setColl(Coll coll) {
        this.coll = coll;
    }

    public void setDeviceSettings(DeviceSetting[] deviceSettingArr) {
        this.deviceSettings = deviceSettingArr;
    }

    public void setEnv(int i2) {
        this.env = i2;
    }

    public void setFaceTips(FaceTips faceTips) {
        this.faceTips = faceTips;
    }

    public void setNavi(NavigatePage navigatePage) {
        this.navi = navigatePage;
    }

    public void setSceneEnv(SceneEnv sceneEnv) {
        this.sceneEnv = sceneEnv;
    }

    public void setUi(int i2) {
        this.ui = i2;
    }

    public void setUpload(Upload upload) {
        this.upload = upload;
    }

    public String toString() {
        return "FaceRemoteConfig{sceneEnv=" + this.sceneEnv + ", navi=" + this.navi + ", coll=" + this.coll + ", upload=" + this.upload + ", algorithm=" + this.algorithm + ", faceTips=" + this.faceTips + ", deviceSettings=" + StringUtil.array2String(this.deviceSettings) + ", env=" + this.env + ", ui=" + this.ui + '}';
    }
}

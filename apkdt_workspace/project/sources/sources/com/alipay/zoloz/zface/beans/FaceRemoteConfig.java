package com.alipay.zoloz.zface.beans;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alipay.mobile.security.bio.config.bean.Coll;
import com.alipay.mobile.security.bio.config.bean.FaceTips;
import com.alipay.mobile.security.bio.config.bean.NavigatePage;
import com.alipay.mobile.security.bio.config.bean.SceneEnv;
import com.alipay.mobile.security.bio.utils.StringUtil;
import com.alipay.mobile.security.faceauth.circle.protocol.DeviceSetting;

/* loaded from: classes.dex */
public class FaceRemoteConfig {
    private SceneEnv sceneEnv = new SceneEnv();
    private NavigatePage navi = new NavigatePage();
    private Coll coll = new Coll();
    private JSONObject upload = JSON.parseObject("{\"collection\":[\"Gyro\",\"Pano\"]}");
    private JSONObject algorithm = JSON.parseObject("{\"liveness_combination\":[\"NoLiveness\"],\"min_iod\":0.15,\"quality_min_quality\":35,\"secProtocol\":\"\",\"stack_time\":0.0,\"threshold\":{\"NoLiveness\":[]}}");
    private FaceTips faceTips = new FaceTips();
    private DeviceSetting[] deviceSettings = new DeviceSetting[0];
    private int env = 0;
    private int ui = 991;
    private String verifyMode = "normal";

    public JSONObject getAlgorithm() {
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

    public JSONObject getUpload() {
        return this.upload;
    }

    public String getVerifyMode() {
        return this.verifyMode;
    }

    public void setAlgorithm(JSONObject jSONObject) {
        this.algorithm = jSONObject;
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

    public void setUpload(JSONObject jSONObject) {
        this.upload = jSONObject;
    }

    public void setVerifyMode(String str) {
        this.verifyMode = str;
    }

    public String toString() {
        return "FaceRemoteConfig{sceneEnv=" + this.sceneEnv + ", navi=" + this.navi + ", coll=" + this.coll + ", upload=" + this.upload + ", algorithm=" + this.algorithm + ", faceTips=" + this.faceTips + ", deviceSettings=" + StringUtil.array2String(this.deviceSettings) + ", env=" + this.env + ", ui=" + this.ui + '}';
    }
}

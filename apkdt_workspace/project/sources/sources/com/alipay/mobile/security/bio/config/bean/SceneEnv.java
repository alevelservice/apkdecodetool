package com.alipay.mobile.security.bio.config.bean;

/* loaded from: classes.dex */
public class SceneEnv {
    private String sceneCode = "";
    private String sceneType = "normal";

    public String getSceneCode() {
        return this.sceneCode;
    }

    public String getSceneType() {
        return this.sceneType;
    }

    public void setSceneCode(String str) {
        this.sceneCode = str;
    }

    public void setSceneType(String str) {
        this.sceneType = str;
    }

    public String toString() {
        return "SceneEnv{sceneCode='" + this.sceneCode + "', sceneType='" + this.sceneType + "'}";
    }
}

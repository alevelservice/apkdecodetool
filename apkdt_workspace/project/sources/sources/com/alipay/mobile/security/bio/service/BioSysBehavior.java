package com.alipay.mobile.security.bio.service;

import java.util.HashMap;

/* loaded from: classes.dex */
public class BioSysBehavior {
    private BioSysBehaviorType type = BioSysBehaviorType.EVENT;
    private HashMap<String, String> ext = new HashMap<>();
    private String msg = "";

    public void addExt(String str, String str2) {
        this.ext.put(str, str2);
    }

    public HashMap<String, String> getExt() {
        return this.ext;
    }

    public String getMsg() {
        return this.msg;
    }

    public BioSysBehaviorType getType() {
        return this.type;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setType(BioSysBehaviorType bioSysBehaviorType) {
        this.type = bioSysBehaviorType;
    }
}

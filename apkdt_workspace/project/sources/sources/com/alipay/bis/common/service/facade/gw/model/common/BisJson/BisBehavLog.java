package com.alipay.bis.common.service.facade.gw.model.common.BisJson;

import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class BisBehavLog {
    public BisBehavCommon behavCommon;
    public List<BisBehavTask> behavTask;
    public BisBehavToken behavToken;
    public BisClientInfo clientInfo;
    public Map<String, String> extAttr;

    public BisBehavCommon getBehavCommon() {
        return this.behavCommon;
    }

    public List<BisBehavTask> getBehavTask() {
        return this.behavTask;
    }

    public BisBehavToken getBehavToken() {
        return this.behavToken;
    }

    public BisClientInfo getClientInfo() {
        return this.clientInfo;
    }

    public Map<String, String> getExtAttr() {
        return this.extAttr;
    }

    public void setBehavCommon(BisBehavCommon bisBehavCommon) {
        this.behavCommon = bisBehavCommon;
    }

    public void setBehavTask(List<BisBehavTask> list) {
        this.behavTask = list;
    }

    public void setBehavToken(BisBehavToken bisBehavToken) {
        this.behavToken = bisBehavToken;
    }

    public void setClientInfo(BisClientInfo bisClientInfo) {
        this.clientInfo = bisClientInfo;
    }

    public void setExtAttr(Map<String, String> map) {
        this.extAttr = map;
    }
}

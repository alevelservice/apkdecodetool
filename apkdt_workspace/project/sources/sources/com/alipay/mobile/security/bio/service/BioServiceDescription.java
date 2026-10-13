package com.alipay.mobile.security.bio.service;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class BioServiceDescription {
    Class<?> clazz = null;
    String interfaceName = "";
    boolean isLazy = false;
    boolean autoDownloadRes = false;
    protected Map<String, String> extMetaInfo = new HashMap();

    public Class<?> getClazz() {
        return this.clazz;
    }

    public Map<String, String> getExtMetaInfo() {
        return this.extMetaInfo;
    }

    public String getInterfaceName() {
        return this.interfaceName;
    }

    public boolean isAutoDownloadRes() {
        return this.autoDownloadRes;
    }

    public boolean isLazy() {
        return this.isLazy;
    }

    public void setAutoDownloadRes(boolean z) {
        this.autoDownloadRes = z;
    }

    public void setClazz(Class<?> cls) {
        this.clazz = cls;
    }

    public void setExtMetaInfo(Map<String, String> map) {
        this.extMetaInfo = map;
    }

    public void setInterfaceName(String str) {
        this.interfaceName = str;
    }

    public void setLazy(boolean z) {
        this.isLazy = z;
    }
}

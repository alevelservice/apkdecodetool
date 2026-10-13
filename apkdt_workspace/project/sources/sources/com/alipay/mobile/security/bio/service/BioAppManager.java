package com.alipay.mobile.security.bio.service;

import com.alipay.mobile.security.bio.api.BioCallback;
import com.alipay.mobile.security.bio.utils.SignHelper;
import java.util.HashMap;
import java.util.UUID;

/* loaded from: classes.dex */
public class BioAppManager extends BioService {
    private HashMap<String, BioAppDescription> appDescMap;
    private HashMap<String, BioCallback> callbackMap;

    private static String getUniqueTag() {
        return SignHelper.MD5(System.currentTimeMillis() + "_" + (Math.random() * 10000.0d) + UUID.randomUUID().toString());
    }

    public BioAppDescription getBioAppDescription(String str) {
        return this.appDescMap.get(str);
    }

    public BioCallback getBioCallback(String str) {
        return this.callbackMap.get(str);
    }

    @Override // com.alipay.mobile.security.bio.service.BioService
    public void onCreate(BioServiceManager bioServiceManager) {
        super.onCreate(bioServiceManager);
        this.appDescMap = new HashMap<>();
        this.callbackMap = new HashMap<>();
    }

    @Override // com.alipay.mobile.security.bio.service.BioService
    public void onDestroy() {
        this.appDescMap.clear();
        this.callbackMap.clear();
        super.onDestroy();
    }

    public String put(BioAppDescription bioAppDescription, BioCallback bioCallback) {
        String uniqueTag = getUniqueTag();
        bioAppDescription.setTag(uniqueTag);
        this.appDescMap.put(uniqueTag, bioAppDescription);
        this.callbackMap.put(uniqueTag, bioCallback);
        return uniqueTag;
    }
}

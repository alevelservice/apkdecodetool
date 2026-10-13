package com.alipay.mobile.security.bio.service;

/* loaded from: classes.dex */
public abstract class BioService {
    protected BioServiceManager mBioServiceManager;

    public final void create(BioServiceManager bioServiceManager) {
        this.mBioServiceManager = bioServiceManager;
        String str = getClass().getName() + ".onCreate() start.";
        onCreate(bioServiceManager);
        String str2 = getClass().getName() + ".onCreate() end.";
    }

    public final void destroy() {
        String str = getClass().getName() + ".onDestroy() start.";
        onDestroy();
        this.mBioServiceManager = null;
        String str2 = getClass().getName() + ".onDestroy() end.";
    }

    public void onCreate(BioServiceManager bioServiceManager) {
    }

    public void onDestroy() {
    }
}

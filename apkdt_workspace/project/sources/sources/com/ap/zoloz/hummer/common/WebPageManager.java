package com.ap.zoloz.hummer.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public class WebPageManager {
    private static WebPageManager sInstance;
    private BaseWebService mWebService;

    public static WebPageManager getInstance() {
        if (sInstance == null) {
            synchronized (WebPageManager.class) {
                if (sInstance == null) {
                    sInstance = new WebPageManager();
                }
            }
        }
        return sInstance;
    }

    public void exitPage(String str) {
        BaseWebService baseWebService = this.mWebService;
        if (baseWebService != null) {
            baseWebService.exitPage(str);
        }
    }

    public void exitSession() {
        BaseWebService baseWebService = this.mWebService;
        if (baseWebService != null) {
            baseWebService.exitSession();
        }
    }

    public void init(BaseWebService baseWebService) {
        this.mWebService = baseWebService;
    }

    public boolean isPageAlreadyExit(String str) {
        BaseWebService baseWebService = this.mWebService;
        return baseWebService != null && baseWebService.isPageAlreadyExit(str);
    }

    public void openUrl(HashMap<String, Object> hashMap) {
        BaseWebService baseWebService = this.mWebService;
        if (baseWebService != null) {
            baseWebService.openPage(hashMap);
        }
    }

    public void release() {
        sInstance = null;
    }
}

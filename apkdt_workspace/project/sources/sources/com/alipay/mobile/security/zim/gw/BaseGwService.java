package com.alipay.mobile.security.zim.gw;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.alipay.bis.common.service.facade.gw.zim.ZimInitGwRequest;
import com.alipay.bis.common.service.facade.gw.zim.ZimInitGwResponse;

/* loaded from: classes.dex */
public abstract class BaseGwService {
    GwListener mGwListener;
    Handler mHandler;
    HandlerThread mHandlerThread;
    Handler mMainHandler = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseGwService(GwListener gwListener, String str) {
        this.mHandlerThread = new HandlerThread(str);
        this.mGwListener = gwListener;
    }

    public abstract ZimInitGwResponse convert(String str);

    public void destroy() {
        HandlerThread handlerThread = this.mHandlerThread;
        if (handlerThread != null && handlerThread.isAlive()) {
            this.mHandlerThread.quit();
        }
        this.mHandlerThread = null;
        this.mHandler = null;
        this.mGwListener = null;
        this.mMainHandler = null;
    }

    public abstract void init(ZimInitGwRequest zimInitGwRequest);
}

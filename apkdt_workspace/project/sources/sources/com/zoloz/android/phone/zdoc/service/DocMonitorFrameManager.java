package com.zoloz.android.phone.zdoc.service;

import com.alipay.zoloz.toyger.algorithm.TGFrame;
import com.alipay.zoloz.toyger.blob.GenericBlobManager;
import com.zoloz.android.phone.zdoc.module.ZdocRemoteConfig;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes2.dex */
public class DocMonitorFrameManager {
    private GenericBlobManager mGenericBlobManager;
    private Timer mTimer;
    private ZdocRemoteConfig mZdocRemoteConfig;
    private int n = 1000;
    private int mCurrentFrameNumber = 0;

    public DocMonitorFrameManager(ZdocRemoteConfig zdocRemoteConfig, String str) {
        this.mZdocRemoteConfig = zdocRemoteConfig;
        this.mGenericBlobManager = new GenericBlobManager("doc", str);
    }

    private void cancelTimer() {
        Timer timer = this.mTimer;
        if (timer != null) {
            timer.cancel();
            this.mTimer = null;
        }
    }

    private boolean isValidateTGFrame(TGFrame tGFrame) {
        return tGFrame != null && tGFrame.width > 0 && tGFrame.height > 0;
    }

    public void addMonitorFrame(TGFrame tGFrame) {
        if (this.mGenericBlobManager == null || !isValidateTGFrame(tGFrame)) {
            return;
        }
        this.mGenericBlobManager.addMonitorFrame(tGFrame);
    }

    public void destroy() {
        this.mCurrentFrameNumber = 0;
        cancelTimer();
    }

    public byte[] getKey() {
        GenericBlobManager genericBlobManager = this.mGenericBlobManager;
        if (genericBlobManager != null) {
            return genericBlobManager.getKey();
        }
        return null;
    }

    public byte[] getMonitorBlob() {
        GenericBlobManager genericBlobManager = this.mGenericBlobManager;
        if (genericBlobManager != null) {
            return genericBlobManager.generateMonitorBlob();
        }
        return null;
    }

    public boolean isUTF8() {
        GenericBlobManager genericBlobManager = this.mGenericBlobManager;
        return genericBlobManager != null && genericBlobManager.isUTF8();
    }

    public void resetCurrentFrameNummer() {
        this.mCurrentFrameNumber = 0;
    }

    public void setTimerTask(final IMonitorCallback iMonitorCallback) {
        this.mTimer = new Timer();
        this.mTimer.schedule(new TimerTask() { // from class: com.zoloz.android.phone.zdoc.service.DocMonitorFrameManager.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (DocMonitorFrameManager.this.mCurrentFrameNumber < DocMonitorFrameManager.this.mZdocRemoteConfig.getMonitorMaxFrameCount()) {
                    iMonitorCallback.onTimeout();
                }
            }
        }, 0L, this.mZdocRemoteConfig.getMonitorCaptureInterval());
    }

    public void updateCurrentFrameNumber() {
        this.mCurrentFrameNumber++;
    }
}

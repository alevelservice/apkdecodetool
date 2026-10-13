package com.alipay.zoloz.zface.utils;

import android.os.SystemClock;
import com.alipay.zoloz.zface.services.ZFaceRecordService;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ToygerMonitor {
    private static final int ONE_SECOND = 1000;
    private static ToygerMonitor toygerMonitorInstance;
    private float duration;
    private int fps;
    public long fpsStartTime;
    private long initCostTime;
    private long initStartTime;
    private int frameCount = 0;
    private boolean isEnd = false;

    private void fpsEnd(ZFaceRecordService zFaceRecordService) {
        this.fps = (int) (this.frameCount / this.duration);
        this.isEnd = true;
        String str = "fps = " + this.fps;
        HashMap hashMap = new HashMap();
        hashMap.put("fps", String.valueOf(getFps()));
        hashMap.put("algLoadTime", String.valueOf(this.initCostTime));
        String str2 = "alog load time " + this.initCostTime;
        if (zFaceRecordService != null) {
            zFaceRecordService.write(ZFaceRecordService.TOYGER_FACE_FPS, hashMap);
        }
    }

    private void fpsStart() {
        this.isEnd = false;
        this.frameCount = 0;
        this.fpsStartTime = SystemClock.uptimeMillis();
    }

    public int getFps() {
        return this.fps;
    }

    public void initEnd() {
        this.initCostTime = SystemClock.uptimeMillis() - this.initStartTime;
    }

    public void initStart() {
        this.initStartTime = SystemClock.uptimeMillis();
        this.isEnd = false;
    }

    public boolean isEnd() {
        return this.isEnd;
    }

    public void oneFrameUpdate(ZFaceRecordService zFaceRecordService) {
        if (isEnd()) {
            return;
        }
        if (this.frameCount == 0) {
            fpsStart();
        }
        this.frameCount++;
        this.duration = ((float) (SystemClock.uptimeMillis() - this.fpsStartTime)) / 1000.0f;
        if (this.duration >= 1.0f) {
            fpsEnd(zFaceRecordService);
        }
    }
}

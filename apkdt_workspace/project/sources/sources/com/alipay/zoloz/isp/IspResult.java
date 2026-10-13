package com.alipay.zoloz.isp;

/* loaded from: classes.dex */
public class IspResult {
    private long exposureTime;
    private int iso;
    private boolean needSet;

    public IspResult(boolean z, long j2, int i2) {
        this.needSet = false;
        this.needSet = z;
        this.exposureTime = j2;
        this.iso = i2;
    }

    public long getExposureTime() {
        return this.exposureTime;
    }

    public int getIso() {
        return this.iso;
    }

    public boolean isNeedSet() {
        return this.needSet;
    }

    public String toString() {
        return "IspResult{needSet=" + this.needSet + ", exposureTime=" + this.exposureTime + ", iso=" + this.iso + '}';
    }
}

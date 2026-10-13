package com.alipay.zoloz.toyger.algorithm;

import java.util.Arrays;

/* loaded from: classes.dex */
public class TGSensorFrame {
    public float[] accelerateData;
    public float[] gyroData;
    public float[] rotationData;
    public long timeStamp;

    public TGSensorFrame(float[] fArr, float[] fArr2, float[] fArr3, long j2) {
        this.gyroData = fArr;
        this.accelerateData = fArr2;
        this.rotationData = fArr3;
        this.timeStamp = j2;
    }

    public String toString() {
        return "TGSensorFrame{gyroData=" + Arrays.toString(this.gyroData) + ", accelerateData=" + Arrays.toString(this.accelerateData) + ", rotationData=" + Arrays.toString(this.rotationData) + ", timeStamp=" + this.timeStamp + '}';
    }

    public TGSensorFrame(TGSensorFrame tGSensorFrame) {
        if (tGSensorFrame != null) {
            this.gyroData = tGSensorFrame.gyroData;
            this.accelerateData = tGSensorFrame.gyroData;
            this.rotationData = tGSensorFrame.rotationData;
            this.timeStamp = tGSensorFrame.timeStamp;
        }
    }
}

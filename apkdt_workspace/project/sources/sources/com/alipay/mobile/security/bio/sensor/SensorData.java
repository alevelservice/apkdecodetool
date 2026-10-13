package com.alipay.mobile.security.bio.sensor;

/* loaded from: classes.dex */
public class SensorData {
    String accelermeter;
    String gyrometer;
    String magmetic;

    public String toString() {
        return "[" + this.accelermeter + "," + this.gyrometer + "," + this.magmetic + "]";
    }
}

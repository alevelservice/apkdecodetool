package com.alipay.mobile.security.bio.utils;

/* loaded from: classes.dex */
public class GyroUtil {
    public static double getDeviceAngle(float f2, float f3) {
        double sqrt = Math.sqrt((f3 * f3) + (f2 * f2));
        double d2 = f2;
        Double.isNaN(d2);
        double d3 = d2 / sqrt;
        double d4 = -1.0d;
        if (d3 > 1.0d) {
            d4 = 1.0d;
        } else if (d3 >= -1.0d) {
            d4 = d3;
        }
        double acos = Math.acos(d4);
        if (f3 < 0.0f) {
            acos = 6.283185307179586d - acos;
        }
        return (acos * 360.0d) / 6.283185307179586d;
    }
}

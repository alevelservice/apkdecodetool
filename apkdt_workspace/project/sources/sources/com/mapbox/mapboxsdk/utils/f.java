package com.mapbox.mapboxsdk.utils;

/* compiled from: MathUtils.java */
/* loaded from: classes2.dex */
public class f {
    public static double a(double d2, double d3, double d4) {
        return Math.max(d3, Math.min(d4, d2));
    }

    public static double a(double d2, double d3, double d4, double d5, double d6) {
        return (((d2 - d3) / (d4 - d3)) * (d6 - d5)) + d5;
    }

    public static float a(float f2, float f3, float f4) {
        return Math.max(f3, Math.min(f4, f2));
    }
}

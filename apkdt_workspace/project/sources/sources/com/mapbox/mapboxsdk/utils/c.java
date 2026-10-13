package com.mapbox.mapboxsdk.utils;

/* compiled from: Compare.java */
/* loaded from: classes2.dex */
public class c {
    public static int a(int i2, int i3) {
        if (i2 < i3) {
            return -1;
        }
        return i2 == i3 ? 0 : 1;
    }

    public static int a(boolean z, boolean z2) {
        if (z == z2) {
            return 0;
        }
        return z ? 1 : -1;
    }
}

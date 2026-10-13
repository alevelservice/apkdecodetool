package com.mapbox.mapboxsdk.http;

import com.mapbox.mapboxsdk.log.Logger;

/* compiled from: HttpLogger.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f15764a = false;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f15765b = true;

    public static void a(int i2, String str, String str2) {
        int i3 = i2 == 1 ? 3 : i2 == 0 ? 4 : 5;
        Object[] objArr = new Object[3];
        objArr[0] = i2 == 1 ? "temporary" : i2 == 0 ? "connection" : "permanent";
        objArr[1] = str;
        if (!f15764a) {
            str2 = "";
        }
        objArr[2] = str2;
        a(i3, String.format("Request failed due to a %s error: %s %s", objArr));
    }

    public static void a(int i2, String str) {
        if (f15765b) {
            Logger.log(i2, "Mbgl-HttpRequest", str);
        }
    }
}

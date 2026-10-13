package com.mapbox.mapboxsdk.http;

import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.Mapbox;

/* compiled from: HttpRequestUrl.java */
/* loaded from: classes2.dex */
public class d {
    public static String a(@NonNull String str, String str2, int i2, boolean z) {
        String str3;
        if (!a(str)) {
            return str2;
        }
        if (i2 == 0) {
            str3 = str2 + "?";
        } else {
            str3 = str2 + "&";
        }
        if (z) {
            return str3 + "offline=true";
        }
        return str3 + "sku=" + Mapbox.getSkuToken();
    }

    private static boolean a(String str) {
        return str.equals("mapbox.com") || str.endsWith(".mapbox.com") || str.equals("mapbox.cn") || str.endsWith(".mapbox.cn");
    }
}

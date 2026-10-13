package com.mapbox.mapboxsdk.http;

import android.content.Context;
import android.content.pm.PackageInfo;
import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.Mapbox;

/* compiled from: HttpIdentifier.java */
/* loaded from: classes2.dex */
public class a {
    public static String a() {
        return a(Mapbox.getApplicationContext());
    }

    private static String a(@NonNull Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            return String.format("%s/%s (%s)", context.getPackageName(), packageInfo.versionName, Integer.valueOf(packageInfo.versionCode));
        } catch (Exception e2) {
            com.mapbox.mapboxsdk.d.a(e2);
            return "";
        }
    }
}

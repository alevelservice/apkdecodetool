package com.mapbox.mapboxsdk.utils;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.NonNull;

/* compiled from: ThreadUtils.java */
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private static Boolean f16377a;

    public static g a(@NonNull Context context) {
        f16377a = Boolean.valueOf((context.getApplicationInfo().flags & 2) != 0);
        return null;
    }

    public static void a(@NonNull String str) {
        Boolean bool = f16377a;
        if (bool != null) {
            if (bool.booleanValue() && Looper.myLooper() != Looper.getMainLooper()) {
                throw new com.mapbox.mapboxsdk.r.a(String.format("%s interactions should happen on the UI thread.", str));
            }
            return;
        }
        throw new IllegalStateException("ThreadUtils isn't correctly initialised");
    }
}

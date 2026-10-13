package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    private static SharedPreferences f5487a;

    public static SharedPreferences a(Context context) {
        SharedPreferences sharedPreferences;
        synchronized (SharedPreferences.class) {
            if (f5487a == null) {
                f5487a = (SharedPreferences) com.google.android.gms.internal.flags.b.a(new k(context));
            }
            sharedPreferences = f5487a;
        }
        return sharedPreferences;
    }
}

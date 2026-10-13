package com.google.android.gms.measurement.module;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.internal.measurement.zzx;
import com.google.android.gms.measurement.internal.j4;

@ShowFirstParty
/* loaded from: classes.dex */
public class Analytics {

    /* renamed from: a, reason: collision with root package name */
    private static volatile Analytics f13407a;

    private Analytics(j4 j4Var) {
        m.a(j4Var);
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    @ShowFirstParty
    @Keep
    public static Analytics getInstance(Context context) {
        if (f13407a == null) {
            synchronized (Analytics.class) {
                if (f13407a == null) {
                    f13407a = new Analytics(j4.a(context, (zzx) null));
                }
            }
        }
        return f13407a;
    }
}

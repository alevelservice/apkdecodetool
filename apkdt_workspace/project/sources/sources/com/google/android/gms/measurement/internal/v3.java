package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;

/* loaded from: classes.dex */
public final class v3 {

    /* renamed from: a, reason: collision with root package name */
    private final String f13272a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f13273b;

    /* renamed from: c, reason: collision with root package name */
    private String f13274c;

    /* renamed from: d, reason: collision with root package name */
    private final /* synthetic */ o3 f13275d;

    public v3(o3 o3Var, String str, String str2) {
        this.f13275d = o3Var;
        com.google.android.gms.common.internal.m.b(str);
        this.f13272a = str;
    }

    @WorkerThread
    public final String a() {
        SharedPreferences y;
        if (!this.f13273b) {
            this.f13273b = true;
            y = this.f13275d.y();
            this.f13274c = y.getString(this.f13272a, null);
        }
        return this.f13274c;
    }

    @WorkerThread
    public final void a(String str) {
        SharedPreferences y;
        if (r8.e(str, this.f13274c)) {
            return;
        }
        y = this.f13275d.y();
        SharedPreferences.Editor edit = y.edit();
        edit.putString(this.f13272a, str);
        edit.apply();
        this.f13274c = str;
    }
}

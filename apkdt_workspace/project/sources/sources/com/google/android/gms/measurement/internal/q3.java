package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;

/* loaded from: classes.dex */
public final class q3 {

    /* renamed from: a, reason: collision with root package name */
    private final String f13160a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f13161b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f13162c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f13163d;

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ o3 f13164e;

    public q3(o3 o3Var, String str, boolean z) {
        this.f13164e = o3Var;
        com.google.android.gms.common.internal.m.b(str);
        this.f13160a = str;
        this.f13161b = z;
    }

    @WorkerThread
    public final boolean a() {
        SharedPreferences y;
        if (!this.f13162c) {
            this.f13162c = true;
            y = this.f13164e.y();
            this.f13163d = y.getBoolean(this.f13160a, this.f13161b);
        }
        return this.f13163d;
    }

    @WorkerThread
    public final void a(boolean z) {
        SharedPreferences y;
        y = this.f13164e.y();
        SharedPreferences.Editor edit = y.edit();
        edit.putBoolean(this.f13160a, z);
        edit.apply();
        this.f13163d = z;
    }
}

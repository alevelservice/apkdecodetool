package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;

/* loaded from: classes.dex */
public final class t3 {

    /* renamed from: a, reason: collision with root package name */
    private final String f13230a;

    /* renamed from: b, reason: collision with root package name */
    private final long f13231b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f13232c;

    /* renamed from: d, reason: collision with root package name */
    private long f13233d;

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ o3 f13234e;

    public t3(o3 o3Var, String str, long j2) {
        this.f13234e = o3Var;
        com.google.android.gms.common.internal.m.b(str);
        this.f13230a = str;
        this.f13231b = j2;
    }

    @WorkerThread
    public final long a() {
        SharedPreferences y;
        if (!this.f13232c) {
            this.f13232c = true;
            y = this.f13234e.y();
            this.f13233d = y.getLong(this.f13230a, this.f13231b);
        }
        return this.f13233d;
    }

    @WorkerThread
    public final void a(long j2) {
        SharedPreferences y;
        y = this.f13234e.y();
        SharedPreferences.Editor edit = y.edit();
        edit.putLong(this.f13230a, j2);
        edit.apply();
        this.f13233d = j2;
    }
}

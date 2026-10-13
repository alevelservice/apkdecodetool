package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ec0 {

    /* renamed from: a, reason: collision with root package name */
    private final cc0 f6396a;

    /* renamed from: b, reason: collision with root package name */
    private final tz0 f6397b;

    public ec0(cc0 cc0Var, tz0 tz0Var) {
        this.f6396a = cc0Var;
        this.f6397b = tz0Var;
    }

    public final void a(fu0<SQLiteDatabase, Void> fu0Var) {
        tz0 tz0Var = this.f6397b;
        cc0 cc0Var = this.f6396a;
        cc0Var.getClass();
        gz0.a(tz0Var.submit(hc0.a(cc0Var)), new gc0(this, fu0Var), this.f6397b);
    }
}

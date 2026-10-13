package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class z9 {

    /* renamed from: a, reason: collision with root package name */
    private long f10715a = -1;

    /* renamed from: b, reason: collision with root package name */
    private long f10716b = -1;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ w9 f10717c;

    public z9(w9 w9Var) {
        this.f10717c = w9Var;
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putLong("topen", this.f10715a);
        bundle.putLong("tclose", this.f10716b);
        return bundle;
    }

    public final long b() {
        return this.f10716b;
    }

    public final void c() {
        com.google.android.gms.common.util.e eVar;
        eVar = this.f10717c.f10048a;
        this.f10716b = eVar.c();
    }

    public final void d() {
        com.google.android.gms.common.util.e eVar;
        eVar = this.f10717c.f10048a;
        this.f10715a = eVar.c();
    }
}

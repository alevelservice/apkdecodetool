package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.lo0;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class tl0<S extends lo0<?>> {

    /* renamed from: a, reason: collision with root package name */
    public final qz0<S> f9601a;

    /* renamed from: b, reason: collision with root package name */
    private final long f9602b;

    /* renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.common.util.e f9603c;

    public tl0(qz0<S> qz0Var, long j2, com.google.android.gms.common.util.e eVar) {
        this.f9601a = qz0Var;
        this.f9603c = eVar;
        this.f9602b = eVar.c() + j2;
    }

    public final boolean a() {
        return this.f9602b < this.f9603c.c();
    }
}

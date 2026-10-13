package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zs implements oe1<Context> {

    /* renamed from: a, reason: collision with root package name */
    private final ws f10847a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f10848b;

    private zs(ws wsVar, af1<Context> af1Var) {
        this.f10847a = wsVar;
        this.f10848b = af1Var;
    }

    public static zs a(ws wsVar, af1<Context> af1Var) {
        return new zs(wsVar, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Context a2 = this.f10847a.a(this.f10848b.get());
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}

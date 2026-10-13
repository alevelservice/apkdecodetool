package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ks implements oe1<com.google.android.gms.ads.internal.a> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f7740a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<t8> f7741b;

    private ks(hs hsVar, af1<Context> af1Var, af1<t8> af1Var2) {
        this.f7740a = af1Var;
        this.f7741b = af1Var2;
    }

    public static ks a(hs hsVar, af1<Context> af1Var, af1<t8> af1Var2) {
        return new ks(hsVar, af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        com.google.android.gms.ads.internal.a aVar = new com.google.android.gms.ads.internal.a(this.f7740a.get(), this.f7741b.get(), null);
        ue1.a(aVar, "Cannot return null from a non-@Nullable @Provides method");
        return aVar;
    }
}

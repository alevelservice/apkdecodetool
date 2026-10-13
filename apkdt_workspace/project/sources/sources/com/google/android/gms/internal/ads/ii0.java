package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ii0 implements oe1<ei0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f7314a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<lz> f7315b;

    public ii0(af1<Context> af1Var, af1<lz> af1Var2) {
        this.f7314a = af1Var;
        this.f7315b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new ei0(this.f7314a.get(), this.f7315b.get());
    }
}

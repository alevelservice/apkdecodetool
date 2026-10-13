package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ae0 implements oe1<xd0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f5563a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<qp> f5564b;

    public ae0(af1<Context> af1Var, af1<qp> af1Var2) {
        this.f5563a = af1Var;
        this.f5564b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new xd0(this.f5563a.get(), this.f5564b.get());
    }
}

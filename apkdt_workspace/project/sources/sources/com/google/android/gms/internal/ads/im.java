package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class im implements oe1<qv0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f7340a;

    public im(af1<Context> af1Var) {
        this.f7340a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        qv0 qv0Var = new qv0(this.f7340a.get(), com.google.android.gms.ads.internal.n.q().b());
        ue1.a(qv0Var, "Cannot return null from a non-@Nullable @Provides method");
        return qv0Var;
    }
}

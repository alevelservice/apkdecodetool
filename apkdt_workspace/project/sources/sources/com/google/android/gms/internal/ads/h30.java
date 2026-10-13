package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class h30 implements oe1<f30> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<gc> f6987a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<com.google.android.gms.common.util.e> f6988b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Executor> f6989c;

    public h30(af1<gc> af1Var, af1<com.google.android.gms.common.util.e> af1Var2, af1<Executor> af1Var3) {
        this.f6987a = af1Var;
        this.f6988b = af1Var2;
        this.f6989c = af1Var3;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new f30(this.f6987a.get(), this.f6988b.get(), this.f6989c.get());
    }
}

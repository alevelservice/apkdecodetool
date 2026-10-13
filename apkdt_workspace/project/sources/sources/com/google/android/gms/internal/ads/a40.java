package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class a40 implements oe1<w30> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Executor> f5511a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<p30> f5512b;

    public a40(af1<Executor> af1Var, af1<p30> af1Var2) {
        this.f5511a = af1Var;
        this.f5512b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new w30(this.f5511a.get(), this.f5512b.get());
    }
}

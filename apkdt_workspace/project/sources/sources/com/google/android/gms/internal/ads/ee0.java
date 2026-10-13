package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ee0 implements oe1<zd0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f6404a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f6405b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<lz> f6406c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<ks0> f6407d;

    public ee0(af1<Context> af1Var, af1<Executor> af1Var2, af1<lz> af1Var3, af1<ks0> af1Var4) {
        this.f6404a = af1Var;
        this.f6405b = af1Var2;
        this.f6406c = af1Var3;
        this.f6407d = af1Var4;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new zd0(this.f6404a.get(), this.f6405b.get(), this.f6406c.get(), this.f6407d.get());
    }
}

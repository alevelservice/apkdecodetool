package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xe0 implements oe1<ve0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f10326a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<zzawv> f10327b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<lz> f10328c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<Executor> f10329d;

    public xe0(af1<Context> af1Var, af1<zzawv> af1Var2, af1<lz> af1Var3, af1<Executor> af1Var4) {
        this.f10326a = af1Var;
        this.f10327b = af1Var2;
        this.f10328c = af1Var3;
        this.f10329d = af1Var4;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new ve0(this.f10326a.get(), this.f10327b.get(), this.f10328c.get(), this.f10329d.get());
    }
}

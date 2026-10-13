package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ud0 implements oe1<sd0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f9712a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<zzawv> f9713b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<qp> f9714c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<Executor> f9715d;

    public ud0(af1<Context> af1Var, af1<zzawv> af1Var2, af1<qp> af1Var3, af1<Executor> af1Var4) {
        this.f9712a = af1Var;
        this.f9713b = af1Var2;
        this.f9714c = af1Var3;
        this.f9715d = af1Var4;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new sd0(this.f9712a.get(), this.f9713b.get(), this.f9714c.get(), this.f9715d.get());
    }
}

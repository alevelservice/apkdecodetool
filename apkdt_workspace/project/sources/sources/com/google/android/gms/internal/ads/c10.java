package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class c10 implements oe1<ao> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<zp1> f5896a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f5897b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Context> f5898c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<com.google.android.gms.common.util.e> f5899d;

    public c10(af1<zp1> af1Var, af1<Executor> af1Var2, af1<Context> af1Var3, af1<com.google.android.gms.common.util.e> af1Var4) {
        this.f5896a = af1Var;
        this.f5897b = af1Var2;
        this.f5898c = af1Var3;
        this.f5899d = af1Var4;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        zp1 zp1Var = this.f5896a.get();
        Executor executor = this.f5897b.get();
        Context context = this.f5898c.get();
        ao aoVar = new ao(executor, new on(context, zp1Var), this.f5899d.get());
        ue1.a(aoVar, "Cannot return null from a non-@Nullable @Provides method");
        return aoVar;
    }
}

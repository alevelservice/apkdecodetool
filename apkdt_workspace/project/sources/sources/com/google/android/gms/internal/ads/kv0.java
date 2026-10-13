package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kv0 implements oe1<iv0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Executor> f7765a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ud> f7766b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<zf0> f7767c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<zzawv> f7768d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<String> f7769e;

    /* renamed from: f, reason: collision with root package name */
    private final af1<String> f7770f;

    /* renamed from: g, reason: collision with root package name */
    private final af1<Context> f7771g;

    /* renamed from: h, reason: collision with root package name */
    private final af1<us0> f7772h;

    /* renamed from: i, reason: collision with root package name */
    private final af1<com.google.android.gms.common.util.e> f7773i;

    private kv0(af1<Executor> af1Var, af1<ud> af1Var2, af1<zf0> af1Var3, af1<zzawv> af1Var4, af1<String> af1Var5, af1<String> af1Var6, af1<Context> af1Var7, af1<us0> af1Var8, af1<com.google.android.gms.common.util.e> af1Var9) {
        this.f7765a = af1Var;
        this.f7766b = af1Var2;
        this.f7767c = af1Var3;
        this.f7768d = af1Var4;
        this.f7769e = af1Var5;
        this.f7770f = af1Var6;
        this.f7771g = af1Var7;
        this.f7772h = af1Var8;
        this.f7773i = af1Var9;
    }

    public static kv0 a(af1<Executor> af1Var, af1<ud> af1Var2, af1<zf0> af1Var3, af1<zzawv> af1Var4, af1<String> af1Var5, af1<String> af1Var6, af1<Context> af1Var7, af1<us0> af1Var8, af1<com.google.android.gms.common.util.e> af1Var9) {
        return new kv0(af1Var, af1Var2, af1Var3, af1Var4, af1Var5, af1Var6, af1Var7, af1Var8, af1Var9);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new iv0(this.f7765a.get(), this.f7766b.get(), this.f7767c.get(), this.f7768d.get(), this.f7769e.get(), this.f7770f.get(), this.f7771g.get(), this.f7772h.get(), this.f7773i.get());
    }
}

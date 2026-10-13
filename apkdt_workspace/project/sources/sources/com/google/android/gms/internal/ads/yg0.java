package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yg0 implements oe1<rg0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f10557a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<zzawv> f10558b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ws0> f10559c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<Executor> f10560d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<y50> f10561e;

    /* renamed from: f, reason: collision with root package name */
    private final af1<d60> f10562f;

    public yg0(af1<Context> af1Var, af1<zzawv> af1Var2, af1<ws0> af1Var3, af1<Executor> af1Var4, af1<y50> af1Var5, af1<d60> af1Var6) {
        this.f10557a = af1Var;
        this.f10558b = af1Var2;
        this.f10559c = af1Var3;
        this.f10560d = af1Var4;
        this.f10561e = af1Var5;
        this.f10562f = af1Var6;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new rg0(this.f10557a.get(), this.f10558b.get(), this.f10559c.get(), this.f10560d.get(), this.f10561e.get(), this.f10562f.get());
    }
}

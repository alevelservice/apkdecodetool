package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xb0 implements oe1<zzcdt> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f10306a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f10307b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<x7> f10308c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<wm> f10309d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<t7> f10310e;

    private xb0(af1<Context> af1Var, af1<Executor> af1Var2, af1<x7> af1Var3, af1<wm> af1Var4, af1<t7> af1Var5) {
        this.f10306a = af1Var;
        this.f10307b = af1Var2;
        this.f10308c = af1Var3;
        this.f10309d = af1Var4;
        this.f10310e = af1Var5;
    }

    public static xb0 a(af1<Context> af1Var, af1<Executor> af1Var2, af1<x7> af1Var3, af1<wm> af1Var4, af1<t7> af1Var5) {
        return new xb0(af1Var, af1Var2, af1Var3, af1Var4, af1Var5);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new zzcdt(this.f10306a.get(), this.f10307b.get(), this.f10308c.get(), this.f10309d.get(), this.f10310e.get());
    }
}

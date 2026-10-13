package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class a00 implements oe1<xz> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<x8> f5490a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f5491b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<a9> f5492c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<View> f5493d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<Integer> f5494e;

    private a00(af1<x8> af1Var, af1<Context> af1Var2, af1<a9> af1Var3, af1<View> af1Var4, af1<Integer> af1Var5) {
        this.f5490a = af1Var;
        this.f5491b = af1Var2;
        this.f5492c = af1Var3;
        this.f5493d = af1Var4;
        this.f5494e = af1Var5;
    }

    public static a00 a(af1<x8> af1Var, af1<Context> af1Var2, af1<a9> af1Var3, af1<View> af1Var4, af1<Integer> af1Var5) {
        return new a00(af1Var, af1Var2, af1Var3, af1Var4, af1Var5);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new xz(this.f5490a.get(), this.f5491b.get(), this.f5492c.get(), this.f5493d.get(), this.f5494e.get().intValue());
    }
}

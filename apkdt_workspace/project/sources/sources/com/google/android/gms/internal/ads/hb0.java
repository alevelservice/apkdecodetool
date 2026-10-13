package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class hb0 implements oe1<eb0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f7031a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<a9> f7032b;

    private hb0(af1<Context> af1Var, af1<a9> af1Var2) {
        this.f7031a = af1Var;
        this.f7032b = af1Var2;
    }

    public static hb0 a(af1<Context> af1Var, af1<a9> af1Var2) {
        return new hb0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new eb0(this.f7031a.get(), this.f7032b.get());
    }
}

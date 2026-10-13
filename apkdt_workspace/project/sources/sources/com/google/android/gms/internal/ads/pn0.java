package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class pn0 implements oe1<nn0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f8732a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<String> f8733b;

    private pn0(af1<Context> af1Var, af1<String> af1Var2) {
        this.f8732a = af1Var;
        this.f8733b = af1Var2;
    }

    public static pn0 a(af1<Context> af1Var, af1<String> af1Var2) {
        return new pn0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new nn0(this.f8732a.get(), this.f8733b.get());
    }
}

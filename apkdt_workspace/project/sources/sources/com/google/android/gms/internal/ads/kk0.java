package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kk0 implements oe1<jk0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<qz0<String>> f7709a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f7710b;

    private kk0(af1<qz0<String>> af1Var, af1<Executor> af1Var2) {
        this.f7709a = af1Var;
        this.f7710b = af1Var2;
    }

    public static kk0 a(af1<qz0<String>> af1Var, af1<Executor> af1Var2) {
        return new kk0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new jk0(this.f7709a.get(), this.f7710b.get());
    }
}

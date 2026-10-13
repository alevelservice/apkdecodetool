package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class j80 implements oe1<h80> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<f80> f7439a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Set<k80>> f7440b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<com.google.android.gms.common.util.e> f7441c;

    private j80(af1<f80> af1Var, af1<Set<k80>> af1Var2, af1<com.google.android.gms.common.util.e> af1Var3) {
        this.f7439a = af1Var;
        this.f7440b = af1Var2;
        this.f7441c = af1Var3;
    }

    public static j80 a(af1<f80> af1Var, af1<Set<k80>> af1Var2, af1<com.google.android.gms.common.util.e> af1Var3) {
        return new j80(af1Var, af1Var2, af1Var3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new h80(this.f7439a.get(), this.f7440b.get(), this.f7441c.get());
    }
}

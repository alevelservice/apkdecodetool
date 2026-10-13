package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fa0 implements oe1<qz0<Bundle>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<zu0> f6608a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<no0<Bundle>> f6609b;

    private fa0(af1<zu0> af1Var, af1<no0<Bundle>> af1Var2) {
        this.f6608a = af1Var;
        this.f6609b = af1Var2;
    }

    public static fa0 a(af1<zu0> af1Var, af1<no0<Bundle>> af1Var2) {
        return new fa0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        hu0 a2 = this.f6608a.get().a((zu0) wu0.SIGNALS).a(this.f6609b.get().a(new Bundle())).a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}

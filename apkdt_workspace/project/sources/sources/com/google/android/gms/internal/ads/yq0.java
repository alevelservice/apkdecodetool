package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yq0 implements oe1<zq0<y50, r50>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f10627a;

    public yq0(af1<Context> af1Var) {
        this.f10627a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        this.f10627a.get();
        wq0 wq0Var = new wq0();
        ue1.a(wq0Var, "Cannot return null from a non-@Nullable @Provides method");
        return wq0Var;
    }
}

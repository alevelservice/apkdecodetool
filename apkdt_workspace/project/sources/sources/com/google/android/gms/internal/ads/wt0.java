package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wt0 implements oe1<Context> {

    /* renamed from: a, reason: collision with root package name */
    private final rt0 f10204a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<pt0> f10205b;

    private wt0(rt0 rt0Var, af1<pt0> af1Var) {
        this.f10204a = rt0Var;
        this.f10205b = af1Var;
    }

    public static wt0 a(rt0 rt0Var, af1<pt0> af1Var) {
        return new wt0(rt0Var, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return a(this.f10204a, this.f10205b.get());
    }

    public static Context a(rt0 rt0Var, pt0 pt0Var) {
        Context context = pt0Var.f8777a;
        ue1.a(context, "Cannot return null from a non-@Nullable @Provides method");
        return context;
    }
}

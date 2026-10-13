package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class lm implements oe1<gc> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f7939a;

    public lm(af1<Context> af1Var) {
        this.f7939a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        gc gcVar = new gc(this.f7939a.get());
        ue1.a(gcVar, "Cannot return null from a non-@Nullable @Provides method");
        return gcVar;
    }
}

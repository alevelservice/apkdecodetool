package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class af0 implements oe1<we0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f5566a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<lz> f5567b;

    public af0(af1<Context> af1Var, af1<lz> af1Var2) {
        this.f5566a = af1Var;
        this.f5567b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new we0(this.f5566a.get(), this.f5567b.get());
    }
}

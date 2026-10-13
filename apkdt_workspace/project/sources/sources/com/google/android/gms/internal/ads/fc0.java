package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fc0 implements oe1<cc0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f6615a;

    private fc0(af1<Context> af1Var) {
        this.f6615a = af1Var;
    }

    public static fc0 a(af1<Context> af1Var) {
        return new fc0(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new cc0(this.f6615a.get());
    }
}

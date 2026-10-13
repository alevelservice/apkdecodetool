package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class jv0 implements oe1<c4> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f7573a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<zzawv> f7574b;

    public jv0(gv0 gv0Var, af1<Context> af1Var, af1<zzawv> af1Var2) {
        this.f7573a = af1Var;
        this.f7574b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        c4 b2 = new w3().b(this.f7573a.get(), this.f7574b.get());
        ue1.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }
}

package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class iz implements oe1<jz> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<yu> f7395a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<jx> f7396b;

    private iz(af1<yu> af1Var, af1<jx> af1Var2) {
        this.f7395a = af1Var;
        this.f7396b = af1Var2;
    }

    public static iz a(af1<yu> af1Var, af1<jx> af1Var2) {
        return new iz(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new jz(this.f7395a.get(), this.f7396b.get());
    }
}

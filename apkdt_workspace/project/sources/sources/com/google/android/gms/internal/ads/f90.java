package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class f90 implements oe1<c90> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<q80> f6594a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<mk> f6595b;

    private f90(af1<q80> af1Var, af1<mk> af1Var2) {
        this.f6594a = af1Var;
        this.f6595b = af1Var2;
    }

    public static f90 a(af1<q80> af1Var, af1<mk> af1Var2) {
        return new f90(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new c90(this.f6594a.get(), this.f6595b.get());
    }
}

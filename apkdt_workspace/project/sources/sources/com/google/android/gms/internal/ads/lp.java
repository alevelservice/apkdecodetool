package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class lp implements oe1<ox<qu>> {

    /* renamed from: a, reason: collision with root package name */
    private final yo f7943a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<hq> f7944b;

    public lp(yo yoVar, af1<hq> af1Var) {
        this.f7943a = yoVar;
        this.f7944b = af1Var;
    }

    public static ox<qu> a(yo yoVar, hq hqVar) {
        ox<qu> oxVar = new ox<>(hqVar, yd.f10543d);
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return a(this.f7943a, this.f7944b.get());
    }
}

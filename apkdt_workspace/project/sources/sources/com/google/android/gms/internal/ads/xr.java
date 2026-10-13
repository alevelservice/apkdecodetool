package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xr implements oe1<ox<qu>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<yr> f10417a;

    private xr(tr trVar, af1<yr> af1Var) {
        this.f10417a = af1Var;
    }

    public static xr a(tr trVar, af1<yr> af1Var) {
        return new xr(trVar, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f10417a.get(), yd.f10544e);
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}

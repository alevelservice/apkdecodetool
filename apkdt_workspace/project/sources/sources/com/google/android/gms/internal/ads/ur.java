package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ur implements oe1<ox<wt>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<yr> f9805a;

    private ur(tr trVar, af1<yr> af1Var) {
        this.f9805a = af1Var;
    }

    public static ur a(tr trVar, af1<yr> af1Var) {
        return new ur(trVar, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f9805a.get(), yd.f10544e);
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}

package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sr implements oe1<ox<st1>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<yr> f9427a;

    private sr(tr trVar, af1<yr> af1Var) {
        this.f9427a = af1Var;
    }

    public static sr a(tr trVar, af1<yr> af1Var) {
        return new sr(trVar, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f9427a.get(), yd.f10544e);
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}

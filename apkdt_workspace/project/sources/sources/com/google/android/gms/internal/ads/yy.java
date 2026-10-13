package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yy implements oe1<ox<com.google.android.gms.ads.internal.overlay.m>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<rz> f10664a;

    private yy(qy qyVar, af1<rz> af1Var) {
        this.f10664a = af1Var;
    }

    public static yy a(qy qyVar, af1<rz> af1Var) {
        return new yy(qyVar, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f10664a.get(), yd.f10544e);
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}

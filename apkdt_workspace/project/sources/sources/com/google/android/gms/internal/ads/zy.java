package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zy implements oe1<ox<qu>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<rz> f10870a;

    private zy(qy qyVar, af1<rz> af1Var) {
        this.f10870a = af1Var;
    }

    public static zy a(qy qyVar, af1<rz> af1Var) {
        return new zy(qyVar, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f10870a.get(), yd.f10544e);
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}

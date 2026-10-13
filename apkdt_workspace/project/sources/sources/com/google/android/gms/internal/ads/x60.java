package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class x60 implements oe1<ox<vt>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<w60> f10284a;

    private x60(y60 y60Var, af1<w60> af1Var) {
        this.f10284a = af1Var;
    }

    public static x60 a(y60 y60Var, af1<w60> af1Var) {
        return new x60(y60Var, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f10284a.get(), yd.f10543d);
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}

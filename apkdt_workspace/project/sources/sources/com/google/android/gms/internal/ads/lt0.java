package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class lt0 implements oe1<ox<ot>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<kt0> f7974a;

    private lt0(it0 it0Var, af1<kt0> af1Var) {
        this.f7974a = af1Var;
    }

    public static lt0 a(it0 it0Var, af1<kt0> af1Var) {
        return new lt0(it0Var, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f7974a.get(), yd.f10544e);
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}

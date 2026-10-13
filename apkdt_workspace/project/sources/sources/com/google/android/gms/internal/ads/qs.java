package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class qs implements oe1<ox<sv>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ls> f9003a;

    private qs(ns nsVar, af1<ls> af1Var) {
        this.f9003a = af1Var;
    }

    public static qs a(ns nsVar, af1<ls> af1Var) {
        return new qs(nsVar, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f9003a.get(), yd.f10544e);
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}

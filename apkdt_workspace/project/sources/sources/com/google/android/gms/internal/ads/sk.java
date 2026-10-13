package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sk implements oe1<wm> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<mk> f9381a;

    public sk(lk lkVar, af1<mk> af1Var) {
        this.f9381a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        mk mkVar = this.f9381a.get();
        ue1.a(mkVar, "Cannot return null from a non-@Nullable @Provides method");
        return mkVar;
    }
}

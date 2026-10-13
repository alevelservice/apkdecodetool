package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bt implements oe1<String> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<yr> f5857a;

    private bt(ws wsVar, af1<yr> af1Var) {
        this.f5857a = af1Var;
    }

    public static bt a(ws wsVar, af1<yr> af1Var) {
        return new bt(wsVar, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        String a2 = this.f5857a.get().a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}

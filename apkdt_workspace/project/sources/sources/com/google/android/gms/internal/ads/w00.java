package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class w00 implements oe1<u10> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<p00> f10012a;

    public w00(s00 s00Var, af1<p00> af1Var) {
        this.f10012a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        p00 p00Var = this.f10012a.get();
        ue1.a(p00Var, "Cannot return null from a non-@Nullable @Provides method");
        return p00Var;
    }
}

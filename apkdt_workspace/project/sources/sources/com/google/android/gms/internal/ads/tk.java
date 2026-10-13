package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class tk implements oe1<ed0<zzaji, zzcgt>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ke0> f9596a;

    public tk(lk lkVar, af1<ke0> af1Var) {
        this.f9596a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        og0 og0Var = new og0(this.f9596a.get());
        ue1.a(og0Var, "Cannot return null from a non-@Nullable @Provides method");
        return og0Var;
    }
}

package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class qk implements oe1<ed0<zzaji, zzcgu>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ke0> f8935a;

    public qk(lk lkVar, af1<ke0> af1Var) {
        this.f8935a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        cf0 cf0Var = new cf0(this.f8935a.get());
        ue1.a(cf0Var, "Cannot return null from a non-@Nullable @Provides method");
        return cf0Var;
    }
}

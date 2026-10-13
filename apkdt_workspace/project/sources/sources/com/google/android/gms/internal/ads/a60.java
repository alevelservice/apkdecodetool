package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class a60 implements oe1<ad0<r50>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ih0<r50, zzaji, zzcgt>> f5526a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ih0<r50, zzaji, zzcgu>> f5527b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ws0> f5528c;

    public a60(af1<ih0<r50, zzaji, zzcgt>> af1Var, af1<ih0<r50, zzaji, zzcgu>> af1Var2, af1<ws0> af1Var3) {
        this.f5526a = af1Var;
        this.f5527b = af1Var2;
        this.f5528c = af1Var3;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ih0<r50, zzaji, zzcgt> ih0Var;
        af1<ih0<r50, zzaji, zzcgt>> af1Var = this.f5526a;
        af1<ih0<r50, zzaji, zzcgu>> af1Var2 = this.f5527b;
        if (this.f5528c.get().n.contains("new_rewarded")) {
            ih0Var = af1Var2.get();
        } else {
            ih0Var = af1Var.get();
        }
        ue1.a(ih0Var, "Cannot return null from a non-@Nullable @Provides method");
        return ih0Var;
    }
}

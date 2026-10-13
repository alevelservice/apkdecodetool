package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vp implements oe1<ad0<uo>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Boolean> f9970a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<tf0> f9971b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ih0<uo, zzaji, zzcgu>> f9972c;

    public vp(af1<Boolean> af1Var, af1<tf0> af1Var2, af1<ih0<uo, zzaji, zzcgu>> af1Var3) {
        this.f9970a = af1Var;
        this.f9971b = af1Var2;
        this.f9972c = af1Var3;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        boolean booleanValue = this.f9970a.get().booleanValue();
        Object obj = (tf0) this.f9971b.get();
        Object obj2 = (ih0) this.f9972c.get();
        if (!booleanValue) {
            obj = obj2;
        }
        ue1.a(obj, "Cannot return null from a non-@Nullable @Provides method");
        return (ad0) obj;
    }
}

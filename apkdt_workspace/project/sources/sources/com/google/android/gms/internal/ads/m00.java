package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class m00 implements oe1<ft0<y40>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<i50> f8000a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<tz0> f8001b;

    public m00(af1<i50> af1Var, af1<tz0> af1Var2) {
        this.f8000a = af1Var;
        this.f8001b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ft0 ft0Var = new ft0(this.f8000a.get(), this.f8001b.get());
        ue1.a(ft0Var, "Cannot return null from a non-@Nullable @Provides method");
        return ft0Var;
    }
}

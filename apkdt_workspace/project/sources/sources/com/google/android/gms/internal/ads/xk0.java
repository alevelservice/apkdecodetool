package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xk0 implements oe1<vk0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<tz0> f10374a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ws0> f10375b;

    private xk0(af1<tz0> af1Var, af1<ws0> af1Var2) {
        this.f10374a = af1Var;
        this.f10375b = af1Var2;
    }

    public static xk0 a(af1<tz0> af1Var, af1<ws0> af1Var2) {
        return new xk0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new vk0(this.f10374a.get(), this.f10375b.get());
    }
}

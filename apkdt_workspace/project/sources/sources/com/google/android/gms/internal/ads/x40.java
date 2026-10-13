package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class x40 implements oe1<zzbxm> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<String> f10275a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<d10> f10276b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<l10> f10277c;

    private x40(af1<String> af1Var, af1<d10> af1Var2, af1<l10> af1Var3) {
        this.f10275a = af1Var;
        this.f10276b = af1Var2;
        this.f10277c = af1Var3;
    }

    public static x40 a(af1<String> af1Var, af1<d10> af1Var2, af1<l10> af1Var3) {
        return new x40(af1Var, af1Var2, af1Var3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new zzbxm(this.f10275a.get(), this.f10276b.get(), this.f10277c.get());
    }
}

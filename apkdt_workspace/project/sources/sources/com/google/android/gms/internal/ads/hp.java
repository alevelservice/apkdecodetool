package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class hp implements oe1<uo> {

    /* renamed from: a, reason: collision with root package name */
    private final yo f7140a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<xo> f7141b;

    public hp(yo yoVar, af1<xo> af1Var) {
        this.f7140a = yoVar;
        this.f7141b = af1Var;
    }

    public static uo a(yo yoVar, Object obj) {
        xo xoVar = (xo) obj;
        ue1.a(xoVar, "Cannot return null from a non-@Nullable @Provides method");
        return xoVar;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return a(this.f7140a, this.f7141b.get());
    }
}

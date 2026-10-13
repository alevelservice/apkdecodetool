package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ip implements oe1<ox<wt>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<hq> f7349a;

    public ip(yo yoVar, af1<hq> af1Var) {
        this.f7349a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f7349a.get(), yd.f10543d);
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}

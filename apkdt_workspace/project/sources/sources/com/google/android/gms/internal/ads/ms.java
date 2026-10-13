package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ms implements oe1<ox<com.google.android.gms.ads.internal.overlay.m>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<pr> f8218a;

    private ms(js jsVar, af1<pr> af1Var) {
        this.f8218a = af1Var;
    }

    public static ms a(js jsVar, af1<pr> af1Var) {
        return new ms(jsVar, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f8218a.get(), yd.f10544e);
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}

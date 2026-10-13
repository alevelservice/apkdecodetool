package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fp implements oe1<ms0> {

    /* renamed from: a, reason: collision with root package name */
    private final yo f6698a;

    public fp(yo yoVar) {
        this.f6698a = yoVar;
    }

    public static ms0 a(yo yoVar) {
        ms0 d2 = yoVar.d();
        ue1.a(d2, "Cannot return null from a non-@Nullable @Provides method");
        return d2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return a(this.f6698a);
    }
}

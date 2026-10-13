package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ep implements oe1<pq> {

    /* renamed from: a, reason: collision with root package name */
    private final yo f6483a;

    public ep(yo yoVar) {
        this.f6483a = yoVar;
    }

    public static pq a(yo yoVar) {
        pq c2 = yoVar.c();
        ue1.a(c2, "Cannot return null from a non-@Nullable @Provides method");
        return c2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return a(this.f6483a);
    }
}

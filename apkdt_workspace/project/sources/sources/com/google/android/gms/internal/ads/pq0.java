package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class pq0 implements oe1<String> {

    /* renamed from: a, reason: collision with root package name */
    private final kq0 f8749a;

    public pq0(kq0 kq0Var) {
        this.f8749a = kq0Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        String g2 = this.f8749a.g();
        ue1.a(g2, "Cannot return null from a non-@Nullable @Provides method");
        return g2;
    }
}

package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class oq implements oe1<kv> {

    /* renamed from: a, reason: collision with root package name */
    private final lq f8580a;

    public oq(lq lqVar) {
        this.f8580a = lqVar;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        kv a2 = this.f8580a.a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}

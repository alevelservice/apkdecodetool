package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class gq implements oe1<Runnable> {

    /* renamed from: a, reason: collision with root package name */
    private final dq f6959a;

    public gq(dq dqVar) {
        this.f6959a = dqVar;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Runnable b2 = this.f6959a.b();
        ue1.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }
}

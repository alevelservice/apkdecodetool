package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fq implements oe1<zzack> {

    /* renamed from: a, reason: collision with root package name */
    private final dq f6706a;

    public fq(dq dqVar) {
        this.f6706a = dqVar;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        zzack a2 = this.f6706a.a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}

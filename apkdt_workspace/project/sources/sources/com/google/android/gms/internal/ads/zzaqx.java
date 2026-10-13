package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzaqx extends zzaqk {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.ads.p.c f10981e;

    public zzaqx(com.google.android.gms.ads.p.c cVar) {
        this.f10981e = cVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaql
    public final void onRewardedAdClosed() {
        com.google.android.gms.ads.p.c cVar = this.f10981e;
        if (cVar != null) {
            cVar.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaql
    public final void onRewardedAdFailedToShow(int i2) {
        com.google.android.gms.ads.p.c cVar = this.f10981e;
        if (cVar != null) {
            cVar.a(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaql
    public final void onRewardedAdOpened() {
        com.google.android.gms.ads.p.c cVar = this.f10981e;
        if (cVar != null) {
            cVar.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaql
    public final void zza(zzaqf zzaqfVar) {
        com.google.android.gms.ads.p.c cVar = this.f10981e;
        if (cVar != null) {
            cVar.a(new g8(zzaqfVar));
        }
    }
}

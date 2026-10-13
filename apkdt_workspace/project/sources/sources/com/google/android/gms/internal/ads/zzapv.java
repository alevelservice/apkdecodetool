package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzapv extends zzapr {

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private com.google.android.gms.ads.o.c f10978e;

    public zzapv(@Nullable com.google.android.gms.ads.o.c cVar) {
        this.f10978e = cVar;
    }

    @Nullable
    public final com.google.android.gms.ads.o.c getRewardedVideoAdListener() {
        return this.f10978e;
    }

    @Override // com.google.android.gms.internal.ads.zzapo
    public final void onRewardedVideoAdClosed() {
        com.google.android.gms.ads.o.c cVar = this.f10978e;
        if (cVar != null) {
            cVar.onRewardedVideoAdClosed();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapo
    public final void onRewardedVideoAdFailedToLoad(int i2) {
        com.google.android.gms.ads.o.c cVar = this.f10978e;
        if (cVar != null) {
            cVar.onRewardedVideoAdFailedToLoad(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapo
    public final void onRewardedVideoAdLeftApplication() {
        com.google.android.gms.ads.o.c cVar = this.f10978e;
        if (cVar != null) {
            cVar.onRewardedVideoAdLeftApplication();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapo
    public final void onRewardedVideoAdLoaded() {
        com.google.android.gms.ads.o.c cVar = this.f10978e;
        if (cVar != null) {
            cVar.onRewardedVideoAdLoaded();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapo
    public final void onRewardedVideoAdOpened() {
        com.google.android.gms.ads.o.c cVar = this.f10978e;
        if (cVar != null) {
            cVar.onRewardedVideoAdOpened();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapo
    public final void onRewardedVideoCompleted() {
        com.google.android.gms.ads.o.c cVar = this.f10978e;
        if (cVar != null) {
            cVar.onRewardedVideoCompleted();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapo
    public final void onRewardedVideoStarted() {
        com.google.android.gms.ads.o.c cVar = this.f10978e;
        if (cVar != null) {
            cVar.onRewardedVideoStarted();
        }
    }

    public final void setRewardedVideoAdListener(com.google.android.gms.ads.o.c cVar) {
        this.f10978e = cVar;
    }

    @Override // com.google.android.gms.internal.ads.zzapo
    public final void zza(zzape zzapeVar) {
        com.google.android.gms.ads.o.c cVar = this.f10978e;
        if (cVar != null) {
            cVar.a(new b8(zzapeVar));
        }
    }
}

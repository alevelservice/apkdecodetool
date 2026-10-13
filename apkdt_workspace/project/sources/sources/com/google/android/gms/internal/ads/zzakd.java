package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzakd extends zzajm {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.ads.mediation.a f10927e;

    /* renamed from: f, reason: collision with root package name */
    private final zzapz f10928f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzakd(com.google.android.gms.ads.mediation.a aVar, zzapz zzapzVar) {
        this.f10927e = aVar;
        this.f10928f = zzapzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onAdClicked() {
        zzapz zzapzVar = this.f10928f;
        if (zzapzVar != null) {
            zzapzVar.zzan(ObjectWrapper.wrap(this.f10927e));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onAdClosed() {
        zzapz zzapzVar = this.f10928f;
        if (zzapzVar != null) {
            zzapzVar.zzam(ObjectWrapper.wrap(this.f10927e));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onAdFailedToLoad(int i2) {
        zzapz zzapzVar = this.f10928f;
        if (zzapzVar != null) {
            zzapzVar.zze(ObjectWrapper.wrap(this.f10927e), i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onAdImpression() {
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onAdLoaded() {
        zzapz zzapzVar = this.f10928f;
        if (zzapzVar != null) {
            zzapzVar.zzaj(ObjectWrapper.wrap(this.f10927e));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onAdOpened() {
        zzapz zzapzVar = this.f10928f;
        if (zzapzVar != null) {
            zzapzVar.zzak(ObjectWrapper.wrap(this.f10927e));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onAppEvent(String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onVideoEnd() {
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onVideoPause() {
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onVideoPlay() {
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void zza(zzabo zzaboVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void zza(zzajo zzajoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void zza(zzaqf zzaqfVar) {
        zzapz zzapzVar = this.f10928f;
        if (zzapzVar != null) {
            zzapzVar.zza(ObjectWrapper.wrap(this.f10927e), new zzaqd(zzaqfVar.getType(), zzaqfVar.getAmount()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void zzb(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void zzb(zzaqd zzaqdVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void zzcm(int i2) {
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void zzde(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void zzrs() {
        zzapz zzapzVar = this.f10928f;
        if (zzapzVar != null) {
            zzapzVar.zzal(ObjectWrapper.wrap(this.f10927e));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void zzrt() {
        zzapz zzapzVar = this.f10928f;
        if (zzapzVar != null) {
            zzapzVar.zzap(ObjectWrapper.wrap(this.f10927e));
        }
    }
}

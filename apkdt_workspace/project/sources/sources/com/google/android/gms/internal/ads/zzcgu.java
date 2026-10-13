package com.google.android.gms.internal.ads;

import android.os.Bundle;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzcgu extends zzajm implements nu {

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private zzajj f11104e;

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private mu f11105f;

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void onAdClicked() {
        if (this.f11104e != null) {
            this.f11104e.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void onAdClosed() {
        if (this.f11104e != null) {
            this.f11104e.onAdClosed();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void onAdFailedToLoad(int i2) {
        if (this.f11104e != null) {
            this.f11104e.onAdFailedToLoad(i2);
        }
        if (this.f11105f != null) {
            this.f11105f.onAdFailedToLoad(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void onAdImpression() {
        if (this.f11104e != null) {
            this.f11104e.onAdImpression();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void onAdLeftApplication() {
        if (this.f11104e != null) {
            this.f11104e.onAdLeftApplication();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void onAdLoaded() {
        if (this.f11104e != null) {
            this.f11104e.onAdLoaded();
        }
        if (this.f11105f != null) {
            this.f11105f.onAdLoaded();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void onAdOpened() {
        if (this.f11104e != null) {
            this.f11104e.onAdOpened();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void onAppEvent(String str, String str2) {
        if (this.f11104e != null) {
            this.f11104e.onAppEvent(str, str2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void onVideoEnd() {
        if (this.f11104e != null) {
            this.f11104e.onVideoEnd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void onVideoPause() {
        if (this.f11104e != null) {
            this.f11104e.onVideoPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void onVideoPlay() {
        if (this.f11104e != null) {
            this.f11104e.onVideoPlay();
        }
    }

    public final synchronized void zza(zzajj zzajjVar) {
        this.f11104e = zzajjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void zzb(zzaqd zzaqdVar) {
        if (this.f11104e != null) {
            this.f11104e.zzb(zzaqdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void zzcm(int i2) {
        if (this.f11104e != null) {
            this.f11104e.zzcm(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void zzde(String str) {
        if (this.f11104e != null) {
            this.f11104e.zzde(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void zzrs() {
        if (this.f11104e != null) {
            this.f11104e.zzrs();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void zzrt() {
        if (this.f11104e != null) {
            this.f11104e.zzrt();
        }
    }

    @Override // com.google.android.gms.internal.ads.nu
    public final synchronized void zza(mu muVar) {
        this.f11105f = muVar;
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void zzb(Bundle bundle) {
        if (this.f11104e != null) {
            this.f11104e.zzb(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void zza(zzajo zzajoVar) {
        if (this.f11104e != null) {
            this.f11104e.zza(zzajoVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void zza(zzabo zzaboVar, String str) {
        if (this.f11104e != null) {
            this.f11104e.zza(zzaboVar, str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final synchronized void zza(zzaqf zzaqfVar) {
        if (this.f11104e != null) {
            this.f11104e.zza(zzaqfVar);
        }
    }
}

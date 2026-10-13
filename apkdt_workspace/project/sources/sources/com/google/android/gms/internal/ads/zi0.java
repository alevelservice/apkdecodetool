package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zi0 implements jt, ot, wt, qu, st1 {

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private zzur f10750e;

    @Override // com.google.android.gms.internal.ads.jt
    public final void a(zzape zzapeVar, String str, String str2) {
    }

    public final synchronized void a(zzur zzurVar) {
        this.f10750e = zzurVar;
    }

    @Override // com.google.android.gms.internal.ads.st1
    public final synchronized void onAdClicked() {
        if (this.f10750e != null) {
            try {
                this.f10750e.onAdClicked();
            } catch (RemoteException e2) {
                qd.c("Remote Exception at onAdClicked.", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final synchronized void onAdClosed() {
        if (this.f10750e != null) {
            try {
                this.f10750e.onAdClosed();
            } catch (RemoteException e2) {
                qd.c("Remote Exception at onAdClosed.", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ot
    public final synchronized void onAdFailedToLoad(int i2) {
        if (this.f10750e != null) {
            try {
                this.f10750e.onAdFailedToLoad(i2);
            } catch (RemoteException e2) {
                qd.c("Remote Exception at onAdFailedToLoad.", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.wt
    public final synchronized void onAdImpression() {
        if (this.f10750e != null) {
            try {
                this.f10750e.onAdImpression();
            } catch (RemoteException e2) {
                qd.c("Remote Exception at onAdImpression.", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final synchronized void onAdLeftApplication() {
        if (this.f10750e != null) {
            try {
                this.f10750e.onAdLeftApplication();
            } catch (RemoteException e2) {
                qd.c("Remote Exception at onAdLeftApplication.", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.qu
    public final synchronized void onAdLoaded() {
        if (this.f10750e != null) {
            try {
                this.f10750e.onAdLoaded();
            } catch (RemoteException e2) {
                qd.c("Remote Exception at onAdLoaded.", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final synchronized void onAdOpened() {
        if (this.f10750e != null) {
            try {
                this.f10750e.onAdOpened();
            } catch (RemoteException e2) {
                qd.c("Remote Exception at onAdOpened.", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onRewardedVideoStarted() {
    }

    public final synchronized zzur a() {
        return this.f10750e;
    }
}

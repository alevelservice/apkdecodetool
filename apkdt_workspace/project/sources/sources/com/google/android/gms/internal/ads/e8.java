package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class e8 implements com.google.android.gms.ads.reward.mediation.a {

    /* renamed from: a, reason: collision with root package name */
    private final zzapz f6351a;

    public e8(zzapz zzapzVar) {
        this.f6351a = zzapzVar;
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void a(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, com.google.android.gms.ads.o.b bVar) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onRewarded.");
        try {
            if (bVar != null) {
                this.f6351a.zza(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter), new zzaqd(bVar));
            } else {
                this.f6351a.zza(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter), new zzaqd("", 1));
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void b(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdOpened.");
        try {
            this.f6351a.zzak(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void c(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onVideoStarted.");
        try {
            this.f6351a.zzal(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void d(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdLoaded.");
        try {
            this.f6351a.zzaj(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void e(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdLeftApplication.");
        try {
            this.f6351a.zzao(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void f(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onInitializationSucceeded.");
        try {
            this.f6351a.zzai(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void g(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdClosed.");
        try {
            this.f6351a.zzam(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void zzb(Bundle bundle) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdMetadataChanged.");
        try {
            this.f6351a.zzb(bundle);
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void a(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i2) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdFailedToLoad.");
        try {
            this.f6351a.zze(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter), i2);
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void a(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onVideoCompleted.");
        try {
            this.f6351a.zzap(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }
}

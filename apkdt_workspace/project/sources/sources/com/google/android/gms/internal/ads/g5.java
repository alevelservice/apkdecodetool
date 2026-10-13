package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class g5 implements com.google.android.gms.ads.mediation.g, com.google.android.gms.ads.mediation.l, com.google.android.gms.ads.mediation.n {

    /* renamed from: a, reason: collision with root package name */
    private final zzajj f6801a;

    /* renamed from: b, reason: collision with root package name */
    private com.google.android.gms.ads.mediation.q f6802b;

    /* renamed from: c, reason: collision with root package name */
    private com.google.android.gms.ads.mediation.x f6803c;

    /* renamed from: d, reason: collision with root package name */
    private com.google.android.gms.ads.formats.e f6804d;

    public g5(zzajj zzajjVar) {
        this.f6801a = zzajjVar;
    }

    @Override // com.google.android.gms.ads.mediation.g
    public final void a(MediationBannerAdapter mediationBannerAdapter, String str, String str2) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAppEvent.");
        try {
            this.f6801a.onAppEvent(str, str2);
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.g
    public final void b(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdClicked.");
        try {
            this.f6801a.onAdClicked();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.g
    public final void c(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdLoaded.");
        try {
            this.f6801a.onAdLoaded();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.g
    public final void d(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdLeftApplication.");
        try {
            this.f6801a.onAdLeftApplication();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.g
    public final void e(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdOpened.");
        try {
            this.f6801a.onAdOpened();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.g
    public final void a(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdClosed.");
        try {
            this.f6801a.onAdClosed();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.l
    public final void b(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdClicked.");
        try {
            this.f6801a.onAdClicked();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.l
    public final void c(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdLoaded.");
        try {
            this.f6801a.onAdLoaded();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.l
    public final void d(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdClosed.");
        try {
            this.f6801a.onAdClosed();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.l
    public final void e(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdOpened.");
        try {
            this.f6801a.onAdOpened();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.g
    public final void a(MediationBannerAdapter mediationBannerAdapter, int i2) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error. ");
        sb.append(i2);
        qd.a(sb.toString());
        try {
            this.f6801a.onAdFailedToLoad(i2);
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.n
    public final void b(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdClosed.");
        try {
            this.f6801a.onAdClosed();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.n
    public final void c(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        com.google.android.gms.ads.mediation.q qVar = this.f6802b;
        com.google.android.gms.ads.mediation.x xVar = this.f6803c;
        if (this.f6804d == null) {
            if (qVar == null && xVar == null) {
                qd.d("#007 Could not call remote method.", null);
                return;
            }
            if (xVar != null && !xVar.j()) {
                qd.a("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            } else if (qVar != null && !qVar.c()) {
                qd.a("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            }
        }
        qd.a("Adapter called onAdClicked.");
        try {
            this.f6801a.onAdClicked();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.n
    public final void d(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdLeftApplication.");
        try {
            this.f6801a.onAdLeftApplication();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.n
    public final void e(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        com.google.android.gms.ads.mediation.q qVar = this.f6802b;
        com.google.android.gms.ads.mediation.x xVar = this.f6803c;
        if (this.f6804d == null) {
            if (qVar == null && xVar == null) {
                qd.d("#007 Could not call remote method.", null);
                return;
            }
            if (xVar != null && !xVar.k()) {
                qd.a("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            } else if (qVar != null && !qVar.d()) {
                qd.a("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            }
        }
        qd.a("Adapter called onAdImpression.");
        try {
            this.f6801a.onAdImpression();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.l
    public final void a(MediationInterstitialAdapter mediationInterstitialAdapter, int i2) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i2);
        sb.append(".");
        qd.a(sb.toString());
        try {
            this.f6801a.onAdFailedToLoad(i2);
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    public final com.google.android.gms.ads.mediation.x b() {
        return this.f6803c;
    }

    @Override // com.google.android.gms.ads.mediation.l
    public final void a(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdLeftApplication.");
        try {
            this.f6801a.onAdLeftApplication();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.n
    public final void a(MediationNativeAdapter mediationNativeAdapter, com.google.android.gms.ads.mediation.q qVar) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdLoaded.");
        this.f6802b = qVar;
        this.f6803c = null;
        a(mediationNativeAdapter, this.f6803c, this.f6802b);
        try {
            this.f6801a.onAdLoaded();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    public final com.google.android.gms.ads.formats.e c() {
        return this.f6804d;
    }

    @Override // com.google.android.gms.ads.mediation.n
    public final void a(MediationNativeAdapter mediationNativeAdapter, com.google.android.gms.ads.mediation.x xVar) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdLoaded.");
        this.f6803c = xVar;
        this.f6802b = null;
        a(mediationNativeAdapter, this.f6803c, this.f6802b);
        try {
            this.f6801a.onAdLoaded();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    private static void a(MediationNativeAdapter mediationNativeAdapter, @Nullable com.google.android.gms.ads.mediation.x xVar, @Nullable com.google.android.gms.ads.mediation.q qVar) {
        if (mediationNativeAdapter instanceof AdMobAdapter) {
            return;
        }
        com.google.android.gms.ads.j jVar = new com.google.android.gms.ads.j();
        jVar.a(new zzajx());
        if (xVar != null && xVar.p()) {
            xVar.a(jVar);
        }
        if (qVar == null || !qVar.f()) {
            return;
        }
        qVar.a(jVar);
    }

    @Override // com.google.android.gms.ads.mediation.n
    public final void a(MediationNativeAdapter mediationNativeAdapter, com.google.android.gms.ads.formats.e eVar) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        String valueOf = String.valueOf(eVar.getCustomTemplateId());
        qd.a(valueOf.length() != 0 ? "Adapter called onAdLoaded with template id ".concat(valueOf) : new String("Adapter called onAdLoaded with template id "));
        this.f6804d = eVar;
        try {
            this.f6801a.onAdLoaded();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.n
    public final void a(MediationNativeAdapter mediationNativeAdapter, com.google.android.gms.ads.formats.e eVar, String str) {
        if (eVar instanceof n) {
            try {
                this.f6801a.zza(((n) eVar).a(), str);
                return;
            } catch (RemoteException e2) {
                qd.d("#007 Could not call remote method.", e2);
                return;
            }
        }
        qd.d("Unexpected native custom template ad type.");
    }

    @Override // com.google.android.gms.ads.mediation.n
    public final void a(MediationNativeAdapter mediationNativeAdapter, int i2) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i2);
        sb.append(".");
        qd.a(sb.toString());
        try {
            this.f6801a.onAdFailedToLoad(i2);
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.n
    public final void a(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        qd.a("Adapter called onAdOpened.");
        try {
            this.f6801a.onAdOpened();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    public final com.google.android.gms.ads.mediation.q a() {
        return this.f6802b;
    }
}

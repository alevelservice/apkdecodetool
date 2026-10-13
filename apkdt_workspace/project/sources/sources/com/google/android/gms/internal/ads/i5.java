package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.e;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class i5<NETWORK_EXTRAS extends com.google.ads.mediation.e, SERVER_PARAMETERS extends MediationServerParameters> implements com.google.ads.mediation.c, com.google.ads.mediation.d {

    /* renamed from: a, reason: collision with root package name */
    private final zzajj f7227a;

    public i5(zzajj zzajjVar) {
        this.f7227a = zzajjVar;
    }

    @Override // com.google.ads.mediation.c
    public final void a(MediationBannerAdapter<?, ?> mediationBannerAdapter, e.i.a.a aVar) {
        String valueOf = String.valueOf(aVar);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error. ");
        sb.append(valueOf);
        qd.a(sb.toString());
        mu1.a();
        if (!gd.b()) {
            qd.d("#008 Must be called on the main UI thread.", null);
            gd.f6840b.post(new j5(this, aVar));
        } else {
            try {
                this.f7227a.onAdFailedToLoad(m5.a(aVar));
            } catch (RemoteException e2) {
                qd.d("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // com.google.ads.mediation.d
    public final void a(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, e.i.a.a aVar) {
        String valueOf = String.valueOf(aVar);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error ");
        sb.append(valueOf);
        sb.append(".");
        qd.a(sb.toString());
        mu1.a();
        if (!gd.b()) {
            qd.d("#008 Must be called on the main UI thread.", null);
            gd.f6840b.post(new k5(this, aVar));
        } else {
            try {
                this.f7227a.onAdFailedToLoad(m5.a(aVar));
            } catch (RemoteException e2) {
                qd.d("#007 Could not call remote method.", e2);
            }
        }
    }
}

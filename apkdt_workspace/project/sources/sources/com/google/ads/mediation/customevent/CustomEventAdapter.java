package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.qd;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@KeepName
/* loaded from: classes.dex */
public final class CustomEventAdapter implements MediationBannerAdapter<com.google.android.gms.ads.mediation.customevent.c, e>, MediationInterstitialAdapter<com.google.android.gms.ads.mediation.customevent.c, e> {

    /* renamed from: a, reason: collision with root package name */
    private View f4226a;

    /* renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    private CustomEventBanner f4227b;

    /* renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    private CustomEventInterstitial f4228c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class a implements com.google.ads.mediation.customevent.b {
        public a(CustomEventAdapter customEventAdapter, com.google.ads.mediation.c cVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public class b implements c {
        public b(CustomEventAdapter customEventAdapter, CustomEventAdapter customEventAdapter2, com.google.ads.mediation.d dVar) {
        }
    }

    private static <T> T a(String str) {
        try {
            return (T) Class.forName(str).newInstance();
        } catch (Throwable th) {
            String message = th.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(message).length());
            sb.append("Could not instantiate custom event adapter: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            qd.d(sb.toString());
            return null;
        }
    }

    @Override // com.google.ads.mediation.b
    public final void destroy() {
        CustomEventBanner customEventBanner = this.f4227b;
        if (customEventBanner != null) {
            customEventBanner.destroy();
        }
        CustomEventInterstitial customEventInterstitial = this.f4228c;
        if (customEventInterstitial != null) {
            customEventInterstitial.destroy();
        }
    }

    @Override // com.google.ads.mediation.b
    public final Class<com.google.android.gms.ads.mediation.customevent.c> getAdditionalParametersType() {
        return com.google.android.gms.ads.mediation.customevent.c.class;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.f4226a;
    }

    @Override // com.google.ads.mediation.b
    public final Class<e> getServerParametersType() {
        return e.class;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    public final void requestBannerAd(com.google.ads.mediation.c cVar, Activity activity, e eVar, e.i.a.c cVar2, com.google.ads.mediation.a aVar, com.google.android.gms.ads.mediation.customevent.c cVar3) {
        this.f4227b = (CustomEventBanner) a(eVar.f4230b);
        if (this.f4227b == null) {
            cVar.a(this, e.i.a.a.INTERNAL_ERROR);
        } else {
            this.f4227b.requestBannerAd(new a(this, cVar), activity, eVar.f4229a, eVar.f4231c, cVar2, aVar, cVar3 == null ? null : cVar3.a(eVar.f4229a));
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(com.google.ads.mediation.d dVar, Activity activity, e eVar, com.google.ads.mediation.a aVar, com.google.android.gms.ads.mediation.customevent.c cVar) {
        this.f4228c = (CustomEventInterstitial) a(eVar.f4230b);
        if (this.f4228c == null) {
            dVar.a(this, e.i.a.a.INTERNAL_ERROR);
        } else {
            this.f4228c.requestInterstitialAd(new b(this, this, dVar), activity, eVar.f4229a, eVar.f4231c, aVar, cVar == null ? null : cVar.a(eVar.f4229a));
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.f4228c.showInterstitial();
    }
}

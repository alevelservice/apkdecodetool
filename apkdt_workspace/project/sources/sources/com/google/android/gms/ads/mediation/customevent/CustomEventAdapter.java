package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.g;
import com.google.android.gms.ads.mediation.l;
import com.google.android.gms.ads.mediation.n;
import com.google.android.gms.ads.mediation.t;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.qd;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@KeepForSdkWithMembers
@KeepName
/* loaded from: classes.dex */
public final class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {

    /* renamed from: a, reason: collision with root package name */
    private View f4633a;

    /* renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    private CustomEventBanner f4634b;

    /* renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    private CustomEventInterstitial f4635c;

    /* renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    private CustomEventNative f4636d;

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    @VisibleForTesting
    /* loaded from: classes.dex */
    class a implements d {
        public a(CustomEventAdapter customEventAdapter, CustomEventAdapter customEventAdapter2, l lVar) {
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    @VisibleForTesting
    /* loaded from: classes.dex */
    static final class b implements com.google.android.gms.ads.mediation.customevent.b {
        public b(CustomEventAdapter customEventAdapter, g gVar) {
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    @VisibleForTesting
    /* loaded from: classes.dex */
    static class c implements f {
        public c(CustomEventAdapter customEventAdapter, n nVar) {
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

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.f4633a;
    }

    @Override // com.google.android.gms.ads.mediation.e
    public final void onDestroy() {
        CustomEventBanner customEventBanner = this.f4634b;
        if (customEventBanner != null) {
            customEventBanner.onDestroy();
        }
        CustomEventInterstitial customEventInterstitial = this.f4635c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onDestroy();
        }
        CustomEventNative customEventNative = this.f4636d;
        if (customEventNative != null) {
            customEventNative.onDestroy();
        }
    }

    @Override // com.google.android.gms.ads.mediation.e
    public final void onPause() {
        CustomEventBanner customEventBanner = this.f4634b;
        if (customEventBanner != null) {
            customEventBanner.onPause();
        }
        CustomEventInterstitial customEventInterstitial = this.f4635c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onPause();
        }
        CustomEventNative customEventNative = this.f4636d;
        if (customEventNative != null) {
            customEventNative.onPause();
        }
    }

    @Override // com.google.android.gms.ads.mediation.e
    public final void onResume() {
        CustomEventBanner customEventBanner = this.f4634b;
        if (customEventBanner != null) {
            customEventBanner.onResume();
        }
        CustomEventInterstitial customEventInterstitial = this.f4635c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onResume();
        }
        CustomEventNative customEventNative = this.f4636d;
        if (customEventNative != null) {
            customEventNative.onResume();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final void requestBannerAd(Context context, g gVar, Bundle bundle, com.google.android.gms.ads.d dVar, com.google.android.gms.ads.mediation.d dVar2, Bundle bundle2) {
        this.f4634b = (CustomEventBanner) a(bundle.getString("class_name"));
        if (this.f4634b == null) {
            gVar.a(this, 0);
        } else {
            this.f4634b.requestBannerAd(context, new b(this, gVar), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), dVar, dVar2, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, l lVar, Bundle bundle, com.google.android.gms.ads.mediation.d dVar, Bundle bundle2) {
        this.f4635c = (CustomEventInterstitial) a(bundle.getString("class_name"));
        if (this.f4635c == null) {
            lVar.a(this, 0);
        } else {
            this.f4635c.requestInterstitialAd(context, new a(this, this, lVar), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), dVar, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void requestNativeAd(Context context, n nVar, Bundle bundle, t tVar, Bundle bundle2) {
        this.f4636d = (CustomEventNative) a(bundle.getString("class_name"));
        if (this.f4636d == null) {
            nVar.a(this, 0);
        } else {
            this.f4636d.requestNativeAd(context, new c(this, nVar), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), tVar, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.f4635c.showInterstitial();
    }
}

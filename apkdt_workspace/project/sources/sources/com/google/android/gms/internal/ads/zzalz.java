package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzalz implements MediationInterstitialAdapter {

    /* renamed from: a, reason: collision with root package name */
    private Activity f10941a;

    /* renamed from: b, reason: collision with root package name */
    private com.google.android.gms.ads.mediation.l f10942b;

    /* renamed from: c, reason: collision with root package name */
    private Uri f10943c;

    @Override // com.google.android.gms.ads.mediation.e
    public final void onDestroy() {
        qd.a("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.e
    public final void onPause() {
        qd.a("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.e
    public final void onResume() {
        qd.a("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, com.google.android.gms.ads.mediation.l lVar, Bundle bundle, com.google.android.gms.ads.mediation.d dVar, Bundle bundle2) {
        this.f10942b = lVar;
        if (this.f10942b == null) {
            qd.d("Listener not set for mediation. Returning.");
            return;
        }
        if (!(context instanceof Activity)) {
            qd.d("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.f10942b.a(this, 0);
            return;
        }
        if (!(com.google.android.gms.common.util.o.b() && sw1.a(context))) {
            qd.d("Default browser does not support custom tabs. Bailing out.");
            this.f10942b.a(this, 0);
            return;
        }
        String string = bundle.getString("tab_url");
        if (TextUtils.isEmpty(string)) {
            qd.d("The tab_url retrieved from mediation metadata is empty. Bailing out.");
            this.f10942b.a(this, 0);
        } else {
            this.f10941a = (Activity) context;
            this.f10943c = Uri.parse(string);
            this.f10942b.c(this);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        CustomTabsIntent b2 = new CustomTabsIntent.a().b();
        b2.f1498a.setData(this.f10943c);
        wa.f10063h.post(new w5(this, new AdOverlayInfoParcel(new zzb(b2.f1498a), null, new x5(this), null, new zzawv(0, 0, false))));
        com.google.android.gms.ads.internal.n.g().e();
    }
}

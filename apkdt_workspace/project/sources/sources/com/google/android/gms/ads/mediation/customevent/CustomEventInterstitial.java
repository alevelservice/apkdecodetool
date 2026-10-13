package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public interface CustomEventInterstitial extends a {
    void requestInterstitialAd(Context context, d dVar, String str, com.google.android.gms.ads.mediation.d dVar2, Bundle bundle);

    void showInterstitial();
}

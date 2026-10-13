package com.google.android.gms.ads.mediation;

import android.content.Context;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class a implements i {
    public abstract y getSDKVersionInfo();

    public abstract y getVersionInfo();

    public abstract void initialize(Context context, b bVar, List<h> list);

    public void loadBannerAd(f fVar, c<Object, Object> cVar) {
        cVar.onFailure(String.valueOf(getClass().getSimpleName()).concat(" does not support banner ads."));
    }

    public void loadInterstitialAd(k kVar, c<j, Object> cVar) {
        cVar.onFailure(String.valueOf(getClass().getSimpleName()).concat(" does not support interstitial ads."));
    }

    public void loadNativeAd(m mVar, c<x, Object> cVar) {
        cVar.onFailure(String.valueOf(getClass().getSimpleName()).concat(" does not support native ads."));
    }

    public void loadRewardedAd(p pVar, c<o, Object> cVar) {
        cVar.onFailure(String.valueOf(getClass().getSimpleName()).concat(" does not support rewarded ads."));
    }
}

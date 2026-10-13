package com.google.ads.mediation;

import android.app.Activity;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.e;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@Deprecated
/* loaded from: classes.dex */
public interface MediationInterstitialAdapter<ADDITIONAL_PARAMETERS extends e, SERVER_PARAMETERS extends MediationServerParameters> extends b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    void requestInterstitialAd(d dVar, Activity activity, SERVER_PARAMETERS server_parameters, a aVar, ADDITIONAL_PARAMETERS additional_parameters);

    void showInterstitial();
}

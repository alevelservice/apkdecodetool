package com.google.ads.mediation;

import android.app.Activity;
import android.view.View;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.e;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@Deprecated
/* loaded from: classes.dex */
public interface MediationBannerAdapter<ADDITIONAL_PARAMETERS extends e, SERVER_PARAMETERS extends MediationServerParameters> extends b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    View getBannerView();

    void requestBannerAd(c cVar, Activity activity, SERVER_PARAMETERS server_parameters, e.i.a.c cVar2, a aVar, ADDITIONAL_PARAMETERS additional_parameters);
}

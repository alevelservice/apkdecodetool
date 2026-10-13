package com.google.android.gms.ads.reward.mediation;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.d;
import com.google.android.gms.ads.mediation.e;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public interface MediationRewardedVideoAdAdapter extends e {
    public static final String CUSTOM_EVENT_SERVER_PARAMETER_FIELD = "parameter";

    void initialize(Context context, d dVar, String str, a aVar, Bundle bundle, Bundle bundle2);

    boolean isInitialized();

    void loadAd(d dVar, Bundle bundle, Bundle bundle2);

    void showVideo();
}

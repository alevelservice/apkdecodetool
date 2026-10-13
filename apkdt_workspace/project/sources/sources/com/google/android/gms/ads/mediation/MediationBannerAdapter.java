package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;
import android.view.View;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public interface MediationBannerAdapter extends e {
    View getBannerView();

    void requestBannerAd(Context context, g gVar, Bundle bundle, com.google.android.gms.ads.d dVar, d dVar2, Bundle bundle2);
}

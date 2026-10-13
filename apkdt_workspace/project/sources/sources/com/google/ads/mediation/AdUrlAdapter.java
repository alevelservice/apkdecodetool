package com.google.ads.mediation;

import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public final class AdUrlAdapter extends AbstractAdViewAdapter implements com.google.android.gms.ads.mediation.MediationBannerAdapter, com.google.android.gms.ads.mediation.MediationInterstitialAdapter, MediationNativeAdapter {
    @Override // com.google.ads.mediation.AbstractAdViewAdapter
    protected final Bundle a(Bundle bundle, Bundle bundle2) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putBundle("sdk_less_server_data", bundle2);
        bundle.putBoolean("_noRefresh", true);
        return bundle;
    }

    @Override // com.google.ads.mediation.AbstractAdViewAdapter
    public final String getAdUnitId(Bundle bundle) {
        return "adurl";
    }
}

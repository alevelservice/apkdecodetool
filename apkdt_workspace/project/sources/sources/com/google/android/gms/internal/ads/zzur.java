package com.google.android.gms.internal.ads;

import android.os.IInterface;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public interface zzur extends IInterface {
    void onAdClicked();

    void onAdClosed();

    void onAdFailedToLoad(int i2);

    void onAdImpression();

    void onAdLeftApplication();

    void onAdLoaded();

    void onAdOpened();
}

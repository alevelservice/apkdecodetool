package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public interface zzve extends IInterface {
    void destroy();

    Bundle getAdMetadata();

    String getAdUnitId();

    String getMediationAdapterClassName();

    zzwk getVideoController();

    boolean isLoading();

    boolean isReady();

    void pause();

    void resume();

    void setImmersiveMode(boolean z);

    void setManualImpressionsEnabled(boolean z);

    void setUserId(String str);

    void showInterstitial();

    void stopLoading();

    void zza(zzand zzandVar);

    void zza(zzanj zzanjVar, String str);

    void zza(zzapo zzapoVar);

    void zza(zzqu zzquVar);

    void zza(zztw zztwVar);

    void zza(zztx zztxVar);

    void zza(zzuq zzuqVar);

    void zza(zzur zzurVar);

    void zza(zzvh zzvhVar);

    void zza(zzvm zzvmVar);

    void zza(zzvs zzvsVar);

    void zza(zzwq zzwqVar);

    void zza(zzyc zzycVar);

    void zza(zzzn zzznVar);

    boolean zza(zztp zztpVar);

    void zzbm(String str);

    IObjectWrapper zzjm();

    void zzjn();

    zztw zzjo();

    String zzjp();

    zzvm zzjq();

    zzur zzjr();
}

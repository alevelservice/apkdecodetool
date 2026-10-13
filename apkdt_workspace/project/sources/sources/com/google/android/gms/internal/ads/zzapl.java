package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public interface zzapl extends IInterface {
    void destroy();

    Bundle getAdMetadata();

    String getMediationAdapterClassName();

    boolean isLoaded();

    void pause();

    void resume();

    void setAppPackageName(String str);

    void setCustomData(String str);

    void setImmersiveMode(boolean z);

    void setUserId(String str);

    void show();

    void zza(zzapj zzapjVar);

    void zza(zzapo zzapoVar);

    void zza(zzapu zzapuVar);

    void zza(zzvh zzvhVar);

    void zzm(IObjectWrapper iObjectWrapper);

    void zzn(IObjectWrapper iObjectWrapper);

    void zzo(IObjectWrapper iObjectWrapper);

    void zzp(IObjectWrapper iObjectWrapper);

    boolean zzph();
}

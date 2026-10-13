package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public interface zzaji extends IInterface {
    void destroy();

    Bundle getInterstitialAdapterInfo();

    zzwk getVideoController();

    boolean isInitialized();

    void pause();

    void resume();

    void setImmersiveMode(boolean z);

    void showInterstitial();

    void showVideo();

    void zza(IObjectWrapper iObjectWrapper, zzaez zzaezVar, List<zzafh> list);

    void zza(IObjectWrapper iObjectWrapper, zzapz zzapzVar, List<String> list);

    void zza(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, zzajj zzajjVar);

    void zza(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, zzapz zzapzVar, String str2);

    void zza(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, String str2, zzajj zzajjVar);

    void zza(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, String str2, zzajj zzajjVar, zzaai zzaaiVar, List<String> list);

    void zza(IObjectWrapper iObjectWrapper, zztw zztwVar, zztp zztpVar, String str, zzajj zzajjVar);

    void zza(IObjectWrapper iObjectWrapper, zztw zztwVar, zztp zztpVar, String str, String str2, zzajj zzajjVar);

    void zza(zztp zztpVar, String str);

    void zza(zztp zztpVar, String str, String str2);

    void zzb(IObjectWrapper iObjectWrapper, zztp zztpVar, String str, zzajj zzajjVar);

    IObjectWrapper zzrk();

    zzajq zzrl();

    zzajr zzrm();

    Bundle zzrn();

    Bundle zzro();

    boolean zzrp();

    zzabo zzrq();

    zzajw zzrr();

    void zzv(IObjectWrapper iObjectWrapper);

    void zzw(IObjectWrapper iObjectWrapper);
}

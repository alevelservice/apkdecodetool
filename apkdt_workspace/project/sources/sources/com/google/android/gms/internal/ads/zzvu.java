package com.google.android.gms.internal.ads;

import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public interface zzvu extends IInterface {
    String getVersionString();

    void initialize();

    void setAppMuted(boolean z);

    void setAppVolume(float f2);

    void zza(zzafe zzafeVar);

    void zza(zzajd zzajdVar);

    void zza(zzxw zzxwVar);

    void zzb(String str, IObjectWrapper iObjectWrapper);

    void zzby(String str);

    void zzbz(String str);

    void zzc(IObjectWrapper iObjectWrapper, String str);

    float zzoo();

    boolean zzop();

    List<zzaex> zzoq();
}

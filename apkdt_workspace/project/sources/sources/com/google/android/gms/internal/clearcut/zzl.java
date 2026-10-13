package com.google.android.gms.internal.clearcut;

import android.os.IInterface;
import com.google.android.gms.clearcut.zzc;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

/* loaded from: classes.dex */
public interface zzl extends IInterface {
    void zza(Status status);

    void zza(Status status, long j2);

    void zza(Status status, zzc zzcVar);

    void zza(Status status, zze[] zzeVarArr);

    void zza(DataHolder dataHolder);

    void zzb(Status status);

    void zzb(Status status, long j2);

    void zzb(Status status, zzc zzcVar);

    void zzc(Status status);
}

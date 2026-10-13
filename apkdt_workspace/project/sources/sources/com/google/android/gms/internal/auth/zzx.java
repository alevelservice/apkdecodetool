package com.google.android.gms.internal.auth;

import android.os.IInterface;
import com.google.android.gms.auth.api.accounttransfer.DeviceMetaData;
import com.google.android.gms.auth.api.accounttransfer.zzl;
import com.google.android.gms.auth.api.accounttransfer.zzt;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public interface zzx extends IInterface {
    void onFailure(Status status);

    void zza(DeviceMetaData deviceMetaData);

    void zza(Status status, zzl zzlVar);

    void zza(Status status, zzt zztVar);

    void zza(byte[] bArr);

    void zzb(Status status);

    void zzd();
}

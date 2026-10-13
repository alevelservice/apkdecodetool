package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zzb;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
public final class zzo extends zzb implements zzn {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // com.google.android.gms.common.internal.zzn
    public final boolean zza(com.google.android.gms.common.zzj zzjVar, IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        com.google.android.gms.internal.common.a.a(zza, zzjVar);
        com.google.android.gms.internal.common.a.a(zza, iObjectWrapper);
        Parcel zza2 = zza(5, zza);
        boolean a2 = com.google.android.gms.internal.common.a.a(zza2);
        zza2.recycle();
        return a2;
    }
}

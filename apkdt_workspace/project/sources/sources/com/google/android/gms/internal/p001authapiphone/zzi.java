package com.google.android.gms.internal.p001authapiphone;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* compiled from: com.google.android.gms:play-services-auth-api-phone@@17.4.0 */
/* loaded from: classes.dex */
public final class zzi extends zzb implements zzj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService");
    }

    @Override // com.google.android.gms.internal.p001authapiphone.zzj
    public final void zza(zzl zzlVar) {
        Parcel zza = zza();
        b.a(zza, zzlVar);
        zza(1, zza);
    }

    @Override // com.google.android.gms.internal.p001authapiphone.zzj
    public final void zza(String str, zzl zzlVar) {
        Parcel zza = zza();
        zza.writeString(str);
        b.a(zza, zzlVar);
        zza(2, zza);
    }

    @Override // com.google.android.gms.internal.p001authapiphone.zzj
    public final void zza(IStatusCallback iStatusCallback) {
        Parcel zza = zza();
        b.a(zza, iStatusCallback);
        zza(3, zza);
    }

    @Override // com.google.android.gms.internal.p001authapiphone.zzj
    public final void zza(zzf zzfVar) {
        Parcel zza = zza();
        b.a(zza, zzfVar);
        zza(4, zza);
    }

    @Override // com.google.android.gms.internal.p001authapiphone.zzj
    public final void zza(String str, zzh zzhVar) {
        Parcel zza = zza();
        zza.writeString(str);
        b.a(zza, zzhVar);
        zza(5, zza);
    }
}

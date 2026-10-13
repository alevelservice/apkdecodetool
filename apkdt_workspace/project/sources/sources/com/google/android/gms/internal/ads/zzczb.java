package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public final class zzczb extends zzfn implements zzczc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzczb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final zzcza zza(zzcyy zzcyyVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzcyyVar);
        Parcel transactAndReadException = transactAndReadException(1, obtainAndWriteInterfaceToken);
        zzcza zzczaVar = (zzcza) tg1.a(transactAndReadException, zzcza.CREATOR);
        transactAndReadException.recycle();
        return zzczaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final void zza(zzcyt zzcytVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzcytVar);
        zza(2, obtainAndWriteInterfaceToken);
    }
}

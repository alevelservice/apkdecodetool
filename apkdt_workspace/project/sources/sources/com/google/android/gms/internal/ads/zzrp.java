package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzrp extends zzfn implements zzrm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzrp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    @Override // com.google.android.gms.internal.ads.zzrm
    public final zzrg zza(zzrl zzrlVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzrlVar);
        Parcel transactAndReadException = transactAndReadException(1, obtainAndWriteInterfaceToken);
        zzrg zzrgVar = (zzrg) tg1.a(transactAndReadException, zzrg.CREATOR);
        transactAndReadException.recycle();
        return zzrgVar;
    }
}

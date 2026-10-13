package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzaod extends zzfn implements zzaob {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaod(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final zzanx zza(zzanv zzanvVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzanvVar);
        Parcel transactAndReadException = transactAndReadException(1, obtainAndWriteInterfaceToken);
        zzanx zzanxVar = (zzanx) tg1.a(transactAndReadException, zzanx.CREATOR);
        transactAndReadException.recycle();
        return zzanxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zzb(zzaok zzaokVar, zzaoe zzaoeVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzaokVar);
        tg1.a(obtainAndWriteInterfaceToken, zzaoeVar);
        zza(5, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zza(zzanv zzanvVar, zzaoc zzaocVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzanvVar);
        tg1.a(obtainAndWriteInterfaceToken, zzaocVar);
        zza(2, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zza(zzaok zzaokVar, zzaoe zzaoeVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzaokVar);
        tg1.a(obtainAndWriteInterfaceToken, zzaoeVar);
        zza(4, obtainAndWriteInterfaceToken);
    }
}

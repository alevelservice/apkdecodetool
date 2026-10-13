package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzaqi extends zzfn implements zzaqg {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaqi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final Bundle getAdMetadata() {
        Parcel transactAndReadException = transactAndReadException(9, obtainAndWriteInterfaceToken());
        Bundle bundle = (Bundle) tg1.a(transactAndReadException, Bundle.CREATOR);
        transactAndReadException.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final String getMediationAdapterClassName() {
        Parcel transactAndReadException = transactAndReadException(4, obtainAndWriteInterfaceToken());
        String readString = transactAndReadException.readString();
        transactAndReadException.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final boolean isLoaded() {
        Parcel transactAndReadException = transactAndReadException(3, obtainAndWriteInterfaceToken());
        boolean a2 = tg1.a(transactAndReadException);
        transactAndReadException.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zza(zztp zztpVar, zzaqo zzaqoVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zztpVar);
        tg1.a(obtainAndWriteInterfaceToken, zzaqoVar);
        zza(1, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zzl(IObjectWrapper iObjectWrapper) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        zza(5, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final zzaqf zzpg() {
        zzaqf zzaqhVar;
        Parcel transactAndReadException = transactAndReadException(11, obtainAndWriteInterfaceToken());
        IBinder readStrongBinder = transactAndReadException.readStrongBinder();
        if (readStrongBinder == null) {
            zzaqhVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            if (queryLocalInterface instanceof zzaqf) {
                zzaqhVar = (zzaqf) queryLocalInterface;
            } else {
                zzaqhVar = new zzaqh(readStrongBinder);
            }
        }
        transactAndReadException.recycle();
        return zzaqhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zza(zzaql zzaqlVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzaqlVar);
        zza(2, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zza(zzaqt zzaqtVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzaqtVar);
        zza(6, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zza(zzarb zzarbVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzarbVar);
        zza(7, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zza(zzwf zzwfVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzwfVar);
        zza(8, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zza(IObjectWrapper iObjectWrapper, boolean z) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, z);
        zza(10, obtainAndWriteInterfaceToken);
    }
}

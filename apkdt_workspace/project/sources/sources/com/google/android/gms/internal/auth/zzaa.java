package com.google.android.gms.internal.auth;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzaa extends zza implements zzz {
    zzaa(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.accounttransfer.internal.IAccountTransferService");
    }

    @Override // com.google.android.gms.internal.auth.zzz
    public final void zza(zzx zzxVar, zzaf zzafVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        m.a(obtainAndWriteInterfaceToken, zzxVar);
        m.a(obtainAndWriteInterfaceToken, zzafVar);
        transactAndReadExceptionReturnVoid(5, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.auth.zzz
    public final void zza(zzx zzxVar, zzad zzadVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        m.a(obtainAndWriteInterfaceToken, zzxVar);
        m.a(obtainAndWriteInterfaceToken, zzadVar);
        transactAndReadExceptionReturnVoid(6, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.auth.zzz
    public final void zza(zzx zzxVar, zzv zzvVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        m.a(obtainAndWriteInterfaceToken, zzxVar);
        m.a(obtainAndWriteInterfaceToken, zzvVar);
        transactAndReadExceptionReturnVoid(7, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.auth.zzz
    public final void zza(zzx zzxVar, zzah zzahVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        m.a(obtainAndWriteInterfaceToken, zzxVar);
        m.a(obtainAndWriteInterfaceToken, zzahVar);
        transactAndReadExceptionReturnVoid(8, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.auth.zzz
    public final void zza(zzx zzxVar, zzab zzabVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        m.a(obtainAndWriteInterfaceToken, zzxVar);
        m.a(obtainAndWriteInterfaceToken, zzabVar);
        transactAndReadExceptionReturnVoid(9, obtainAndWriteInterfaceToken);
    }
}

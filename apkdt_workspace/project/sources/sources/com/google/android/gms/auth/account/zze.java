package com.google.android.gms.auth.account;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.auth.m;

/* loaded from: classes.dex */
public final class zze extends com.google.android.gms.internal.auth.zza implements zzc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.account.IWorkAccountService");
    }

    @Override // com.google.android.gms.auth.account.zzc
    public final void zza(zza zzaVar, String str) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        m.a(obtainAndWriteInterfaceToken, zzaVar);
        obtainAndWriteInterfaceToken.writeString(str);
        transactAndReadExceptionReturnVoid(2, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.auth.account.zzc
    public final void zzb(boolean z) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        m.a(obtainAndWriteInterfaceToken, z);
        transactAndReadExceptionReturnVoid(1, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.auth.account.zzc
    public final void zza(zza zzaVar, Account account) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        m.a(obtainAndWriteInterfaceToken, zzaVar);
        m.a(obtainAndWriteInterfaceToken, account);
        transactAndReadExceptionReturnVoid(3, obtainAndWriteInterfaceToken);
    }
}

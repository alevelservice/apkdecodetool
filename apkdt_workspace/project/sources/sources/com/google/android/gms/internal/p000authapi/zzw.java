package com.google.android.gms.internal.p000authapi;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.auth.api.credentials.CredentialRequest;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class zzw extends zzd implements zzx {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
    }

    @Override // com.google.android.gms.internal.p000authapi.zzx
    public final void zzc(zzv zzvVar, CredentialRequest credentialRequest) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        g.a(obtainAndWriteInterfaceToken, zzvVar);
        g.a(obtainAndWriteInterfaceToken, credentialRequest);
        transactAndReadExceptionReturnVoid(1, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.p000authapi.zzx
    public final void zzc(zzv zzvVar, zzz zzzVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        g.a(obtainAndWriteInterfaceToken, zzvVar);
        g.a(obtainAndWriteInterfaceToken, zzzVar);
        transactAndReadExceptionReturnVoid(2, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.p000authapi.zzx
    public final void zzc(zzv zzvVar, zzt zztVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        g.a(obtainAndWriteInterfaceToken, zzvVar);
        g.a(obtainAndWriteInterfaceToken, zztVar);
        transactAndReadExceptionReturnVoid(3, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.p000authapi.zzx
    public final void zzc(zzv zzvVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        g.a(obtainAndWriteInterfaceToken, zzvVar);
        transactAndReadExceptionReturnVoid(4, obtainAndWriteInterfaceToken);
    }
}

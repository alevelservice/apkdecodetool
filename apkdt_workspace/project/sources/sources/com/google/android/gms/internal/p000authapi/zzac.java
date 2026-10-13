package com.google.android.gms.internal.p000authapi;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class zzac extends zzd implements zzad {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzac(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.identity.internal.ISignInService");
    }

    @Override // com.google.android.gms.internal.p000authapi.zzad
    public final void zzc(zzab zzabVar, BeginSignInRequest beginSignInRequest) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        g.a(obtainAndWriteInterfaceToken, zzabVar);
        g.a(obtainAndWriteInterfaceToken, beginSignInRequest);
        transactAndReadExceptionReturnVoid(1, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.p000authapi.zzad
    public final void zzc(IStatusCallback iStatusCallback, String str) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        g.a(obtainAndWriteInterfaceToken, iStatusCallback);
        obtainAndWriteInterfaceToken.writeString(str);
        transactAndReadExceptionReturnVoid(2, obtainAndWriteInterfaceToken);
    }
}

package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzvi extends zzfn implements zzvf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final IBinder zza(IObjectWrapper iObjectWrapper, zztw zztwVar, String str, zzajd zzajdVar, int i2, int i3) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        tg1.a(obtainAndWriteInterfaceToken, zztwVar);
        obtainAndWriteInterfaceToken.writeString(str);
        tg1.a(obtainAndWriteInterfaceToken, zzajdVar);
        obtainAndWriteInterfaceToken.writeInt(i2);
        obtainAndWriteInterfaceToken.writeInt(i3);
        Parcel transactAndReadException = transactAndReadException(2, obtainAndWriteInterfaceToken);
        IBinder readStrongBinder = transactAndReadException.readStrongBinder();
        transactAndReadException.recycle();
        return readStrongBinder;
    }
}

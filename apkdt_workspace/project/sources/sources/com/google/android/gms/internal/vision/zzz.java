package com.google.android.gms.internal.vision;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class zzz extends zzb implements zzaa {
    zzz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator");
    }

    @Override // com.google.android.gms.internal.vision.zzaa
    public final zzy zza(IObjectWrapper iObjectWrapper, zzah zzahVar) {
        zzy zzxVar;
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        q0.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        q0.a(obtainAndWriteInterfaceToken, zzahVar);
        Parcel zza = zza(1, obtainAndWriteInterfaceToken);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzxVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.vision.text.internal.client.INativeTextRecognizer");
            if (queryLocalInterface instanceof zzy) {
                zzxVar = (zzy) queryLocalInterface;
            } else {
                zzxVar = new zzx(readStrongBinder);
            }
        }
        zza.recycle();
        return zzxVar;
    }
}

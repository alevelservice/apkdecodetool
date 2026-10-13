package com.google.android.gms.vision.face.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.vision.q0;
import com.google.android.gms.internal.vision.zzb;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class zzk extends zzb implements zzi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.face.internal.client.INativeFaceDetectorCreator");
    }

    @Override // com.google.android.gms.vision.face.internal.client.zzi
    public final zzh newFaceDetector(IObjectWrapper iObjectWrapper, zzf zzfVar) {
        zzh zzjVar;
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        q0.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        q0.a(obtainAndWriteInterfaceToken, zzfVar);
        Parcel zza = zza(1, obtainAndWriteInterfaceToken);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzjVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.vision.face.internal.client.INativeFaceDetector");
            if (queryLocalInterface instanceof zzh) {
                zzjVar = (zzh) queryLocalInterface;
            } else {
                zzjVar = new zzj(readStrongBinder);
            }
        }
        zza.recycle();
        return zzjVar;
    }
}

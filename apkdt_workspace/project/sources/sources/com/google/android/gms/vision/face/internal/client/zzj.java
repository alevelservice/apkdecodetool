package com.google.android.gms.vision.face.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.vision.q0;
import com.google.android.gms.internal.vision.zzb;
import com.google.android.gms.internal.vision.zzp;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class zzj extends zzb implements zzh {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.face.internal.client.INativeFaceDetector");
    }

    @Override // com.google.android.gms.vision.face.internal.client.zzh
    public final FaceParcel[] zzc(IObjectWrapper iObjectWrapper, zzp zzpVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        q0.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        q0.a(obtainAndWriteInterfaceToken, zzpVar);
        Parcel zza = zza(1, obtainAndWriteInterfaceToken);
        FaceParcel[] faceParcelArr = (FaceParcel[]) zza.createTypedArray(FaceParcel.CREATOR);
        zza.recycle();
        return faceParcelArr;
    }

    @Override // com.google.android.gms.vision.face.internal.client.zzh
    public final boolean zzd(int i2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeInt(i2);
        Parcel zza = zza(2, obtainAndWriteInterfaceToken);
        boolean a2 = q0.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.vision.face.internal.client.zzh
    public final void zzm() {
        zzb(3, obtainAndWriteInterfaceToken());
    }
}

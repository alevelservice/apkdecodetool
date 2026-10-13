package com.google.android.gms.internal.vision;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class zzx extends zzb implements zzy {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizer");
    }

    @Override // com.google.android.gms.internal.vision.zzy
    public final zzac[] zza(IObjectWrapper iObjectWrapper, zzp zzpVar, zzae zzaeVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        q0.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        q0.a(obtainAndWriteInterfaceToken, zzpVar);
        q0.a(obtainAndWriteInterfaceToken, zzaeVar);
        Parcel zza = zza(3, obtainAndWriteInterfaceToken);
        zzac[] zzacVarArr = (zzac[]) zza.createTypedArray(zzac.CREATOR);
        zza.recycle();
        return zzacVarArr;
    }

    @Override // com.google.android.gms.internal.vision.zzy
    public final void zzq() {
        zzb(2, obtainAndWriteInterfaceToken());
    }
}

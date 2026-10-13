package com.google.android.gms.internal.vision;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.vision.barcode.Barcode;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class zzj extends zzb implements zzg {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector");
    }

    @Override // com.google.android.gms.internal.vision.zzg
    public final Barcode[] zza(IObjectWrapper iObjectWrapper, zzp zzpVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        q0.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        q0.a(obtainAndWriteInterfaceToken, zzpVar);
        Parcel zza = zza(1, obtainAndWriteInterfaceToken);
        Barcode[] barcodeArr = (Barcode[]) zza.createTypedArray(Barcode.CREATOR);
        zza.recycle();
        return barcodeArr;
    }

    @Override // com.google.android.gms.internal.vision.zzg
    public final Barcode[] zzb(IObjectWrapper iObjectWrapper, zzp zzpVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        q0.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        q0.a(obtainAndWriteInterfaceToken, zzpVar);
        Parcel zza = zza(2, obtainAndWriteInterfaceToken);
        Barcode[] barcodeArr = (Barcode[]) zza.createTypedArray(Barcode.CREATOR);
        zza.recycle();
        return barcodeArr;
    }

    @Override // com.google.android.gms.internal.vision.zzg
    public final void zzm() {
        zzb(3, obtainAndWriteInterfaceToken());
    }
}

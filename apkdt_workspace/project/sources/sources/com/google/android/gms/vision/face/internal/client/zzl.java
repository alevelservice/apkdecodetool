package com.google.android.gms.vision.face.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.vision.q0;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public abstract class zzl extends com.google.android.gms.internal.vision.zza implements zzi {
    public zzl() {
        super("com.google.android.gms.vision.face.internal.client.INativeFaceDetectorCreator");
    }

    public static zzi asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.vision.face.internal.client.INativeFaceDetectorCreator");
        if (queryLocalInterface instanceof zzi) {
            return (zzi) queryLocalInterface;
        }
        return new zzk(iBinder);
    }

    @Override // com.google.android.gms.internal.vision.zza
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 != 1) {
            return false;
        }
        zzh newFaceDetector = newFaceDetector(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzf) q0.a(parcel, zzf.CREATOR));
        parcel2.writeNoException();
        q0.a(parcel2, newFaceDetector);
        return true;
    }
}

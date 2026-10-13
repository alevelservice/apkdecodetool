package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.vision.q0;
import com.google.android.gms.internal.vision.zzp;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public abstract class zzg extends com.google.android.gms.internal.vision.zza implements zzh {
    public zzg() {
        super("com.google.android.gms.vision.face.internal.client.INativeFaceDetector");
    }

    @Override // com.google.android.gms.internal.vision.zza
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            FaceParcel[] zzc = zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzp) q0.a(parcel, zzp.CREATOR));
            parcel2.writeNoException();
            parcel2.writeTypedArray(zzc, 1);
        } else if (i2 == 2) {
            boolean zzd = zzd(parcel.readInt());
            parcel2.writeNoException();
            q0.a(parcel2, zzd);
        } else {
            if (i2 != 3) {
                return false;
            }
            zzm();
            parcel2.writeNoException();
        }
        return true;
    }
}

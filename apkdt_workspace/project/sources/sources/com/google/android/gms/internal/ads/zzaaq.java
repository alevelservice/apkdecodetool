package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzaaq extends zzfm implements zzaan {
    public zzaaq() {
        super("com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 2) {
            float aspectRatio = getAspectRatio();
            parcel2.writeNoException();
            parcel2.writeFloat(aspectRatio);
            return true;
        }
        if (i2 == 3) {
            zzs(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }
        if (i2 != 4) {
            return false;
        }
        IObjectWrapper zzqh = zzqh();
        parcel2.writeNoException();
        tg1.a(parcel2, zzqh);
        return true;
    }
}

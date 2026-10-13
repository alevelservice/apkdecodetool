package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzafo extends zzfm implements zzafl {
    public zzafo() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzafn zzafqVar;
        if (i2 == 3) {
            zzwk videoController = getVideoController();
            parcel2.writeNoException();
            tg1.a(parcel2, videoController);
            return true;
        }
        if (i2 == 4) {
            destroy();
            parcel2.writeNoException();
            return true;
        }
        if (i2 != 5) {
            return false;
        }
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            zzafqVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
            if (queryLocalInterface instanceof zzafn) {
                zzafqVar = (zzafn) queryLocalInterface;
            } else {
                zzafqVar = new zzafq(readStrongBinder);
            }
        }
        zza(asInterface, zzafqVar);
        parcel2.writeNoException();
        return true;
    }
}

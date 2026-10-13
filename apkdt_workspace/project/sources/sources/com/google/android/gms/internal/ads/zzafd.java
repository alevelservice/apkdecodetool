package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzafd extends zzfm implements zzafe {
    public zzafd() {
        super("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    public static zzafe zzx(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
        if (queryLocalInterface instanceof zzafe) {
            return (zzafe) queryLocalInterface;
        }
        return new zzafg(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 != 1) {
            return false;
        }
        zzc(parcel.createTypedArrayList(zzaex.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}

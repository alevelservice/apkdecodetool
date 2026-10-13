package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzwe extends zzfm implements zzwb {
    public zzwe() {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
    }

    public static zzwb zzg(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
        if (queryLocalInterface instanceof zzwb) {
            return (zzwb) queryLocalInterface;
        }
        return new zzwd(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            String description = getDescription();
            parcel2.writeNoException();
            parcel2.writeString(description);
        } else {
            if (i2 != 2) {
                return false;
            }
            String zzor = zzor();
            parcel2.writeNoException();
            parcel2.writeString(zzor);
        }
        return true;
    }
}

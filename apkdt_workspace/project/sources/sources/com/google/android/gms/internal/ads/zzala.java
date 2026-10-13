package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzala extends zzfm implements zzakx {
    public zzala() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            zzaa(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
        } else {
            if (i2 != 2) {
                return false;
            }
            zzdg(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}

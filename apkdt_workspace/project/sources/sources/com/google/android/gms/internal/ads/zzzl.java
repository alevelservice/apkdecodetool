package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzzl extends zzfm implements zzzm {
    public zzzl() {
        super("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            String zzpz = zzpz();
            parcel2.writeNoException();
            parcel2.writeString(zzpz);
        } else if (i2 == 2) {
            String content = getContent();
            parcel2.writeNoException();
            parcel2.writeString(content);
        } else if (i2 == 3) {
            zzr(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
        } else if (i2 == 4) {
            recordClick();
            parcel2.writeNoException();
        } else {
            if (i2 != 5) {
                return false;
            }
            recordImpression();
            parcel2.writeNoException();
        }
        return true;
    }
}

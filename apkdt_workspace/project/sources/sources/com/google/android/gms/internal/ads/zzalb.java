package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzalb extends zzfm implements zzalc {
    public zzalb() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 2) {
            zzsb();
        } else {
            if (i2 != 3) {
                return false;
            }
            zzdg(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}

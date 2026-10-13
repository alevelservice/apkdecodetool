package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzaln extends zzfm implements zzalo {
    public zzaln() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            zzdi(parcel.readString());
        } else {
            if (i2 != 2) {
                return false;
            }
            onFailure(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}

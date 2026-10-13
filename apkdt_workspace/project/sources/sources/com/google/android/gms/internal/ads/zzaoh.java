package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzaoh extends zzfm implements zzaoe {
    public zzaoh() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            zzb((ParcelFileDescriptor) tg1.a(parcel, ParcelFileDescriptor.CREATOR));
        } else {
            if (i2 != 2) {
                return false;
            }
            zza((zzauw) tg1.a(parcel, zzauw.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}

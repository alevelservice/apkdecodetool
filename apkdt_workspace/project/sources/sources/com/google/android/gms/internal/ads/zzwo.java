package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzwo extends zzfm implements zzwl {
    public zzwo() {
        super("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            onVideoStart();
        } else if (i2 == 2) {
            onVideoPlay();
        } else if (i2 == 3) {
            onVideoPause();
        } else if (i2 == 4) {
            onVideoEnd();
        } else {
            if (i2 != 5) {
                return false;
            }
            onVideoMute(tg1.a(parcel));
        }
        parcel2.writeNoException();
        return true;
    }
}

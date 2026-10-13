package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzaar extends zzfm implements zzaas {
    public zzaar() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    public static zzaas zzl(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        if (queryLocalInterface instanceof zzaas) {
            return (zzaas) queryLocalInterface;
        }
        return new zzaau(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            IObjectWrapper zzqf = zzqf();
            parcel2.writeNoException();
            tg1.a(parcel2, zzqf);
        } else if (i2 == 2) {
            Uri uri = getUri();
            parcel2.writeNoException();
            tg1.b(parcel2, uri);
        } else if (i2 == 3) {
            double scale = getScale();
            parcel2.writeNoException();
            parcel2.writeDouble(scale);
        } else if (i2 == 4) {
            int width = getWidth();
            parcel2.writeNoException();
            parcel2.writeInt(width);
        } else {
            if (i2 != 5) {
                return false;
            }
            int height = getHeight();
            parcel2.writeNoException();
            parcel2.writeInt(height);
        }
        return true;
    }
}

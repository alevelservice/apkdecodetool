package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzabr extends zzfm implements zzabs {
    public zzabr() {
        super("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    public static zzabs zzp(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
        if (queryLocalInterface instanceof zzabs) {
            return (zzabs) queryLocalInterface;
        }
        return new zzabu(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzabg zzabiVar;
        if (i2 != 1) {
            return false;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            zzabiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
            if (queryLocalInterface instanceof zzabg) {
                zzabiVar = (zzabg) queryLocalInterface;
            } else {
                zzabiVar = new zzabi(readStrongBinder);
            }
        }
        zza(zzabiVar);
        parcel2.writeNoException();
        return true;
    }
}

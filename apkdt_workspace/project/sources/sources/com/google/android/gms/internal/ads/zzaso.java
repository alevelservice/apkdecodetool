package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzaso extends zzfm implements zzasp {
    public zzaso() {
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzasn zzasmVar;
        if (i2 != 1) {
            return false;
        }
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
        zzasr zzasrVar = (zzasr) tg1.a(parcel, zzasr.CREATOR);
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            zzasmVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalCallback");
            if (queryLocalInterface instanceof zzasn) {
                zzasmVar = (zzasn) queryLocalInterface;
            } else {
                zzasmVar = new zzasm(readStrongBinder);
            }
        }
        zza(asInterface, zzasrVar, zzasmVar);
        parcel2.writeNoException();
        return true;
    }
}

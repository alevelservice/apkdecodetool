package com.google.android.gms.internal.p001authapiphone;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-auth-api-phone@@17.4.0 */
/* loaded from: classes.dex */
public class zzb implements IInterface {

    /* renamed from: e, reason: collision with root package name */
    private final IBinder f11299e;

    /* renamed from: f, reason: collision with root package name */
    private final String f11300f;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzb(IBinder iBinder, String str) {
        this.f11299e = iBinder;
        this.f11300f = str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f11299e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel zza() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f11300f);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zza(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f11299e.transact(i2, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}

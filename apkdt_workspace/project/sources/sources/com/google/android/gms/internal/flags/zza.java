package com.google.android.gms.internal.flags;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public class zza implements IInterface {

    /* renamed from: e, reason: collision with root package name */
    private final IBinder f11680e;

    /* renamed from: f, reason: collision with root package name */
    private final String f11681f;

    /* JADX INFO: Access modifiers changed from: protected */
    public zza(IBinder iBinder, String str) {
        this.f11680e = iBinder;
        this.f11681f = str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f11680e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel zza() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f11681f);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzb(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f11680e.transact(1, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel zza(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f11680e.transact(i2, parcel, obtain, 0);
                obtain.readException();
                return obtain;
            } catch (RuntimeException e2) {
                obtain.recycle();
                throw e2;
            }
        } finally {
            parcel.recycle();
        }
    }
}

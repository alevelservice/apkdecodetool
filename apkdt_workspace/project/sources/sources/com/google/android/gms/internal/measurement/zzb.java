package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public class zzb implements IInterface {

    /* renamed from: e, reason: collision with root package name */
    private final IBinder f12244e;

    /* renamed from: f, reason: collision with root package name */
    private final String f12245f;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzb(IBinder iBinder, String str) {
        this.f12244e = iBinder;
        this.f12245f = str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f12244e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel obtainAndWriteInterfaceToken() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f12245f);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel transactAndReadException(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f12244e.transact(i2, parcel, obtain, 0);
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

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zza(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f12244e.transact(i2, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}

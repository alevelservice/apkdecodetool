package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public class zza implements IInterface {

    /* renamed from: e, reason: collision with root package name */
    private final IBinder f11692e;

    /* renamed from: f, reason: collision with root package name */
    private final String f11693f;

    /* JADX INFO: Access modifiers changed from: protected */
    public zza(IBinder iBinder, String str) {
        this.f11692e = iBinder;
        this.f11693f = str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f11692e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel obtainAndWriteInterfaceToken() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f11693f);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel transactAndReadException(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f11692e.transact(i2, parcel, obtain, 0);
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
    public final void transactAndReadExceptionReturnVoid(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f11692e.transact(i2, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void transactOneway(int i2, Parcel parcel) {
        try {
            this.f11692e.transact(i2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}

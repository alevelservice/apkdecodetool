package com.google.android.gms.internal.base;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public class zab implements IInterface {

    /* renamed from: e, reason: collision with root package name */
    private final IBinder f11350e;

    /* renamed from: f, reason: collision with root package name */
    private final String f11351f;

    /* JADX INFO: Access modifiers changed from: protected */
    public zab(IBinder iBinder, String str) {
        this.f11350e = iBinder;
        this.f11351f = str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f11350e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel zaa() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f11351f);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zab(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f11350e.transact(i2, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zac(int i2, Parcel parcel) {
        try {
            this.f11350e.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel zaa(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f11350e.transact(i2, parcel, obtain, 0);
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

package com.google.android.gms.internal.common;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
public class zzb implements IInterface {

    /* renamed from: e, reason: collision with root package name */
    private final IBinder f11678e;

    /* renamed from: f, reason: collision with root package name */
    private final String f11679f;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzb(IBinder iBinder, String str) {
        this.f11678e = iBinder;
        this.f11679f = str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f11678e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel zza() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f11679f);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzb(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f11678e.transact(i2, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzc(int i2, Parcel parcel) {
        try {
            this.f11678e.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel zza(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f11678e.transact(i2, parcel, obtain, 0);
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

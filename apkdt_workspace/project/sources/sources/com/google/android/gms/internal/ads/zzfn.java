package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public class zzfn implements IInterface {

    /* renamed from: e, reason: collision with root package name */
    private final IBinder f11186e;

    /* renamed from: f, reason: collision with root package name */
    private final String f11187f;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzfn(IBinder iBinder, String str) {
        this.f11186e = iBinder;
        this.f11187f = str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f11186e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel obtainAndWriteInterfaceToken() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f11187f);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel transactAndReadException(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f11186e.transact(i2, parcel, obtain, 0);
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
            this.f11186e.transact(i2, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzb(int i2, Parcel parcel) {
        try {
            this.f11186e.transact(i2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}

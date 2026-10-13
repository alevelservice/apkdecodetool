package com.google.android.gms.internal.vision;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public class zzb implements IInterface {

    /* renamed from: e, reason: collision with root package name */
    private final IBinder f12632e;

    /* renamed from: f, reason: collision with root package name */
    private final String f12633f;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzb(IBinder iBinder, String str) {
        this.f12632e = iBinder;
        this.f12633f = str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f12632e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel obtainAndWriteInterfaceToken() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f12633f);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel zza(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f12632e.transact(i2, parcel, obtain, 0);
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
    public final void zzb(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f12632e.transact(i2, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}

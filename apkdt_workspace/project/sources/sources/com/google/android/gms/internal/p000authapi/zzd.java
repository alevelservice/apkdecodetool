package com.google.android.gms.internal.p000authapi;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public class zzd implements IInterface {

    /* renamed from: e, reason: collision with root package name */
    private final IBinder f11320e;

    /* renamed from: f, reason: collision with root package name */
    private final String f11321f;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzd(IBinder iBinder, String str) {
        this.f11320e = iBinder;
        this.f11321f = str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f11320e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel obtainAndWriteInterfaceToken() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f11321f);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void transactAndReadExceptionReturnVoid(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f11320e.transact(i2, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}

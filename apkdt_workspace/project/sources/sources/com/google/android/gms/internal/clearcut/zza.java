package com.google.android.gms.internal.clearcut;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public class zza implements IInterface {

    /* renamed from: e, reason: collision with root package name */
    private final IBinder f11665e;

    /* renamed from: f, reason: collision with root package name */
    private final String f11666f;

    /* JADX INFO: Access modifiers changed from: protected */
    public zza(IBinder iBinder, String str) {
        this.f11665e = iBinder;
        this.f11666f = str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f11665e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel obtainAndWriteInterfaceToken() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f11666f);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void transactOneway(int i2, Parcel parcel) {
        try {
            this.f11665e.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}

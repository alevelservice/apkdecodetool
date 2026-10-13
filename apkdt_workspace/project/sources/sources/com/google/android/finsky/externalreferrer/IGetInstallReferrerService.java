package com.google.android.finsky.externalreferrer;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IGetInstallReferrerService extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IGetInstallReferrerService {
        static final int TRANSACTION_getInstallReferrer = 1;

        /* loaded from: classes.dex */
        private static class Proxy implements IGetInstallReferrerService {

            /* renamed from: e, reason: collision with root package name */
            private IBinder f4453e;

            Proxy(IBinder iBinder) {
                this.f4453e = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4453e;
            }

            @Override // com.google.android.finsky.externalreferrer.IGetInstallReferrerService
            public Bundle getInstallReferrer(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4453e.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return "com.google.android.finsky.externalreferrer.IGetInstallReferrerService";
            }
        }

        public Stub() {
            attachInterface(this, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
        }

        public static IGetInstallReferrerService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IGetInstallReferrerService)) {
                return (IGetInstallReferrerService) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 != 1) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
                return true;
            }
            parcel.enforceInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            Bundle installReferrer = getInstallReferrer(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            if (installReferrer != null) {
                parcel2.writeInt(1);
                installReferrer.writeToParcel(parcel2, 1);
            } else {
                parcel2.writeInt(0);
            }
            return true;
        }
    }

    Bundle getInstallReferrer(Bundle bundle);
}

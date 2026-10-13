package android.support.customtabs.trusted;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface ITrustedWebActivityService extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ITrustedWebActivityService {
        static final int TRANSACTION_areNotificationsEnabled = 6;
        static final int TRANSACTION_cancelNotification = 3;
        static final int TRANSACTION_getActiveNotifications = 5;
        static final int TRANSACTION_getSmallIconBitmap = 7;
        static final int TRANSACTION_getSmallIconId = 4;
        static final int TRANSACTION_notifyNotificationWithChannel = 2;

        /* loaded from: classes.dex */
        private static class Proxy implements ITrustedWebActivityService {

            /* renamed from: e, reason: collision with root package name */
            private IBinder f553e;

            Proxy(IBinder iBinder) {
                this.f553e = iBinder;
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public Bundle areNotificationsEnabled(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.trusted.ITrustedWebActivityService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f553e.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f553e;
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public void cancelNotification(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.trusted.ITrustedWebActivityService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f553e.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public Bundle getActiveNotifications() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.trusted.ITrustedWebActivityService");
                    this.f553e.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return "android.support.customtabs.trusted.ITrustedWebActivityService";
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public Bundle getSmallIconBitmap() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.trusted.ITrustedWebActivityService");
                    this.f553e.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public int getSmallIconId() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.trusted.ITrustedWebActivityService");
                    this.f553e.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public Bundle notifyNotificationWithChannel(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.trusted.ITrustedWebActivityService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f553e.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "android.support.customtabs.trusted.ITrustedWebActivityService");
        }

        public static ITrustedWebActivityService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof ITrustedWebActivityService)) {
                return (ITrustedWebActivityService) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 != 1598968902) {
                switch (i2) {
                    case 2:
                        parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                        Bundle notifyNotificationWithChannel = notifyNotificationWithChannel(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        if (notifyNotificationWithChannel != null) {
                            parcel2.writeInt(1);
                            notifyNotificationWithChannel.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 3:
                        parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                        cancelNotification(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                        int smallIconId = getSmallIconId();
                        parcel2.writeNoException();
                        parcel2.writeInt(smallIconId);
                        return true;
                    case 5:
                        parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                        Bundle activeNotifications = getActiveNotifications();
                        parcel2.writeNoException();
                        if (activeNotifications != null) {
                            parcel2.writeInt(1);
                            activeNotifications.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 6:
                        parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                        Bundle areNotificationsEnabled = areNotificationsEnabled(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        if (areNotificationsEnabled != null) {
                            parcel2.writeInt(1);
                            areNotificationsEnabled.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 7:
                        parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                        Bundle smallIconBitmap = getSmallIconBitmap();
                        parcel2.writeNoException();
                        if (smallIconBitmap != null) {
                            parcel2.writeInt(1);
                            smallIconBitmap.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    default:
                        return super.onTransact(i2, parcel, parcel2, i3);
                }
            }
            parcel2.writeString("android.support.customtabs.trusted.ITrustedWebActivityService");
            return true;
        }
    }

    Bundle areNotificationsEnabled(Bundle bundle);

    void cancelNotification(Bundle bundle);

    Bundle getActiveNotifications();

    Bundle getSmallIconBitmap();

    int getSmallIconId();

    Bundle notifyNotificationWithChannel(Bundle bundle);
}

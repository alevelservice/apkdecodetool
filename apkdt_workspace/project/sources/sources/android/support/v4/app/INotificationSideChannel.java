package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface INotificationSideChannel extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements INotificationSideChannel {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void cancel(String str, int i2, String str2) {
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void cancelAll(String str) {
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void notify(String str, int i2, String str2, Notification notification) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements INotificationSideChannel {
        static final int TRANSACTION_cancel = 2;
        static final int TRANSACTION_cancelAll = 3;
        static final int TRANSACTION_notify = 1;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements INotificationSideChannel {
            public static INotificationSideChannel sDefaultImpl;

            /* renamed from: e, reason: collision with root package name */
            private IBinder f554e;

            Proxy(IBinder iBinder) {
                this.f554e = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f554e;
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public void cancel(String str, int i2, String str2) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    obtain.writeString(str2);
                    if (this.f554e.transact(2, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().cancel(str, i2, str2);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public void cancelAll(String str) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
                    obtain.writeString(str);
                    if (this.f554e.transact(3, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().cancelAll(str);
                } finally {
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return "android.support.v4.app.INotificationSideChannel";
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public void notify(String str, int i2, String str2, Notification notification) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    obtain.writeString(str2);
                    if (notification != null) {
                        obtain.writeInt(1);
                        notification.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f554e.transact(1, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().notify(str, i2, str2, notification);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "android.support.v4.app.INotificationSideChannel");
        }

        public static INotificationSideChannel asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.app.INotificationSideChannel");
            if (queryLocalInterface != null && (queryLocalInterface instanceof INotificationSideChannel)) {
                return (INotificationSideChannel) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        public static INotificationSideChannel getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(INotificationSideChannel iNotificationSideChannel) {
            if (Proxy.sDefaultImpl != null || iNotificationSideChannel == null) {
                return false;
            }
            Proxy.sDefaultImpl = iNotificationSideChannel;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                notify(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Notification) Notification.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                cancel(parcel.readString(), parcel.readInt(), parcel.readString());
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                cancelAll(parcel.readString());
                return true;
            }
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel2.writeString("android.support.v4.app.INotificationSideChannel");
            return true;
        }
    }

    void cancel(String str, int i2, String str2);

    void cancelAll(String str);

    void notify(String str, int i2, String str2, Notification notification);
}

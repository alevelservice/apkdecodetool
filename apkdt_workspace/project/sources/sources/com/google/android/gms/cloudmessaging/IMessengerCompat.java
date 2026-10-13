package com.google.android.gms.cloudmessaging;

import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Parcel;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* loaded from: classes.dex */
interface IMessengerCompat extends IInterface {
    public static final String DESCRIPTOR = "com.google.android.gms.iid.IMessengerCompat";
    public static final int TRANSACTION_SEND = 1;

    /* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
    /* loaded from: classes.dex */
    public static class Impl extends Binder implements IMessengerCompat {
        @Override // android.os.IInterface
        @NonNull
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, @NonNull Parcel parcel, @Nullable Parcel parcel2, int i3) {
            parcel.enforceInterface(getInterfaceDescriptor());
            if (i2 != 1) {
                return false;
            }
            send(parcel.readInt() != 0 ? (Message) Message.CREATOR.createFromParcel(parcel) : null);
            return true;
        }

        @Override // com.google.android.gms.cloudmessaging.IMessengerCompat
        public void send(@NonNull Message message) {
            message.arg2 = Binder.getCallingUid();
            Handler handler = null;
            handler.dispatchMessage(message);
        }
    }

    /* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
    /* loaded from: classes.dex */
    public static class Proxy implements IMessengerCompat {

        /* renamed from: e, reason: collision with root package name */
        private final IBinder f4915e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Proxy(@NonNull IBinder iBinder) {
            this.f4915e = iBinder;
        }

        @Override // android.os.IInterface
        @NonNull
        public IBinder asBinder() {
            return this.f4915e;
        }

        @Override // com.google.android.gms.cloudmessaging.IMessengerCompat
        public void send(@NonNull Message message) {
            Parcel obtain = Parcel.obtain();
            obtain.writeInterfaceToken(IMessengerCompat.DESCRIPTOR);
            obtain.writeInt(1);
            message.writeToParcel(obtain, 0);
            try {
                this.f4915e.transact(1, obtain, null, 1);
            } finally {
                obtain.recycle();
            }
        }
    }

    void send(@NonNull Message message);
}

package androidx.test.runner.internal.deps.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class BaseStub extends Binder implements IInterface {

    /* renamed from: e, reason: collision with root package name */
    private static TransactionInterceptor f2892e;

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseStub(String str) {
        attachInterface(this, str);
    }

    static synchronized void installTransactionInterceptorPackagePrivate(TransactionInterceptor transactionInterceptor) {
        synchronized (BaseStub.class) {
            try {
                if (transactionInterceptor != null) {
                    if (f2892e == null) {
                        f2892e = transactionInterceptor;
                    } else {
                        throw new IllegalStateException("Duplicate TransactionInterceptor installation.");
                    }
                } else {
                    throw new IllegalArgumentException("null interceptor");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    protected boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        return false;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (routeToSuperOrEnforceInterface(i2, parcel, parcel2, i3)) {
            return true;
        }
        TransactionInterceptor transactionInterceptor = f2892e;
        if (transactionInterceptor == null) {
            return dispatchTransaction(i2, parcel, parcel2, i3);
        }
        return transactionInterceptor.a(this, i2, parcel, parcel2, i3);
    }

    protected boolean routeToSuperOrEnforceInterface(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 > 16777215) {
            return super.onTransact(i2, parcel, parcel2, i3);
        }
        parcel.enforceInterface(getInterfaceDescriptor());
        return false;
    }
}

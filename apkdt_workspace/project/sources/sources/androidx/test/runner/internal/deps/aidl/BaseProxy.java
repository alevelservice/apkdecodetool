package androidx.test.runner.internal.deps.aidl;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class BaseProxy implements IInterface {

    /* renamed from: e, reason: collision with root package name */
    private final IBinder f2890e;

    /* renamed from: f, reason: collision with root package name */
    private final String f2891f;

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseProxy(IBinder iBinder, String str) {
        this.f2890e = iBinder;
        this.f2891f = str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f2890e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Parcel obtainAndWriteInterfaceToken() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f2891f);
        return obtain;
    }

    protected Parcel transactAndReadException(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f2890e.transact(i2, parcel, obtain, 0);
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
    public void transactAndReadExceptionReturnVoid(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f2890e.transact(i2, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    protected void transactOneway(int i2, Parcel parcel) {
        try {
            this.f2890e.transact(i2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}

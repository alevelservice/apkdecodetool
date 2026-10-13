package android.support.v4.os;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.os.IResultReceiver;
import androidx.annotation.RestrictTo;

@SuppressLint({"BanParcelableUsage"})
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    final boolean f699e = false;

    /* renamed from: f, reason: collision with root package name */
    final Handler f700f = null;

    /* renamed from: g, reason: collision with root package name */
    IResultReceiver f701g;

    /* loaded from: classes.dex */
    class MyResultReceiver extends IResultReceiver.Stub {
        MyResultReceiver() {
        }

        @Override // android.support.v4.os.IResultReceiver
        public void send(int i2, Bundle bundle) {
            ResultReceiver resultReceiver = ResultReceiver.this;
            Handler handler = resultReceiver.f700f;
            if (handler != null) {
                handler.post(new b(i2, bundle));
            } else {
                resultReceiver.a(i2, bundle);
            }
        }
    }

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<ResultReceiver> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResultReceiver createFromParcel(Parcel parcel) {
            return new ResultReceiver(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResultReceiver[] newArray(int i2) {
            return new ResultReceiver[i2];
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final int f702e;

        /* renamed from: f, reason: collision with root package name */
        final Bundle f703f;

        b(int i2, Bundle bundle) {
            this.f702e = i2;
            this.f703f = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            ResultReceiver.this.a(this.f702e, this.f703f);
        }
    }

    ResultReceiver(Parcel parcel) {
        this.f701g = IResultReceiver.Stub.asInterface(parcel.readStrongBinder());
    }

    protected void a(int i2, Bundle bundle) {
    }

    public void b(int i2, Bundle bundle) {
        if (this.f699e) {
            Handler handler = this.f700f;
            if (handler != null) {
                handler.post(new b(i2, bundle));
                return;
            } else {
                a(i2, bundle);
                return;
            }
        }
        IResultReceiver iResultReceiver = this.f701g;
        if (iResultReceiver != null) {
            try {
                iResultReceiver.send(i2, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        synchronized (this) {
            if (this.f701g == null) {
                this.f701g = new MyResultReceiver();
            }
            parcel.writeStrongBinder(this.f701g.asBinder());
        }
    }
}

package androidx.test.internal.util;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ParcelableIBinder implements Parcelable {
    public static final Parcelable.Creator<ParcelableIBinder> CREATOR = new Parcelable.Creator<ParcelableIBinder>() { // from class: androidx.test.internal.util.ParcelableIBinder.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableIBinder createFromParcel(Parcel parcel) {
            return new ParcelableIBinder(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableIBinder[] newArray(int i2) {
            return new ParcelableIBinder[i2];
        }
    };

    /* renamed from: e, reason: collision with root package name */
    private final IBinder f2883e;

    protected ParcelableIBinder(Parcel parcel) {
        this.f2883e = parcel.readStrongBinder();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStrongBinder(this.f2883e);
    }
}

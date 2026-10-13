package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* loaded from: classes.dex */
public class ObservableLong extends b implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableLong> CREATOR = new a();
    static final long serialVersionUID = 1;
    private long mValue;

    /* loaded from: classes.dex */
    static class a implements Parcelable.Creator<ObservableLong> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableLong createFromParcel(Parcel parcel) {
            return new ObservableLong(parcel.readLong());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableLong[] newArray(int i2) {
            return new ObservableLong[i2];
        }
    }

    public ObservableLong(long j2) {
        this.mValue = j2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long get() {
        return this.mValue;
    }

    public void set(long j2) {
        if (j2 != this.mValue) {
            this.mValue = j2;
            notifyChange();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.mValue);
    }

    public ObservableLong() {
    }

    public ObservableLong(i... iVarArr) {
        super(iVarArr);
    }
}

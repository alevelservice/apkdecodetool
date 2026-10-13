package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* loaded from: classes.dex */
public class ObservableByte extends b implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableByte> CREATOR = new a();
    static final long serialVersionUID = 1;
    private byte mValue;

    /* loaded from: classes.dex */
    static class a implements Parcelable.Creator<ObservableByte> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableByte createFromParcel(Parcel parcel) {
            return new ObservableByte(parcel.readByte());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableByte[] newArray(int i2) {
            return new ObservableByte[i2];
        }
    }

    public ObservableByte(byte b2) {
        this.mValue = b2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public byte get() {
        return this.mValue;
    }

    public void set(byte b2) {
        if (b2 != this.mValue) {
            this.mValue = b2;
            notifyChange();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeByte(this.mValue);
    }

    public ObservableByte() {
    }

    public ObservableByte(i... iVarArr) {
        super(iVarArr);
    }
}

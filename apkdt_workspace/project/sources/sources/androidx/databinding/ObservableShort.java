package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* loaded from: classes.dex */
public class ObservableShort extends b implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableShort> CREATOR = new a();
    static final long serialVersionUID = 1;
    private short mValue;

    /* loaded from: classes.dex */
    static class a implements Parcelable.Creator<ObservableShort> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableShort createFromParcel(Parcel parcel) {
            return new ObservableShort((short) parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableShort[] newArray(int i2) {
            return new ObservableShort[i2];
        }
    }

    public ObservableShort(short s) {
        this.mValue = s;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public short get() {
        return this.mValue;
    }

    public void set(short s) {
        if (s != this.mValue) {
            this.mValue = s;
            notifyChange();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mValue);
    }

    public ObservableShort() {
    }

    public ObservableShort(i... iVarArr) {
        super(iVarArr);
    }
}

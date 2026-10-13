package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* loaded from: classes.dex */
public class ObservableParcelable<T extends Parcelable> extends j<T> implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableParcelable> CREATOR = new a();
    static final long serialVersionUID = 1;

    /* loaded from: classes.dex */
    static class a implements Parcelable.Creator<ObservableParcelable> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableParcelable createFromParcel(Parcel parcel) {
            return new ObservableParcelable(parcel.readParcelable(a.class.getClassLoader()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableParcelable[] newArray(int i2) {
            return new ObservableParcelable[i2];
        }
    }

    public ObservableParcelable(T t) {
        super(t);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable((Parcelable) get(), 0);
    }

    public ObservableParcelable() {
    }
}

package androidx.test.orchestrator.junit;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ParcelableFailure implements Parcelable {
    public static final Parcelable.Creator<ParcelableFailure> CREATOR = new Parcelable.Creator<ParcelableFailure>() { // from class: androidx.test.orchestrator.junit.ParcelableFailure.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableFailure createFromParcel(Parcel parcel) {
            return new ParcelableFailure(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableFailure[] newArray(int i2) {
            return new ParcelableFailure[i2];
        }
    };

    /* renamed from: e, reason: collision with root package name */
    private final ParcelableDescription f2887e;

    /* renamed from: f, reason: collision with root package name */
    private final String f2888f;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.f2887e, 0);
        parcel.writeString(this.f2888f);
    }

    private ParcelableFailure(Parcel parcel) {
        this.f2887e = (ParcelableDescription) parcel.readParcelable(ParcelableDescription.class.getClassLoader());
        this.f2888f = parcel.readString();
    }
}

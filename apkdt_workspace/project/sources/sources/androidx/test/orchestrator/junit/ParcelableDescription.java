package androidx.test.orchestrator.junit;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ParcelableDescription implements Parcelable {
    public static final Parcelable.Creator<ParcelableDescription> CREATOR = new Parcelable.Creator<ParcelableDescription>() { // from class: androidx.test.orchestrator.junit.ParcelableDescription.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableDescription createFromParcel(Parcel parcel) {
            return new ParcelableDescription(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableDescription[] newArray(int i2) {
            return new ParcelableDescription[i2];
        }
    };

    /* renamed from: e, reason: collision with root package name */
    private final String f2884e;

    /* renamed from: f, reason: collision with root package name */
    private final String f2885f;

    /* renamed from: g, reason: collision with root package name */
    private final String f2886g;

    private String a(Parcel parcel) {
        String readString = parcel.readString();
        return readString == null ? "" : readString;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f2884e);
        parcel.writeString(this.f2885f);
        parcel.writeString(this.f2886g);
    }

    private ParcelableDescription(Parcel parcel) {
        this.f2884e = a(parcel);
        this.f2885f = a(parcel);
        this.f2886g = a(parcel);
    }
}

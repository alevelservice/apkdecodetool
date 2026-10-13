package androidx.test.orchestrator.junit;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class ParcelableResult implements Parcelable {
    public static final Parcelable.Creator<ParcelableResult> CREATOR = new Parcelable.Creator<ParcelableResult>() { // from class: androidx.test.orchestrator.junit.ParcelableResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableResult createFromParcel(Parcel parcel) {
            return new ParcelableResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableResult[] newArray(int i2) {
            return new ParcelableResult[i2];
        }
    };

    /* renamed from: e, reason: collision with root package name */
    private final List<ParcelableFailure> f2889e;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeArray(this.f2889e.toArray());
    }

    private ParcelableResult(Parcel parcel) {
        this.f2889e = new ArrayList();
        for (Object obj : parcel.readArray(ParcelableFailure[].class.getClassLoader())) {
            this.f2889e.add((ParcelableFailure) obj);
        }
    }
}

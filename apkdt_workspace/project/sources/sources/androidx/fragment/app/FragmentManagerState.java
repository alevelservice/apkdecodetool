package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    ArrayList<FragmentState> f2152e;

    /* renamed from: f, reason: collision with root package name */
    ArrayList<String> f2153f;

    /* renamed from: g, reason: collision with root package name */
    BackStackState[] f2154g;

    /* renamed from: h, reason: collision with root package name */
    String f2155h;

    /* renamed from: i, reason: collision with root package name */
    int f2156i;

    /* loaded from: classes.dex */
    static class a implements Parcelable.Creator<FragmentManagerState> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FragmentManagerState createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FragmentManagerState[] newArray(int i2) {
            return new FragmentManagerState[i2];
        }
    }

    public FragmentManagerState() {
        this.f2155h = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeTypedList(this.f2152e);
        parcel.writeStringList(this.f2153f);
        parcel.writeTypedArray(this.f2154g, i2);
        parcel.writeString(this.f2155h);
        parcel.writeInt(this.f2156i);
    }

    public FragmentManagerState(Parcel parcel) {
        this.f2155h = null;
        this.f2152e = parcel.createTypedArrayList(FragmentState.CREATOR);
        this.f2153f = parcel.createStringArrayList();
        this.f2154g = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.f2155h = parcel.readString();
        this.f2156i = parcel.readInt();
    }
}

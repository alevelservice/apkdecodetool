package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    public int f670e;

    /* renamed from: f, reason: collision with root package name */
    public int f671f;

    /* renamed from: g, reason: collision with root package name */
    public int f672g;

    /* renamed from: h, reason: collision with root package name */
    public int f673h;

    /* renamed from: i, reason: collision with root package name */
    public int f674i;

    /* loaded from: classes.dex */
    static class a implements Parcelable.Creator<ParcelableVolumeInfo> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableVolumeInfo[] newArray(int i2) {
            return new ParcelableVolumeInfo[i2];
        }
    }

    public ParcelableVolumeInfo(int i2, int i3, int i4, int i5, int i6) {
        this.f670e = i2;
        this.f671f = i3;
        this.f672g = i4;
        this.f673h = i5;
        this.f674i = i6;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f670e);
        parcel.writeInt(this.f672g);
        parcel.writeInt(this.f673h);
        parcel.writeInt(this.f674i);
        parcel.writeInt(this.f671f);
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f670e = parcel.readInt();
        this.f672g = parcel.readInt();
        this.f673h = parcel.readInt();
        this.f674i = parcel.readInt();
        this.f671f = parcel.readInt();
    }
}

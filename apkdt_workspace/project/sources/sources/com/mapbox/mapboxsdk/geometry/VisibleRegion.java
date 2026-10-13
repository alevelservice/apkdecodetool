package com.mapbox.mapboxsdk.geometry;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public class VisibleRegion implements Parcelable {
    public static final Parcelable.Creator<VisibleRegion> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    public final LatLng f15758e;

    /* renamed from: f, reason: collision with root package name */
    public final LatLng f15759f;

    /* renamed from: g, reason: collision with root package name */
    public final LatLng f15760g;

    /* renamed from: h, reason: collision with root package name */
    public final LatLng f15761h;

    /* renamed from: i, reason: collision with root package name */
    public final LatLngBounds f15762i;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<VisibleRegion> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VisibleRegion createFromParcel(@NonNull Parcel parcel) {
            return new VisibleRegion(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VisibleRegion[] newArray(int i2) {
            return new VisibleRegion[i2];
        }
    }

    /* synthetic */ VisibleRegion(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof VisibleRegion)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        VisibleRegion visibleRegion = (VisibleRegion) obj;
        return this.f15758e.equals(visibleRegion.f15758e) && this.f15759f.equals(visibleRegion.f15759f) && this.f15760g.equals(visibleRegion.f15760g) && this.f15761h.equals(visibleRegion.f15761h) && this.f15762i.equals(visibleRegion.f15762i);
    }

    public int hashCode() {
        return this.f15758e.hashCode() + 90 + ((this.f15759f.hashCode() + 90) * 1000) + ((this.f15760g.hashCode() + 180) * 1000000) + ((this.f15761h.hashCode() + 180) * 1000000000);
    }

    @NonNull
    public String toString() {
        return "[farLeft [" + this.f15758e + "], farRight [" + this.f15759f + "], nearLeft [" + this.f15760g + "], nearRight [" + this.f15761h + "], latLngBounds [" + this.f15762i + "]]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        parcel.writeParcelable(this.f15758e, i2);
        parcel.writeParcelable(this.f15759f, i2);
        parcel.writeParcelable(this.f15760g, i2);
        parcel.writeParcelable(this.f15761h, i2);
        parcel.writeParcelable(this.f15762i, i2);
    }

    private VisibleRegion(Parcel parcel) {
        this.f15758e = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
        this.f15759f = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
        this.f15760g = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
        this.f15761h = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
        this.f15762i = (LatLngBounds) parcel.readParcelable(LatLngBounds.class.getClassLoader());
    }

    public VisibleRegion(LatLng latLng, LatLng latLng2, LatLng latLng3, LatLng latLng4, LatLngBounds latLngBounds) {
        this.f15758e = latLng;
        this.f15759f = latLng2;
        this.f15760g = latLng3;
        this.f15761h = latLng4;
        this.f15762i = latLngBounds;
    }
}

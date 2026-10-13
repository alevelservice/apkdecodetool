package com.mapbox.mapboxsdk.geometry;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public class LatLngSpan implements Parcelable {
    public static final Parcelable.Creator<LatLngSpan> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    private double f15754e;

    /* renamed from: f, reason: collision with root package name */
    private double f15755f;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<LatLngSpan> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LatLngSpan createFromParcel(@NonNull Parcel parcel) {
            return new LatLngSpan(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LatLngSpan[] newArray(int i2) {
            return new LatLngSpan[i2];
        }
    }

    /* synthetic */ LatLngSpan(Parcel parcel, a aVar) {
        this(parcel);
    }

    public double a() {
        return this.f15754e;
    }

    public double b() {
        return this.f15755f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LatLngSpan)) {
            return false;
        }
        LatLngSpan latLngSpan = (LatLngSpan) obj;
        return this.f15755f == latLngSpan.b() && this.f15754e == latLngSpan.a();
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f15754e);
        int i2 = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        long doubleToLongBits2 = Double.doubleToLongBits(this.f15755f);
        return (i2 * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        parcel.writeDouble(this.f15754e);
        parcel.writeDouble(this.f15755f);
    }

    private LatLngSpan(@NonNull Parcel parcel) {
        this.f15754e = parcel.readDouble();
        this.f15755f = parcel.readDouble();
    }
}

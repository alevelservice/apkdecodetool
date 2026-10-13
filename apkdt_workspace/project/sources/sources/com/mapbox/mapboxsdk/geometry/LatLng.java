package com.mapbox.mapboxsdk.geometry;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.FloatRange;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.geojson.Point;
import com.mapbox.turf.b;

/* loaded from: classes2.dex */
public class LatLng implements Parcelable {
    public static final Parcelable.Creator<LatLng> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    private double f15752e;

    @Keep
    private double latitude;

    @Keep
    private double longitude;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<LatLng> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LatLng createFromParcel(@NonNull Parcel parcel) {
            return new LatLng(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LatLng[] newArray(int i2) {
            return new LatLng[i2];
        }
    }

    public LatLng() {
        this.f15752e = 0.0d;
        this.latitude = 0.0d;
        this.longitude = 0.0d;
    }

    public double a() {
        return this.latitude;
    }

    public void b(@FloatRange(from = -90.0d, to = 90.0d) double d2) {
        if (Double.isNaN(d2)) {
            throw new IllegalArgumentException("latitude must not be NaN");
        }
        if (Math.abs(d2) <= 90.0d) {
            this.latitude = d2;
            return;
        }
        throw new IllegalArgumentException("latitude must be between -90 and 90");
    }

    public void c(@FloatRange(from = -1.7976931348623157E308d, to = Double.MAX_VALUE) double d2) {
        if (!Double.isNaN(d2)) {
            if (!Double.isInfinite(d2)) {
                this.longitude = d2;
                return;
            }
            throw new IllegalArgumentException("longitude must not be infinite");
        }
        throw new IllegalArgumentException("longitude must not be NaN");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LatLng.class != obj.getClass()) {
            return false;
        }
        LatLng latLng = (LatLng) obj;
        return Double.compare(latLng.f15752e, this.f15752e) == 0 && Double.compare(latLng.latitude, this.latitude) == 0 && Double.compare(latLng.longitude, this.longitude) == 0;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.latitude);
        long doubleToLongBits2 = Double.doubleToLongBits(this.longitude);
        int i2 = (((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
        long doubleToLongBits3 = Double.doubleToLongBits(this.f15752e);
        return (i2 * 31) + ((int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32)));
    }

    @NonNull
    public String toString() {
        return "LatLng [latitude=" + this.latitude + ", longitude=" + this.longitude + ", altitude=" + this.f15752e + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        parcel.writeDouble(this.latitude);
        parcel.writeDouble(this.longitude);
        parcel.writeDouble(this.f15752e);
    }

    public void a(double d2) {
        this.f15752e = d2;
    }

    public double a(@NonNull LatLng latLng) {
        return b.a(Point.fromLngLat(this.longitude, this.latitude), Point.fromLngLat(latLng.b(), latLng.a()), "metres");
    }

    @Keep
    public LatLng(double d2, double d3) {
        this.f15752e = 0.0d;
        b(d2);
        c(d3);
    }

    public double b() {
        return this.longitude;
    }

    public LatLng(double d2, double d3, double d4) {
        this.f15752e = 0.0d;
        b(d2);
        c(d3);
        a(d4);
    }

    public LatLng(Location location) {
        this(location.getLatitude(), location.getLongitude(), location.getAltitude());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public LatLng(Parcel parcel) {
        this.f15752e = 0.0d;
        b(parcel.readDouble());
        c(parcel.readDouble());
        a(parcel.readDouble());
    }
}

package com.mapbox.mapboxsdk.geometry;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.FloatRange;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.r.c;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class LatLngBounds implements Parcelable {
    public static final Parcelable.Creator<LatLngBounds> CREATOR = new a();

    @Keep
    private final double latitudeNorth;

    @Keep
    private final double latitudeSouth;

    @Keep
    private final double longitudeEast;

    @Keep
    private final double longitudeWest;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<LatLngBounds> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LatLngBounds createFromParcel(@NonNull Parcel parcel) {
            return LatLngBounds.b(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LatLngBounds[] newArray(int i2) {
            return new LatLngBounds[i2];
        }
    }

    @Keep
    LatLngBounds(double d2, double d3, double d4, double d5) {
        this.latitudeNorth = d2;
        this.longitudeEast = d3;
        this.latitudeSouth = d4;
        this.longitudeWest = d5;
    }

    public double b() {
        return this.latitudeSouth;
    }

    public double c() {
        return this.longitudeEast;
    }

    public double d() {
        return this.longitudeWest;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LatLngBounds)) {
            return false;
        }
        LatLngBounds latLngBounds = (LatLngBounds) obj;
        return this.latitudeNorth == latLngBounds.a() && this.latitudeSouth == latLngBounds.b() && this.longitudeEast == latLngBounds.c() && this.longitudeWest == latLngBounds.d();
    }

    public int hashCode() {
        return (int) (this.latitudeNorth + 90.0d + ((this.latitudeSouth + 90.0d) * 1000.0d) + ((this.longitudeEast + 180.0d) * 1000000.0d) + ((this.longitudeWest + 180.0d) * 1.0E9d));
    }

    @NonNull
    public String toString() {
        return "N:" + this.latitudeNorth + "; E:" + this.longitudeEast + "; S:" + this.latitudeSouth + "; W:" + this.longitudeWest;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        parcel.writeDouble(this.latitudeNorth);
        parcel.writeDouble(this.longitudeEast);
        parcel.writeDouble(this.latitudeSouth);
        parcel.writeDouble(this.longitudeWest);
    }

    public static LatLngBounds b(@FloatRange(from = -90.0d, to = 90.0d) double d2, double d3, @FloatRange(from = -90.0d, to = 90.0d) double d4, double d5) {
        a(d2, d3, d4, d5);
        return new LatLngBounds(d2, d3, d4, d5);
    }

    public double a() {
        return this.latitudeNorth;
    }

    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private final List<LatLng> f15753a = new ArrayList();

        public LatLngBounds a() {
            if (this.f15753a.size() >= 2) {
                return LatLngBounds.a(this.f15753a);
            }
            throw new c(this.f15753a.size());
        }

        @NonNull
        public b a(@NonNull List<LatLng> list) {
            this.f15753a.addAll(list);
            return this;
        }

        @NonNull
        public b a(@NonNull LatLng latLng) {
            this.f15753a.add(latLng);
            return this;
        }
    }

    static LatLngBounds a(List<? extends LatLng> list) {
        double d2 = Double.MAX_VALUE;
        double d3 = 90.0d;
        double d4 = -90.0d;
        double d5 = -1.7976931348623157E308d;
        for (LatLng latLng : list) {
            double a2 = latLng.a();
            double b2 = latLng.b();
            d3 = Math.min(d3, a2);
            d2 = Math.min(d2, b2);
            d4 = Math.max(d4, a2);
            d5 = Math.max(d5, b2);
        }
        return new LatLngBounds(d4, d5, d3, d2);
    }

    private static double b(int i2, int i3) {
        double d2 = i3;
        double pow = Math.pow(2.0d, i2);
        Double.isNaN(d2);
        return ((d2 / pow) * 360.0d) - 180.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static LatLngBounds b(Parcel parcel) {
        return new LatLngBounds(parcel.readDouble(), parcel.readDouble(), parcel.readDouble(), parcel.readDouble());
    }

    private static void a(@FloatRange(from = -90.0d, to = 90.0d) double d2, double d3, @FloatRange(from = -90.0d, to = 90.0d) double d4, double d5) {
        if (!Double.isNaN(d2) && !Double.isNaN(d4)) {
            if (!Double.isNaN(d3) && !Double.isNaN(d5)) {
                if (Double.isInfinite(d3) || Double.isInfinite(d5)) {
                    throw new IllegalArgumentException("longitude must not be infinite");
                }
                if (d2 > 90.0d || d2 < -90.0d || d4 > 90.0d || d4 < -90.0d) {
                    throw new IllegalArgumentException("latitude must be between -90 and 90");
                }
                if (d2 < d4) {
                    throw new IllegalArgumentException("latNorth cannot be less than latSouth");
                }
                if (d3 < d5) {
                    throw new IllegalArgumentException("lonEast cannot be less than lonWest");
                }
                return;
            }
            throw new IllegalArgumentException("longitude must not be NaN");
        }
        throw new IllegalArgumentException("latitude must not be NaN");
    }

    private static double a(int i2, int i3) {
        double d2 = i3;
        Double.isNaN(d2);
        double pow = 3.141592653589793d - ((d2 * 6.283185307179586d) / Math.pow(2.0d, i2));
        return Math.toDegrees(Math.atan((Math.exp(pow) - Math.exp(-pow)) * 0.5d));
    }

    public static LatLngBounds a(int i2, int i3, int i4) {
        return new LatLngBounds(a(i2, i4), b(i2, i3 + 1), a(i2, i4 + 1), b(i2, i3));
    }
}

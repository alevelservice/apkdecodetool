package com.mapbox.mapboxsdk.camera;

import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.FloatRange;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import com.mapbox.mapboxsdk.camera.b;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.o;
import com.mapbox.mapboxsdk.utils.f;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class CameraPosition implements Parcelable {

    @Keep
    public final double bearing;

    @Keep
    public final double[] padding;

    @Keep
    public final LatLng target;

    @Keep
    public final double tilt;

    @Keep
    public final double zoom;

    /* renamed from: e, reason: collision with root package name */
    public static final CameraPosition f15732e = new CameraPosition(new LatLng(), 0.0d, 0.0d, 0.0d, new double[]{0.0d, 0.0d, 0.0d, 0.0d});
    public static final Parcelable.Creator<CameraPosition> CREATOR = new a();

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<CameraPosition> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CameraPosition createFromParcel(Parcel parcel) {
            double[] dArr;
            double readDouble = parcel.readDouble();
            LatLng latLng = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
            double readDouble2 = parcel.readDouble();
            double readDouble3 = parcel.readDouble();
            int readInt = parcel.readInt();
            if (readInt > 0) {
                dArr = new double[readInt];
                for (int i2 = 0; i2 < readInt; i2++) {
                    dArr[i2] = parcel.readDouble();
                }
            } else {
                dArr = null;
            }
            return new CameraPosition(latLng, readDouble3, readDouble2, readDouble, dArr);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CameraPosition[] newArray(int i2) {
            return new CameraPosition[i2];
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private double f15733a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        private LatLng f15734b;

        /* renamed from: c, reason: collision with root package name */
        private double f15735c;

        /* renamed from: d, reason: collision with root package name */
        private double f15736d;

        /* renamed from: e, reason: collision with root package name */
        private double[] f15737e;

        public b() {
            this.f15733a = -1.0d;
            this.f15734b = null;
            this.f15735c = -1.0d;
            this.f15736d = -1.0d;
            this.f15737e = null;
        }

        @NonNull
        public b a(double d2) {
            while (d2 >= 360.0d) {
                d2 -= 360.0d;
            }
            while (d2 < 0.0d) {
                d2 += 360.0d;
            }
            this.f15733a = d2;
            return this;
        }

        @NonNull
        public b b(@FloatRange(from = 0.0d, to = 60.0d) double d2) {
            this.f15735c = f.a(d2, 0.0d, 60.0d);
            return this;
        }

        @NonNull
        public b c(@FloatRange(from = 0.0d, to = 25.5d) double d2) {
            this.f15736d = d2;
            return this;
        }

        @NonNull
        public b a(LatLng latLng) {
            this.f15734b = latLng;
            return this;
        }

        @NonNull
        public b a(@Size(4) double[] dArr) {
            this.f15737e = dArr;
            return this;
        }

        public CameraPosition a() {
            return new CameraPosition(this.f15734b, this.f15736d, this.f15735c, this.f15733a, this.f15737e);
        }

        public b(@Nullable CameraPosition cameraPosition) {
            this.f15733a = -1.0d;
            this.f15734b = null;
            this.f15735c = -1.0d;
            this.f15736d = -1.0d;
            this.f15737e = null;
            if (cameraPosition != null) {
                this.f15733a = cameraPosition.bearing;
                this.f15734b = cameraPosition.target;
                this.f15735c = cameraPosition.tilt;
                this.f15736d = cameraPosition.zoom;
                this.f15737e = cameraPosition.padding;
            }
        }

        public b(@Nullable TypedArray typedArray) {
            this.f15733a = -1.0d;
            this.f15734b = null;
            this.f15735c = -1.0d;
            this.f15736d = -1.0d;
            this.f15737e = null;
            if (typedArray != null) {
                this.f15733a = typedArray.getFloat(o.mapbox_MapView_mapbox_cameraBearing, 0.0f);
                this.f15734b = new LatLng(typedArray.getFloat(o.mapbox_MapView_mapbox_cameraTargetLat, 0.0f), typedArray.getFloat(o.mapbox_MapView_mapbox_cameraTargetLng, 0.0f));
                this.f15735c = typedArray.getFloat(o.mapbox_MapView_mapbox_cameraTilt, 0.0f);
                this.f15736d = typedArray.getFloat(o.mapbox_MapView_mapbox_cameraZoom, 0.0f);
            }
        }

        public b(@Nullable b.C0153b c0153b) {
            this.f15733a = -1.0d;
            this.f15734b = null;
            this.f15735c = -1.0d;
            this.f15736d = -1.0d;
            this.f15737e = null;
            if (c0153b != null) {
                this.f15733a = c0153b.a();
                this.f15734b = c0153b.c();
                this.f15735c = c0153b.d();
                this.f15736d = c0153b.e();
                this.f15737e = c0153b.b();
            }
        }
    }

    @Keep
    CameraPosition(LatLng latLng, double d2, double d3, double d4, double[] dArr) {
        this.target = latLng;
        this.bearing = d4;
        this.tilt = d3;
        this.zoom = d2;
        this.padding = dArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || CameraPosition.class != obj.getClass()) {
            return false;
        }
        CameraPosition cameraPosition = (CameraPosition) obj;
        LatLng latLng = this.target;
        return (latLng == null || latLng.equals(cameraPosition.target)) && this.zoom == cameraPosition.zoom && this.tilt == cameraPosition.tilt && this.bearing == cameraPosition.bearing && Arrays.equals(this.padding, cameraPosition.padding);
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.bearing);
        int i2 = ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31;
        LatLng latLng = this.target;
        int hashCode = latLng != null ? latLng.hashCode() : 0;
        long doubleToLongBits2 = Double.doubleToLongBits(this.tilt);
        int i3 = ((i2 + hashCode) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
        long doubleToLongBits3 = Double.doubleToLongBits(this.zoom);
        return (((i3 * 31) + ((int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32)))) * 31) + Arrays.hashCode(this.padding);
    }

    public String toString() {
        return "Target: " + this.target + ", Zoom:" + this.zoom + ", Bearing:" + this.bearing + ", Tilt:" + this.tilt + ", Padding:" + Arrays.toString(this.padding);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeDouble(this.bearing);
        parcel.writeParcelable(this.target, i2);
        parcel.writeDouble(this.tilt);
        parcel.writeDouble(this.zoom);
        double[] dArr = this.padding;
        if (dArr != null) {
            parcel.writeInt(dArr.length);
            for (double d2 : this.padding) {
                parcel.writeDouble(d2);
            }
            return;
        }
        parcel.writeInt(-1);
    }
}

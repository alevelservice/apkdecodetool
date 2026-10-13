package com.mapbox.mapboxsdk.geometry;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public class ProjectedMeters implements Parcelable {
    public static final Parcelable.Creator<ProjectedMeters> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    private double f15756e;

    /* renamed from: f, reason: collision with root package name */
    private double f15757f;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<ProjectedMeters> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProjectedMeters createFromParcel(@NonNull Parcel parcel) {
            return new ProjectedMeters(parcel, (a) null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProjectedMeters[] newArray(int i2) {
            return new ProjectedMeters[i2];
        }
    }

    /* synthetic */ ProjectedMeters(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ProjectedMeters.class != obj.getClass()) {
            return false;
        }
        ProjectedMeters projectedMeters = (ProjectedMeters) obj;
        return Double.compare(projectedMeters.f15757f, this.f15757f) == 0 && Double.compare(projectedMeters.f15756e, this.f15756e) == 0;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f15757f);
        int i2 = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        long doubleToLongBits2 = Double.doubleToLongBits(this.f15756e);
        return (i2 * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
    }

    @NonNull
    public String toString() {
        return "ProjectedMeters [northing=" + this.f15756e + ", easting=" + this.f15757f + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        parcel.writeDouble(this.f15756e);
        parcel.writeDouble(this.f15757f);
    }

    @Keep
    public ProjectedMeters(double d2, double d3) {
        this.f15756e = d2;
        this.f15757f = d3;
    }

    private ProjectedMeters(Parcel parcel) {
        this.f15756e = parcel.readDouble();
        this.f15757f = parcel.readDouble();
    }
}

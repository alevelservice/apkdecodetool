package com.mapbox.mapboxsdk.annotations;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.geometry.LatLng;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Deprecated
/* loaded from: classes2.dex */
public final class PolylineOptions implements Parcelable {
    public static final Parcelable.Creator<PolylineOptions> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    private Polyline f15700e;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<PolylineOptions> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PolylineOptions createFromParcel(@NonNull Parcel parcel) {
            return new PolylineOptions(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PolylineOptions[] newArray(int i2) {
            return new PolylineOptions[i2];
        }
    }

    /* synthetic */ PolylineOptions(Parcel parcel, a aVar) {
        this(parcel);
    }

    @NonNull
    public PolylineOptions a(LatLng latLng) {
        this.f15700e.a(latLng);
        return this;
    }

    public int b() {
        return this.f15700e.f();
    }

    public List<LatLng> c() {
        return this.f15700e.d();
    }

    public float d() {
        return this.f15700e.g();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PolylineOptions.class != obj.getClass()) {
            return false;
        }
        PolylineOptions polylineOptions = (PolylineOptions) obj;
        if (Float.compare(polylineOptions.a(), a()) != 0 || b() != polylineOptions.b() || Float.compare(polylineOptions.d(), d()) != 0) {
            return false;
        }
        if (c() != null) {
            if (c().equals(polylineOptions.c())) {
                return true;
            }
        } else if (polylineOptions.c() == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((a() != 0.0f ? Float.floatToIntBits(a()) : 0) + 31) * 31) + b()) * 31) + (d() != 0.0f ? Float.floatToIntBits(d()) : 0)) * 31) + (c() != null ? c().hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeList(c());
        parcel.writeFloat(a());
        parcel.writeInt(b());
        parcel.writeFloat(d());
    }

    private PolylineOptions(Parcel parcel) {
        this.f15700e = new Polyline();
        ArrayList arrayList = new ArrayList();
        parcel.readList(arrayList, LatLng.class.getClassLoader());
        a(arrayList);
        a(parcel.readFloat());
        a(parcel.readInt());
        b(parcel.readFloat());
    }

    @NonNull
    public PolylineOptions a(Iterable<LatLng> iterable) {
        Iterator<LatLng> it = iterable.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        return this;
    }

    @NonNull
    public PolylineOptions b(float f2) {
        this.f15700e.b(f2);
        return this;
    }

    @NonNull
    public PolylineOptions a(float f2) {
        this.f15700e.a(f2);
        return this;
    }

    public float a() {
        return this.f15700e.c();
    }

    @NonNull
    public PolylineOptions a(int i2) {
        this.f15700e.a(i2);
        return this;
    }

    public PolylineOptions() {
        this.f15700e = new Polyline();
    }
}

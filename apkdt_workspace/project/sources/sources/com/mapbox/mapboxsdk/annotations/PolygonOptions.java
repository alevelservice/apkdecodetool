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
public final class PolygonOptions implements Parcelable {
    public static final Parcelable.Creator<PolygonOptions> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    private Polygon f15699e;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<PolygonOptions> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PolygonOptions createFromParcel(@NonNull Parcel parcel) {
            return new PolygonOptions(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PolygonOptions[] newArray(int i2) {
            return new PolygonOptions[i2];
        }
    }

    /* synthetic */ PolygonOptions(Parcel parcel, a aVar) {
        this(parcel);
    }

    @NonNull
    public PolygonOptions a(LatLng latLng) {
        this.f15699e.a(latLng);
        return this;
    }

    @NonNull
    public PolygonOptions b(Iterable<List<LatLng>> iterable) {
        Iterator<List<LatLng>> it = iterable.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        return this;
    }

    public List<List<LatLng>> c() {
        return this.f15699e.g();
    }

    public List<LatLng> d() {
        return this.f15699e.d();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int e() {
        return this.f15699e.h();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PolygonOptions.class != obj.getClass()) {
            return false;
        }
        PolygonOptions polygonOptions = (PolygonOptions) obj;
        if (Float.compare(polygonOptions.a(), a()) != 0 || b() != polygonOptions.b() || e() != polygonOptions.e()) {
            return false;
        }
        if (d() == null ? polygonOptions.d() != null : !d().equals(polygonOptions.d())) {
            return false;
        }
        if (c() != null) {
            if (c().equals(polygonOptions.c())) {
                return true;
            }
        } else if (polygonOptions.c() == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((a() != 0.0f ? Float.floatToIntBits(a()) : 0) + 31) * 31) + b()) * 31) + e()) * 31) + (d() != null ? d().hashCode() : 0)) * 31) + (c() != null ? c().hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeList(d());
        parcel.writeList(c());
        parcel.writeFloat(a());
        parcel.writeInt(b());
        parcel.writeInt(e());
    }

    private PolygonOptions(Parcel parcel) {
        this.f15699e = new Polygon();
        ArrayList arrayList = new ArrayList();
        parcel.readList(arrayList, LatLng.class.getClassLoader());
        a((Iterable<LatLng>) arrayList);
        ArrayList arrayList2 = new ArrayList();
        parcel.readList(arrayList2, LatLng.class.getClassLoader());
        b(arrayList2);
        a(parcel.readFloat());
        a(parcel.readInt());
        b(parcel.readInt());
    }

    @NonNull
    public PolygonOptions a(Iterable<LatLng> iterable) {
        Iterator<LatLng> it = iterable.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        return this;
    }

    public int b() {
        return this.f15699e.f();
    }

    @NonNull
    public PolygonOptions a(List<LatLng> list) {
        this.f15699e.a(list);
        return this;
    }

    @NonNull
    public PolygonOptions b(int i2) {
        this.f15699e.b(i2);
        return this;
    }

    @NonNull
    public PolygonOptions a(float f2) {
        this.f15699e.a(f2);
        return this;
    }

    public float a() {
        return this.f15699e.c();
    }

    @NonNull
    public PolygonOptions a(int i2) {
        this.f15699e.a(i2);
        return this;
    }

    public PolygonOptions() {
        this.f15699e = new Polygon();
    }
}

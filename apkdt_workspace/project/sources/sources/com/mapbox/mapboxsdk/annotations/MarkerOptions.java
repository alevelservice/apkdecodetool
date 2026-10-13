package com.mapbox.mapboxsdk.annotations;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.geometry.LatLng;

@Deprecated
/* loaded from: classes2.dex */
public final class MarkerOptions extends BaseMarkerOptions<Marker, MarkerOptions> implements Parcelable {
    public static final Parcelable.Creator<MarkerOptions> CREATOR = new a();

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<MarkerOptions> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MarkerOptions createFromParcel(@NonNull Parcel parcel) {
            return new MarkerOptions(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MarkerOptions[] newArray(int i2) {
            return new MarkerOptions[i2];
        }
    }

    public MarkerOptions() {
    }

    @Override // com.mapbox.mapboxsdk.annotations.BaseMarkerOptions
    @NonNull
    public MarkerOptions a() {
        return this;
    }

    public d b() {
        return this.f15684h;
    }

    public LatLng c() {
        return this.f15681e;
    }

    public String d() {
        return this.f15682f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String e() {
        return this.f15683g;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || MarkerOptions.class != obj.getClass()) {
            return false;
        }
        MarkerOptions markerOptions = (MarkerOptions) obj;
        if (c() == null ? markerOptions.c() != null : !c().equals(markerOptions.c())) {
            return false;
        }
        if (d() == null ? markerOptions.d() != null : !d().equals(markerOptions.d())) {
            return false;
        }
        if (b() == null ? markerOptions.b() != null : !b().equals(markerOptions.b())) {
            return false;
        }
        if (e() != null) {
            if (e().equals(markerOptions.e())) {
                return true;
            }
        } else if (markerOptions.e() == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((c() != null ? c().hashCode() : 0) + 31) * 31) + (d() != null ? d().hashCode() : 0)) * 31) + (b() != null ? b().hashCode() : 0)) * 31) + (e() != null ? e().hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(c(), i2);
        parcel.writeString(d());
        parcel.writeString(e());
        d b2 = b();
        parcel.writeByte((byte) (b2 != null ? 1 : 0));
        if (b2 != null) {
            parcel.writeString(b().b());
            parcel.writeParcelable(b().a(), i2);
        }
    }

    protected MarkerOptions(Parcel parcel) {
        a((LatLng) parcel.readParcelable(LatLng.class.getClassLoader()));
        a(parcel.readString());
        b(parcel.readString());
        if (parcel.readByte() != 0) {
            a(new d(parcel.readString(), (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader())));
        }
    }
}

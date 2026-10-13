package com.mapbox.mapboxsdk.geometry;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public class LatLngQuad implements Parcelable {
    public static final Parcelable.Creator<LatLngQuad> CREATOR = new a();

    @Keep
    private final LatLng bottomLeft;

    @Keep
    private final LatLng bottomRight;

    @Keep
    private final LatLng topLeft;

    @Keep
    private final LatLng topRight;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<LatLngQuad> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LatLngQuad createFromParcel(@NonNull Parcel parcel) {
            return LatLngQuad.b(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LatLngQuad[] newArray(int i2) {
            return new LatLngQuad[i2];
        }
    }

    @Keep
    public LatLngQuad(LatLng latLng, LatLng latLng2, LatLng latLng3, LatLng latLng4) {
        this.topLeft = latLng;
        this.topRight = latLng2;
        this.bottomRight = latLng3;
        this.bottomLeft = latLng4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static LatLngQuad b(@NonNull Parcel parcel) {
        return new LatLngQuad(new LatLng(parcel), new LatLng(parcel), new LatLng(parcel), new LatLng(parcel));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int hashCode() {
        int hashCode = this.topLeft.hashCode();
        int hashCode2 = (hashCode ^ (hashCode >>> 31)) + this.topRight.hashCode();
        int hashCode3 = (hashCode2 ^ (hashCode2 >>> 31)) + this.bottomRight.hashCode();
        return (hashCode3 ^ (hashCode3 >>> 31)) + this.bottomLeft.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        this.topLeft.writeToParcel(parcel, i2);
        this.topRight.writeToParcel(parcel, i2);
        this.bottomRight.writeToParcel(parcel, i2);
        this.bottomLeft.writeToParcel(parcel, i2);
    }
}

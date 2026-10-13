package com.mapbox.mapboxsdk.offline;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;

/* loaded from: classes2.dex */
public class OfflineTilePyramidRegionDefinition implements OfflineRegionDefinition {
    public static final Parcelable.Creator CREATOR = new a();

    @Keep
    private LatLngBounds bounds;

    @Keep
    private boolean includeIdeographs;

    @Keep
    private double maxZoom;

    @Keep
    private double minZoom;

    @Keep
    private float pixelRatio;

    @Keep
    private String styleURL;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public OfflineTilePyramidRegionDefinition createFromParcel(@NonNull Parcel parcel) {
            return new OfflineTilePyramidRegionDefinition(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public OfflineTilePyramidRegionDefinition[] newArray(int i2) {
            return new OfflineTilePyramidRegionDefinition[i2];
        }
    }

    @Keep
    public OfflineTilePyramidRegionDefinition(String str, LatLngBounds latLngBounds, double d2, double d3, float f2) {
        this(str, latLngBounds, d2, d3, f2, false);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.mapbox.mapboxsdk.offline.OfflineRegionDefinition
    public LatLngBounds getBounds() {
        return this.bounds;
    }

    @Override // com.mapbox.mapboxsdk.offline.OfflineRegionDefinition
    public boolean getIncludeIdeographs() {
        return this.includeIdeographs;
    }

    @Override // com.mapbox.mapboxsdk.offline.OfflineRegionDefinition
    public double getMaxZoom() {
        return this.maxZoom;
    }

    @Override // com.mapbox.mapboxsdk.offline.OfflineRegionDefinition
    public double getMinZoom() {
        return this.minZoom;
    }

    @Override // com.mapbox.mapboxsdk.offline.OfflineRegionDefinition
    public float getPixelRatio() {
        return this.pixelRatio;
    }

    @Override // com.mapbox.mapboxsdk.offline.OfflineRegionDefinition
    public String getStyleURL() {
        return this.styleURL;
    }

    @Override // com.mapbox.mapboxsdk.offline.OfflineRegionDefinition
    @NonNull
    public String getType() {
        return "tileregion";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        parcel.writeString(this.styleURL);
        parcel.writeDouble(this.bounds.a());
        parcel.writeDouble(this.bounds.c());
        parcel.writeDouble(this.bounds.b());
        parcel.writeDouble(this.bounds.d());
        parcel.writeDouble(this.minZoom);
        parcel.writeDouble(this.maxZoom);
        parcel.writeFloat(this.pixelRatio);
        parcel.writeByte(this.includeIdeographs ? (byte) 1 : (byte) 0);
    }

    @Keep
    public OfflineTilePyramidRegionDefinition(String str, LatLngBounds latLngBounds, double d2, double d3, float f2, boolean z) {
        this.styleURL = str;
        this.bounds = latLngBounds;
        this.minZoom = d2;
        this.maxZoom = d3;
        this.pixelRatio = f2;
        this.includeIdeographs = z;
    }

    public OfflineTilePyramidRegionDefinition(Parcel parcel) {
        this.styleURL = parcel.readString();
        LatLngBounds.b bVar = new LatLngBounds.b();
        bVar.a(new LatLng(parcel.readDouble(), parcel.readDouble()));
        bVar.a(new LatLng(parcel.readDouble(), parcel.readDouble()));
        this.bounds = bVar.a();
        this.minZoom = parcel.readDouble();
        this.maxZoom = parcel.readDouble();
        this.pixelRatio = parcel.readFloat();
        this.includeIdeographs = parcel.readByte() != 0;
    }
}

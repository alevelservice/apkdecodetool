package com.mapbox.mapboxsdk.offline;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.Geometry;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.turf.b;

/* loaded from: classes2.dex */
public class OfflineGeometryRegionDefinition implements OfflineRegionDefinition {
    public static final Parcelable.Creator CREATOR = new a();

    @Nullable
    @Keep
    private Geometry geometry;

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
        public OfflineGeometryRegionDefinition createFromParcel(@NonNull Parcel parcel) {
            return new OfflineGeometryRegionDefinition(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public OfflineGeometryRegionDefinition[] newArray(int i2) {
            return new OfflineGeometryRegionDefinition[i2];
        }
    }

    @Keep
    public OfflineGeometryRegionDefinition(String str, Geometry geometry, double d2, double d3, float f2) {
        this(str, geometry, d2, d3, f2, false);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.mapbox.mapboxsdk.offline.OfflineRegionDefinition
    @Nullable
    public LatLngBounds getBounds() {
        Geometry geometry = this.geometry;
        if (geometry == null) {
            return null;
        }
        double[] a2 = b.a(geometry);
        return LatLngBounds.b(a2[3], a2[2], a2[1], a2[0]);
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
        return "shaperegion";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        parcel.writeString(this.styleURL);
        parcel.writeString(Feature.fromGeometry(this.geometry).toJson());
        parcel.writeDouble(this.minZoom);
        parcel.writeDouble(this.maxZoom);
        parcel.writeFloat(this.pixelRatio);
        parcel.writeByte(this.includeIdeographs ? (byte) 1 : (byte) 0);
    }

    @Keep
    public OfflineGeometryRegionDefinition(String str, Geometry geometry, double d2, double d3, float f2, boolean z) {
        this.styleURL = str;
        this.geometry = geometry;
        this.minZoom = d2;
        this.maxZoom = d3;
        this.pixelRatio = f2;
        this.includeIdeographs = z;
    }

    public OfflineGeometryRegionDefinition(Parcel parcel) {
        this.styleURL = parcel.readString();
        this.geometry = Feature.fromJson(parcel.readString()).geometry();
        this.minZoom = parcel.readDouble();
        this.maxZoom = parcel.readDouble();
        this.pixelRatio = parcel.readFloat();
        this.includeIdeographs = parcel.readByte() != 0;
    }
}

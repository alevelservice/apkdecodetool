package com.mapbox.geojson;

import androidx.annotation.FloatRange;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.e;
import com.mapbox.geojson.gson.BoundingBoxTypeAdapter;
import java.io.Serializable;

@Keep
/* loaded from: classes2.dex */
public class BoundingBox implements Serializable {
    private final Point northeast;
    private final Point southwest;

    BoundingBox(Point point, Point point2) {
        if (point != null) {
            this.southwest = point;
            if (point2 != null) {
                this.northeast = point2;
                return;
            }
            throw new NullPointerException("Null northeast");
        }
        throw new NullPointerException("Null southwest");
    }

    @Deprecated
    public static BoundingBox fromCoordinates(@FloatRange(from = -180.0d, to = 180.0d) double d2, @FloatRange(from = -90.0d, to = 90.0d) double d3, @FloatRange(from = -180.0d, to = 180.0d) double d4, @FloatRange(from = -90.0d, to = 90.0d) double d5) {
        return fromLngLats(d2, d3, d4, d5);
    }

    public static BoundingBox fromJson(String str) {
        e eVar = new e();
        eVar.a(BoundingBox.class, new BoundingBoxTypeAdapter());
        return (BoundingBox) eVar.a().a(str, BoundingBox.class);
    }

    public static BoundingBox fromLngLats(@FloatRange(from = -180.0d, to = 180.0d) double d2, @FloatRange(from = -90.0d, to = 90.0d) double d3, @FloatRange(from = -180.0d, to = 180.0d) double d4, @FloatRange(from = -90.0d, to = 90.0d) double d5) {
        return new BoundingBox(Point.fromLngLat(d2, d3), Point.fromLngLat(d4, d5));
    }

    public static BoundingBox fromPoints(@NonNull Point point, @NonNull Point point2) {
        return new BoundingBox(point, point2);
    }

    public static TypeAdapter<BoundingBox> typeAdapter(Gson gson) {
        return new BoundingBoxTypeAdapter();
    }

    public final double east() {
        return northeast().longitude();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BoundingBox)) {
            return false;
        }
        BoundingBox boundingBox = (BoundingBox) obj;
        return this.southwest.equals(boundingBox.southwest()) && this.northeast.equals(boundingBox.northeast());
    }

    public int hashCode() {
        return ((this.southwest.hashCode() ^ 1000003) * 1000003) ^ this.northeast.hashCode();
    }

    public final double north() {
        return northeast().latitude();
    }

    @NonNull
    public Point northeast() {
        return this.northeast;
    }

    public final double south() {
        return southwest().latitude();
    }

    @NonNull
    public Point southwest() {
        return this.southwest;
    }

    public final String toJson() {
        e eVar = new e();
        eVar.a(BoundingBox.class, new BoundingBoxTypeAdapter());
        return eVar.a().a(this, BoundingBox.class);
    }

    public String toString() {
        return "BoundingBox{southwest=" + this.southwest + ", northeast=" + this.northeast + "}";
    }

    public final double west() {
        return southwest().longitude();
    }

    @Deprecated
    public static BoundingBox fromCoordinates(@FloatRange(from = -180.0d, to = 180.0d) double d2, @FloatRange(from = -90.0d, to = 90.0d) double d3, double d4, @FloatRange(from = -180.0d, to = 180.0d) double d5, @FloatRange(from = -90.0d, to = 90.0d) double d6, double d7) {
        return fromLngLats(d2, d3, d4, d5, d6, d7);
    }

    public static BoundingBox fromLngLats(@FloatRange(from = -180.0d, to = 180.0d) double d2, @FloatRange(from = -90.0d, to = 90.0d) double d3, double d4, @FloatRange(from = -180.0d, to = 180.0d) double d5, @FloatRange(from = -90.0d, to = 90.0d) double d6, double d7) {
        return new BoundingBox(Point.fromLngLat(d2, d3, d4), Point.fromLngLat(d5, d6, d7));
    }
}

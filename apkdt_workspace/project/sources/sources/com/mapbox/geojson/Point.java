package com.mapbox.geojson;

import androidx.annotation.FloatRange;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.e;
import com.google.gson.r.a;
import com.google.gson.r.c;
import com.mapbox.geojson.gson.GeoJsonAdapterFactory;
import com.mapbox.geojson.shifter.CoordinateShifterManager;
import java.util.List;

@Keep
/* loaded from: classes2.dex */
public final class Point implements CoordinateContainer<List<Double>> {
    private static final String TYPE = "Point";

    @Nullable
    private final BoundingBox bbox;

    @NonNull
    private final List<Double> coordinates;

    @NonNull
    private final String type;

    /* loaded from: classes2.dex */
    static final class GsonTypeAdapter extends BaseGeometryTypeAdapter<Point, List<Double>> {
        GsonTypeAdapter(Gson gson) {
            super(gson, new ListOfDoublesCoordinatesTypeAdapter());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.mapbox.geojson.BaseGeometryTypeAdapter
        public CoordinateContainer<List<Double>> createCoordinateContainer(String str, BoundingBox boundingBox, List<Double> list) {
            if (str == null) {
                str = Point.TYPE;
            }
            return new Point(str, boundingBox, list);
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public Point read2(a aVar) {
            return (Point) readCoordinateContainer(aVar);
        }

        @Override // com.google.gson.TypeAdapter
        public void write(c cVar, Point point) {
            writeCoordinateContainer(cVar, point);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point(String str, @Nullable BoundingBox boundingBox, List<Double> list) {
        if (str != null) {
            this.type = str;
            this.bbox = boundingBox;
            if (list != null && list.size() != 0) {
                this.coordinates = list;
                return;
            }
            throw new NullPointerException("Null coordinates");
        }
        throw new NullPointerException("Null type");
    }

    public static Point fromJson(@NonNull String str) {
        e eVar = new e();
        eVar.a(GeoJsonAdapterFactory.create());
        return (Point) eVar.a().a(str, Point.class);
    }

    public static Point fromLngLat(@FloatRange(from = -180.0d, to = 180.0d) double d2, @FloatRange(from = -90.0d, to = 90.0d) double d3) {
        return new Point(TYPE, null, CoordinateShifterManager.getCoordinateShifter().shiftLonLat(d2, d3));
    }

    public static TypeAdapter<Point> typeAdapter(Gson gson) {
        return new GsonTypeAdapter(gson);
    }

    public double altitude() {
        if (coordinates().size() < 3) {
            return Double.NaN;
        }
        return coordinates().get(2).doubleValue();
    }

    @Override // com.mapbox.geojson.GeoJson
    @Nullable
    public BoundingBox bbox() {
        return this.bbox;
    }

    public boolean equals(Object obj) {
        BoundingBox boundingBox;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Point)) {
            return false;
        }
        Point point = (Point) obj;
        return this.type.equals(point.type()) && ((boundingBox = this.bbox) != null ? boundingBox.equals(point.bbox()) : point.bbox() == null) && this.coordinates.equals(point.coordinates());
    }

    public boolean hasAltitude() {
        return !Double.isNaN(altitude());
    }

    public int hashCode() {
        int hashCode = (this.type.hashCode() ^ 1000003) * 1000003;
        BoundingBox boundingBox = this.bbox;
        return ((hashCode ^ (boundingBox == null ? 0 : boundingBox.hashCode())) * 1000003) ^ this.coordinates.hashCode();
    }

    public double latitude() {
        return coordinates().get(1).doubleValue();
    }

    public double longitude() {
        return coordinates().get(0).doubleValue();
    }

    @Override // com.mapbox.geojson.GeoJson
    public String toJson() {
        e eVar = new e();
        eVar.a(GeoJsonAdapterFactory.create());
        return eVar.a().a(this);
    }

    public String toString() {
        return "Point{type=" + this.type + ", bbox=" + this.bbox + ", coordinates=" + this.coordinates + "}";
    }

    @Override // com.mapbox.geojson.GeoJson
    @NonNull
    public String type() {
        return this.type;
    }

    @Override // com.mapbox.geojson.CoordinateContainer
    @NonNull
    public List<Double> coordinates() {
        return this.coordinates;
    }

    public static Point fromLngLat(@FloatRange(from = -180.0d, to = 180.0d) double d2, @FloatRange(from = -90.0d, to = 90.0d) double d3, @Nullable BoundingBox boundingBox) {
        return new Point(TYPE, boundingBox, CoordinateShifterManager.getCoordinateShifter().shiftLonLat(d2, d3));
    }

    public static Point fromLngLat(@FloatRange(from = -180.0d, to = 180.0d) double d2, @FloatRange(from = -90.0d, to = 90.0d) double d3, double d4) {
        return new Point(TYPE, null, CoordinateShifterManager.getCoordinateShifter().shiftLonLatAlt(d2, d3, d4));
    }

    public static Point fromLngLat(@FloatRange(from = -180.0d, to = 180.0d) double d2, @FloatRange(from = -90.0d, to = 90.0d) double d3, double d4, @Nullable BoundingBox boundingBox) {
        return new Point(TYPE, boundingBox, CoordinateShifterManager.getCoordinateShifter().shiftLonLatAlt(d2, d3, d4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Point fromLngLat(@NonNull double[] dArr) {
        if (dArr.length == 2) {
            return fromLngLat(dArr[0], dArr[1]);
        }
        if (dArr.length > 2) {
            return fromLngLat(dArr[0], dArr[1], dArr[2]);
        }
        return null;
    }
}

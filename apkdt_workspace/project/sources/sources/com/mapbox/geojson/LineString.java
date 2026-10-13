package com.mapbox.geojson;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.e;
import com.google.gson.r.a;
import com.google.gson.r.c;
import com.mapbox.geojson.gson.GeoJsonAdapterFactory;
import com.mapbox.geojson.utils.PolylineUtils;
import java.util.ArrayList;
import java.util.List;

@Keep
/* loaded from: classes2.dex */
public final class LineString implements CoordinateContainer<List<Point>> {
    private static final String TYPE = "LineString";
    private final BoundingBox bbox;
    private final List<Point> coordinates;
    private final String type;

    /* loaded from: classes2.dex */
    static final class GsonTypeAdapter extends BaseGeometryTypeAdapter<LineString, List<Point>> {
        GsonTypeAdapter(Gson gson) {
            super(gson, new ListOfPointCoordinatesTypeAdapter());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.mapbox.geojson.BaseGeometryTypeAdapter
        public CoordinateContainer<List<Point>> createCoordinateContainer(String str, BoundingBox boundingBox, List<Point> list) {
            if (str == null) {
                str = LineString.TYPE;
            }
            return new LineString(str, boundingBox, list);
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public LineString read2(a aVar) {
            return (LineString) readCoordinateContainer(aVar);
        }

        @Override // com.google.gson.TypeAdapter
        public void write(c cVar, LineString lineString) {
            writeCoordinateContainer(cVar, lineString);
        }
    }

    LineString(String str, @Nullable BoundingBox boundingBox, List<Point> list) {
        if (str != null) {
            this.type = str;
            this.bbox = boundingBox;
            if (list != null) {
                this.coordinates = list;
                return;
            }
            throw new NullPointerException("Null coordinates");
        }
        throw new NullPointerException("Null type");
    }

    public static LineString fromJson(String str) {
        e eVar = new e();
        eVar.a(GeoJsonAdapterFactory.create());
        return (LineString) eVar.a().a(str, LineString.class);
    }

    public static LineString fromLngLats(@NonNull MultiPoint multiPoint) {
        return new LineString(TYPE, null, multiPoint.coordinates());
    }

    public static LineString fromPolyline(@NonNull String str, int i2) {
        return fromLngLats(PolylineUtils.decode(str, i2), (BoundingBox) null);
    }

    public static TypeAdapter<LineString> typeAdapter(Gson gson) {
        return new GsonTypeAdapter(gson);
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
        if (!(obj instanceof LineString)) {
            return false;
        }
        LineString lineString = (LineString) obj;
        return this.type.equals(lineString.type()) && ((boundingBox = this.bbox) != null ? boundingBox.equals(lineString.bbox()) : lineString.bbox() == null) && this.coordinates.equals(lineString.coordinates());
    }

    public int hashCode() {
        int hashCode = (this.type.hashCode() ^ 1000003) * 1000003;
        BoundingBox boundingBox = this.bbox;
        return ((hashCode ^ (boundingBox == null ? 0 : boundingBox.hashCode())) * 1000003) ^ this.coordinates.hashCode();
    }

    @Override // com.mapbox.geojson.GeoJson
    public String toJson() {
        e eVar = new e();
        eVar.a(GeoJsonAdapterFactory.create());
        return eVar.a().a(this);
    }

    public String toPolyline(int i2) {
        return PolylineUtils.encode(coordinates(), i2);
    }

    public String toString() {
        return "LineString{type=" + this.type + ", bbox=" + this.bbox + ", coordinates=" + this.coordinates + "}";
    }

    @Override // com.mapbox.geojson.GeoJson
    @NonNull
    public String type() {
        return this.type;
    }

    public static LineString fromLngLats(@NonNull List<Point> list) {
        return new LineString(TYPE, null, list);
    }

    @Override // com.mapbox.geojson.CoordinateContainer
    @NonNull
    public List<Point> coordinates() {
        return this.coordinates;
    }

    public static LineString fromLngLats(@NonNull List<Point> list, @Nullable BoundingBox boundingBox) {
        return new LineString(TYPE, boundingBox, list);
    }

    public static LineString fromLngLats(@NonNull MultiPoint multiPoint, @Nullable BoundingBox boundingBox) {
        return new LineString(TYPE, boundingBox, multiPoint.coordinates());
    }

    static LineString fromLngLats(double[][] dArr) {
        ArrayList arrayList = new ArrayList(dArr.length);
        for (double[] dArr2 : dArr) {
            arrayList.add(Point.fromLngLat(dArr2));
        }
        return fromLngLats(arrayList);
    }
}

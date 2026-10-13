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
import java.util.ArrayList;
import java.util.List;

@Keep
/* loaded from: classes2.dex */
public final class MultiPoint implements CoordinateContainer<List<Point>> {
    private static final String TYPE = "MultiPoint";
    private final BoundingBox bbox;
    private final List<Point> coordinates;
    private final String type;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class GsonTypeAdapter extends BaseGeometryTypeAdapter<MultiPoint, List<Point>> {
        GsonTypeAdapter(Gson gson) {
            super(gson, new ListOfPointCoordinatesTypeAdapter());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.mapbox.geojson.BaseGeometryTypeAdapter
        public CoordinateContainer<List<Point>> createCoordinateContainer(String str, BoundingBox boundingBox, List<Point> list) {
            if (str == null) {
                str = MultiPoint.TYPE;
            }
            return new MultiPoint(str, boundingBox, list);
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public MultiPoint read2(a aVar) {
            return (MultiPoint) readCoordinateContainer(aVar);
        }

        @Override // com.google.gson.TypeAdapter
        public void write(c cVar, MultiPoint multiPoint) {
            writeCoordinateContainer(cVar, multiPoint);
        }
    }

    MultiPoint(String str, @Nullable BoundingBox boundingBox, List<Point> list) {
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

    public static MultiPoint fromJson(@NonNull String str) {
        e eVar = new e();
        eVar.a(GeoJsonAdapterFactory.create());
        return (MultiPoint) eVar.a().a(str, MultiPoint.class);
    }

    public static MultiPoint fromLngLats(@NonNull List<Point> list) {
        return new MultiPoint(TYPE, null, list);
    }

    public static TypeAdapter<MultiPoint> typeAdapter(Gson gson) {
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
        if (!(obj instanceof MultiPoint)) {
            return false;
        }
        MultiPoint multiPoint = (MultiPoint) obj;
        return this.type.equals(multiPoint.type()) && ((boundingBox = this.bbox) != null ? boundingBox.equals(multiPoint.bbox()) : multiPoint.bbox() == null) && this.coordinates.equals(multiPoint.coordinates());
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

    public String toString() {
        return "MultiPoint{type=" + this.type + ", bbox=" + this.bbox + ", coordinates=" + this.coordinates + "}";
    }

    @Override // com.mapbox.geojson.GeoJson
    @NonNull
    public String type() {
        return this.type;
    }

    public static MultiPoint fromLngLats(@NonNull List<Point> list, @Nullable BoundingBox boundingBox) {
        return new MultiPoint(TYPE, boundingBox, list);
    }

    @Override // com.mapbox.geojson.CoordinateContainer
    @NonNull
    public List<Point> coordinates() {
        return this.coordinates;
    }

    static MultiPoint fromLngLats(@NonNull double[][] dArr) {
        ArrayList arrayList = new ArrayList(dArr.length);
        for (double[] dArr2 : dArr) {
            arrayList.add(Point.fromLngLat(dArr2));
        }
        return new MultiPoint(TYPE, null, arrayList);
    }
}

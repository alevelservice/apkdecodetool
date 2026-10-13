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
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

@Keep
/* loaded from: classes2.dex */
public final class MultiPolygon implements CoordinateContainer<List<List<List<Point>>>> {
    private static final String TYPE = "MultiPolygon";
    private final BoundingBox bbox;
    private final List<List<List<Point>>> coordinates;
    private final String type;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class GsonTypeAdapter extends BaseGeometryTypeAdapter<MultiPolygon, List<List<List<Point>>>> {
        GsonTypeAdapter(Gson gson) {
            super(gson, new ListofListofListOfPointCoordinatesTypeAdapter());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.mapbox.geojson.BaseGeometryTypeAdapter
        public CoordinateContainer<List<List<List<Point>>>> createCoordinateContainer(String str, BoundingBox boundingBox, List<List<List<Point>>> list) {
            if (str == null) {
                str = MultiPolygon.TYPE;
            }
            return new MultiPolygon(str, boundingBox, list);
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public MultiPolygon read2(a aVar) {
            return (MultiPolygon) readCoordinateContainer(aVar);
        }

        @Override // com.google.gson.TypeAdapter
        public void write(c cVar, MultiPolygon multiPolygon) {
            writeCoordinateContainer(cVar, multiPolygon);
        }
    }

    MultiPolygon(String str, @Nullable BoundingBox boundingBox, List<List<List<Point>>> list) {
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

    public static MultiPolygon fromJson(String str) {
        e eVar = new e();
        eVar.a(GeoJsonAdapterFactory.create());
        return (MultiPolygon) eVar.a().a(str, MultiPolygon.class);
    }

    public static MultiPolygon fromLngLats(@NonNull List<List<List<Point>>> list) {
        return new MultiPolygon(TYPE, null, list);
    }

    public static MultiPolygon fromPolygon(@NonNull Polygon polygon) {
        return new MultiPolygon(TYPE, null, Arrays.asList(polygon.coordinates()));
    }

    public static MultiPolygon fromPolygons(@NonNull List<Polygon> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Polygon> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().coordinates());
        }
        return new MultiPolygon(TYPE, null, arrayList);
    }

    public static TypeAdapter<MultiPolygon> typeAdapter(Gson gson) {
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
        if (!(obj instanceof MultiPolygon)) {
            return false;
        }
        MultiPolygon multiPolygon = (MultiPolygon) obj;
        return this.type.equals(multiPolygon.type()) && ((boundingBox = this.bbox) != null ? boundingBox.equals(multiPolygon.bbox()) : multiPolygon.bbox() == null) && this.coordinates.equals(multiPolygon.coordinates());
    }

    public int hashCode() {
        int hashCode = (this.type.hashCode() ^ 1000003) * 1000003;
        BoundingBox boundingBox = this.bbox;
        return ((hashCode ^ (boundingBox == null ? 0 : boundingBox.hashCode())) * 1000003) ^ this.coordinates.hashCode();
    }

    public List<Polygon> polygons() {
        List<List<List<Point>>> coordinates = coordinates();
        ArrayList arrayList = new ArrayList(coordinates.size());
        Iterator<List<List<Point>>> it = coordinates.iterator();
        while (it.hasNext()) {
            arrayList.add(Polygon.fromLngLats(it.next()));
        }
        return arrayList;
    }

    @Override // com.mapbox.geojson.GeoJson
    public String toJson() {
        e eVar = new e();
        eVar.a(GeoJsonAdapterFactory.create());
        return eVar.a().a(this);
    }

    public String toString() {
        return "Polygon{type=" + this.type + ", bbox=" + this.bbox + ", coordinates=" + this.coordinates + "}";
    }

    @Override // com.mapbox.geojson.GeoJson
    @NonNull
    public String type() {
        return this.type;
    }

    public static MultiPolygon fromLngLats(@NonNull List<List<List<Point>>> list, @Nullable BoundingBox boundingBox) {
        return new MultiPolygon(TYPE, boundingBox, list);
    }

    @Override // com.mapbox.geojson.CoordinateContainer
    @NonNull
    public List<List<List<Point>>> coordinates() {
        return this.coordinates;
    }

    static MultiPolygon fromLngLats(@NonNull double[][][][] dArr) {
        ArrayList arrayList = new ArrayList(dArr.length);
        for (int i2 = 0; i2 < dArr.length; i2++) {
            ArrayList arrayList2 = new ArrayList(dArr[i2].length);
            for (int i3 = 0; i3 < dArr[i2].length; i3++) {
                ArrayList arrayList3 = new ArrayList(dArr[i2][i3].length);
                for (int i4 = 0; i4 < dArr[i2][i3].length; i4++) {
                    arrayList3.add(Point.fromLngLat(dArr[i2][i3][i4]));
                }
                arrayList2.add(arrayList3);
            }
            arrayList.add(arrayList2);
        }
        return new MultiPolygon(TYPE, null, arrayList);
    }

    public static MultiPolygon fromPolygon(@NonNull Polygon polygon, @Nullable BoundingBox boundingBox) {
        return new MultiPolygon(TYPE, boundingBox, Arrays.asList(polygon.coordinates()));
    }

    public static MultiPolygon fromPolygons(@NonNull List<Polygon> list, @Nullable BoundingBox boundingBox) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Polygon> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().coordinates());
        }
        return new MultiPolygon(TYPE, boundingBox, arrayList);
    }
}

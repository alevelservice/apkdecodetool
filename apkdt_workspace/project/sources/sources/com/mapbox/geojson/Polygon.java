package com.mapbox.geojson;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.e;
import com.google.gson.r.a;
import com.google.gson.r.c;
import com.mapbox.geojson.exception.GeoJsonException;
import com.mapbox.geojson.gson.GeoJsonAdapterFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Keep
/* loaded from: classes2.dex */
public final class Polygon implements CoordinateContainer<List<List<Point>>> {
    private static final String TYPE = "Polygon";
    private final BoundingBox bbox;
    private final List<List<Point>> coordinates;
    private final String type;

    /* loaded from: classes2.dex */
    static final class GsonTypeAdapter extends BaseGeometryTypeAdapter<Polygon, List<List<Point>>> {
        GsonTypeAdapter(Gson gson) {
            super(gson, new ListOfListOfPointCoordinatesTypeAdapter());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.mapbox.geojson.BaseGeometryTypeAdapter
        public CoordinateContainer<List<List<Point>>> createCoordinateContainer(String str, BoundingBox boundingBox, List<List<Point>> list) {
            if (str == null) {
                str = Polygon.TYPE;
            }
            return new Polygon(str, boundingBox, list);
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public Polygon read2(a aVar) {
            return (Polygon) readCoordinateContainer(aVar);
        }

        @Override // com.google.gson.TypeAdapter
        public void write(c cVar, Polygon polygon) {
            writeCoordinateContainer(cVar, polygon);
        }
    }

    Polygon(String str, @Nullable BoundingBox boundingBox, List<List<Point>> list) {
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

    public static Polygon fromJson(@NonNull String str) {
        e eVar = new e();
        eVar.a(GeoJsonAdapterFactory.create());
        return (Polygon) eVar.a().a(str, Polygon.class);
    }

    public static Polygon fromLngLats(@NonNull List<List<Point>> list) {
        return new Polygon(TYPE, null, list);
    }

    public static Polygon fromOuterInner(@NonNull LineString lineString, @Nullable LineString... lineStringArr) {
        isLinearRing(lineString);
        ArrayList arrayList = new ArrayList();
        arrayList.add(lineString.coordinates());
        if (lineStringArr == null) {
            return new Polygon(TYPE, null, arrayList);
        }
        for (LineString lineString2 : lineStringArr) {
            isLinearRing(lineString2);
            arrayList.add(lineString2.coordinates());
        }
        return new Polygon(TYPE, null, arrayList);
    }

    private static boolean isLinearRing(LineString lineString) {
        if (lineString.coordinates().size() >= 4) {
            if (lineString.coordinates().get(0).equals(lineString.coordinates().get(lineString.coordinates().size() - 1))) {
                return true;
            }
            throw new GeoJsonException("LinearRings require first and last coordinate to be identical.");
        }
        throw new GeoJsonException("LinearRings need to be made up of 4 or more coordinates.");
    }

    public static TypeAdapter<Polygon> typeAdapter(Gson gson) {
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
        if (!(obj instanceof Polygon)) {
            return false;
        }
        Polygon polygon = (Polygon) obj;
        return this.type.equals(polygon.type()) && ((boundingBox = this.bbox) != null ? boundingBox.equals(polygon.bbox()) : polygon.bbox() == null) && this.coordinates.equals(polygon.coordinates());
    }

    public int hashCode() {
        int hashCode = (this.type.hashCode() ^ 1000003) * 1000003;
        BoundingBox boundingBox = this.bbox;
        return ((hashCode ^ (boundingBox == null ? 0 : boundingBox.hashCode())) * 1000003) ^ this.coordinates.hashCode();
    }

    @Nullable
    public List<LineString> inner() {
        List<List<Point>> coordinates = coordinates();
        if (coordinates.size() <= 1) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(coordinates.size() - 1);
        Iterator<List<Point>> it = coordinates.subList(1, coordinates.size()).iterator();
        while (it.hasNext()) {
            arrayList.add(LineString.fromLngLats(it.next()));
        }
        return arrayList;
    }

    @Nullable
    public LineString outer() {
        return LineString.fromLngLats(coordinates().get(0));
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

    public static Polygon fromLngLats(@NonNull List<List<Point>> list, @Nullable BoundingBox boundingBox) {
        return new Polygon(TYPE, boundingBox, list);
    }

    @Override // com.mapbox.geojson.CoordinateContainer
    @NonNull
    public List<List<Point>> coordinates() {
        return this.coordinates;
    }

    static Polygon fromLngLats(@NonNull double[][][] dArr) {
        ArrayList arrayList = new ArrayList(dArr.length);
        for (double[][] dArr2 : dArr) {
            ArrayList arrayList2 = new ArrayList(dArr2.length);
            for (double[] dArr3 : dArr2) {
                arrayList2.add(Point.fromLngLat(dArr3));
            }
            arrayList.add(arrayList2);
        }
        return new Polygon(TYPE, null, arrayList);
    }

    public static Polygon fromOuterInner(@NonNull LineString lineString, @Nullable BoundingBox boundingBox, @Nullable LineString... lineStringArr) {
        isLinearRing(lineString);
        ArrayList arrayList = new ArrayList();
        arrayList.add(lineString.coordinates());
        if (lineStringArr == null) {
            return new Polygon(TYPE, boundingBox, arrayList);
        }
        for (LineString lineString2 : lineStringArr) {
            isLinearRing(lineString2);
            arrayList.add(lineString2.coordinates());
        }
        return new Polygon(TYPE, boundingBox, arrayList);
    }

    public static Polygon fromOuterInner(@NonNull LineString lineString, @Nullable @Size(min = 1) List<LineString> list) {
        isLinearRing(lineString);
        ArrayList arrayList = new ArrayList();
        arrayList.add(lineString.coordinates());
        if (list != null && !list.isEmpty()) {
            for (LineString lineString2 : list) {
                isLinearRing(lineString2);
                arrayList.add(lineString2.coordinates());
            }
            return new Polygon(TYPE, null, arrayList);
        }
        return new Polygon(TYPE, null, arrayList);
    }

    public static Polygon fromOuterInner(@NonNull LineString lineString, @Nullable BoundingBox boundingBox, @Nullable @Size(min = 1) List<LineString> list) {
        isLinearRing(lineString);
        ArrayList arrayList = new ArrayList();
        arrayList.add(lineString.coordinates());
        if (list == null) {
            return new Polygon(TYPE, boundingBox, arrayList);
        }
        for (LineString lineString2 : list) {
            isLinearRing(lineString2);
            arrayList.add(lineString2.coordinates());
        }
        return new Polygon(TYPE, boundingBox, arrayList);
    }
}

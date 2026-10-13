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
public final class MultiLineString implements CoordinateContainer<List<List<Point>>> {
    private static final String TYPE = "MultiLineString";
    private final BoundingBox bbox;
    private final List<List<Point>> coordinates;
    private final String type;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class GsonTypeAdapter extends BaseGeometryTypeAdapter<MultiLineString, List<List<Point>>> {
        GsonTypeAdapter(Gson gson) {
            super(gson, new ListOfListOfPointCoordinatesTypeAdapter());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.mapbox.geojson.BaseGeometryTypeAdapter
        public CoordinateContainer<List<List<Point>>> createCoordinateContainer(String str, BoundingBox boundingBox, List<List<Point>> list) {
            if (str == null) {
                str = MultiLineString.TYPE;
            }
            return new MultiLineString(str, boundingBox, list);
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public MultiLineString read2(a aVar) {
            return (MultiLineString) readCoordinateContainer(aVar);
        }

        @Override // com.google.gson.TypeAdapter
        public void write(c cVar, MultiLineString multiLineString) {
            writeCoordinateContainer(cVar, multiLineString);
        }
    }

    MultiLineString(String str, @Nullable BoundingBox boundingBox, List<List<Point>> list) {
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

    public static MultiLineString fromJson(@NonNull String str) {
        e eVar = new e();
        eVar.a(GeoJsonAdapterFactory.create());
        return (MultiLineString) eVar.a().a(str, MultiLineString.class);
    }

    public static MultiLineString fromLineString(@NonNull LineString lineString) {
        return new MultiLineString(TYPE, null, Arrays.asList(lineString.coordinates()));
    }

    public static MultiLineString fromLineStrings(@NonNull List<LineString> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<LineString> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().coordinates());
        }
        return new MultiLineString(TYPE, null, arrayList);
    }

    public static MultiLineString fromLngLats(@NonNull List<List<Point>> list) {
        return new MultiLineString(TYPE, null, list);
    }

    public static TypeAdapter<MultiLineString> typeAdapter(Gson gson) {
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
        if (!(obj instanceof MultiLineString)) {
            return false;
        }
        MultiLineString multiLineString = (MultiLineString) obj;
        return this.type.equals(multiLineString.type()) && ((boundingBox = this.bbox) != null ? boundingBox.equals(multiLineString.bbox()) : multiLineString.bbox() == null) && this.coordinates.equals(multiLineString.coordinates());
    }

    public int hashCode() {
        int hashCode = (this.type.hashCode() ^ 1000003) * 1000003;
        BoundingBox boundingBox = this.bbox;
        return ((hashCode ^ (boundingBox == null ? 0 : boundingBox.hashCode())) * 1000003) ^ this.coordinates.hashCode();
    }

    public List<LineString> lineStrings() {
        List<List<Point>> coordinates = coordinates();
        ArrayList arrayList = new ArrayList(coordinates.size());
        Iterator<List<Point>> it = coordinates.iterator();
        while (it.hasNext()) {
            arrayList.add(LineString.fromLngLats(it.next()));
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
        return "MultiLineString{type=" + this.type + ", bbox=" + this.bbox + ", coordinates=" + this.coordinates + "}";
    }

    @Override // com.mapbox.geojson.GeoJson
    @NonNull
    public String type() {
        return this.type;
    }

    public static MultiLineString fromLngLats(@NonNull List<List<Point>> list, @Nullable BoundingBox boundingBox) {
        return new MultiLineString(TYPE, boundingBox, list);
    }

    @Override // com.mapbox.geojson.CoordinateContainer
    @NonNull
    public List<List<Point>> coordinates() {
        return this.coordinates;
    }

    public static MultiLineString fromLineString(@NonNull LineString lineString, @Nullable BoundingBox boundingBox) {
        return new MultiLineString(TYPE, boundingBox, Arrays.asList(lineString.coordinates()));
    }

    static MultiLineString fromLngLats(double[][][] dArr) {
        ArrayList arrayList = new ArrayList(dArr.length);
        for (int i2 = 0; i2 < dArr.length; i2++) {
            ArrayList arrayList2 = new ArrayList(dArr[i2].length);
            for (int i3 = 0; i3 < dArr[i2].length; i3++) {
                arrayList2.add(Point.fromLngLat(dArr[i2][i3]));
            }
            arrayList.add(arrayList2);
        }
        return new MultiLineString(TYPE, null, arrayList);
    }

    public static MultiLineString fromLineStrings(@NonNull List<LineString> list, @Nullable BoundingBox boundingBox) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<LineString> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().coordinates());
        }
        return new MultiLineString(TYPE, boundingBox, arrayList);
    }
}

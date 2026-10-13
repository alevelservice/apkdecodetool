package com.mapbox.turf;

import androidx.annotation.NonNull;
import com.mapbox.geojson.LineString;
import com.mapbox.geojson.MultiLineString;
import com.mapbox.geojson.MultiPoint;
import com.mapbox.geojson.MultiPolygon;
import com.mapbox.geojson.Point;
import com.mapbox.geojson.Polygon;
import java.util.ArrayList;
import java.util.List;

/* compiled from: TurfMeta.java */
/* loaded from: classes2.dex */
public final class c {
    @NonNull
    public static List<Point> a(@NonNull Point point) {
        ArrayList arrayList = new ArrayList();
        a(arrayList, point);
        return arrayList;
    }

    @NonNull
    private static List<Point> a(@NonNull List<Point> list, @NonNull Point point) {
        list.add(point);
        return list;
    }

    @NonNull
    public static List<Point> a(@NonNull MultiPoint multiPoint) {
        ArrayList arrayList = new ArrayList();
        a(arrayList, multiPoint);
        return arrayList;
    }

    @NonNull
    private static List<Point> a(@NonNull List<Point> list, @NonNull MultiPoint multiPoint) {
        list.addAll(multiPoint.coordinates());
        return list;
    }

    @NonNull
    public static List<Point> a(@NonNull LineString lineString) {
        ArrayList arrayList = new ArrayList();
        a(arrayList, lineString);
        return arrayList;
    }

    @NonNull
    private static List<Point> a(@NonNull List<Point> list, @NonNull LineString lineString) {
        list.addAll(lineString.coordinates());
        return list;
    }

    @NonNull
    public static List<Point> a(@NonNull Polygon polygon, @NonNull boolean z) {
        ArrayList arrayList = new ArrayList();
        a(arrayList, polygon, z);
        return arrayList;
    }

    @NonNull
    private static List<Point> a(@NonNull List<Point> list, @NonNull Polygon polygon, @NonNull boolean z) {
        for (int i2 = 0; i2 < polygon.coordinates().size(); i2++) {
            for (int i3 = 0; i3 < polygon.coordinates().get(i2).size() - (z ? 1 : 0); i3++) {
                list.add(polygon.coordinates().get(i2).get(i3));
            }
        }
        return list;
    }

    @NonNull
    public static List<Point> a(@NonNull MultiLineString multiLineString) {
        ArrayList arrayList = new ArrayList();
        a(arrayList, multiLineString);
        return arrayList;
    }

    @NonNull
    private static List<Point> a(@NonNull List<Point> list, @NonNull MultiLineString multiLineString) {
        for (int i2 = 0; i2 < multiLineString.coordinates().size(); i2++) {
            list.addAll(multiLineString.coordinates().get(i2));
        }
        return list;
    }

    @NonNull
    public static List<Point> a(@NonNull MultiPolygon multiPolygon, @NonNull boolean z) {
        ArrayList arrayList = new ArrayList();
        a(arrayList, multiPolygon, z);
        return arrayList;
    }

    @NonNull
    private static List<Point> a(@NonNull List<Point> list, @NonNull MultiPolygon multiPolygon, @NonNull boolean z) {
        for (int i2 = 0; i2 < multiPolygon.coordinates().size(); i2++) {
            for (int i3 = 0; i3 < multiPolygon.coordinates().get(i2).size(); i3++) {
                for (int i4 = 0; i4 < multiPolygon.coordinates().get(i2).get(i3).size() - (z ? 1 : 0); i4++) {
                    list.add(multiPolygon.coordinates().get(i2).get(i3).get(i4));
                }
            }
        }
        return list;
    }
}

package com.mapbox.turf;

import androidx.annotation.NonNull;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.GeometryCollection;
import com.mapbox.geojson.LineString;
import com.mapbox.geojson.MultiLineString;
import com.mapbox.geojson.MultiPoint;
import com.mapbox.geojson.MultiPolygon;
import com.mapbox.geojson.Point;
import com.mapbox.geojson.Polygon;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: TurfMeasurement.java */
/* loaded from: classes2.dex */
public final class b {
    public static double a(@NonNull Point point, @NonNull Point point2, @NonNull String str) {
        double pow = Math.pow(Math.sin(a.a(point2.latitude() - point.latitude()) / 2.0d), 2.0d) + (Math.pow(Math.sin(a.a(point2.longitude() - point.longitude()) / 2.0d), 2.0d) * Math.cos(a.a(point.latitude())) * Math.cos(a.a(point2.latitude())));
        return a.a(Math.atan2(Math.sqrt(pow), Math.sqrt(1.0d - pow)) * 2.0d, str);
    }

    public static double[] a(@NonNull Point point) {
        return a(c.a(point));
    }

    public static double[] a(@NonNull LineString lineString) {
        return a(c.a(lineString));
    }

    public static double[] a(@NonNull MultiPoint multiPoint) {
        return a(c.a(multiPoint));
    }

    public static double[] a(@NonNull Polygon polygon) {
        return a(c.a(polygon, false));
    }

    public static double[] a(@NonNull MultiLineString multiLineString) {
        return a(c.a(multiLineString));
    }

    public static double[] a(MultiPolygon multiPolygon) {
        return a(c.a(multiPolygon, false));
    }

    public static double[] a(Geometry geometry) {
        if (geometry instanceof Point) {
            return a((Point) geometry);
        }
        if (geometry instanceof MultiPoint) {
            return a((MultiPoint) geometry);
        }
        if (geometry instanceof LineString) {
            return a((LineString) geometry);
        }
        if (geometry instanceof MultiLineString) {
            return a((MultiLineString) geometry);
        }
        if (geometry instanceof Polygon) {
            return a((Polygon) geometry);
        }
        if (geometry instanceof MultiPolygon) {
            return a((MultiPolygon) geometry);
        }
        if (geometry instanceof GeometryCollection) {
            ArrayList arrayList = new ArrayList();
            Iterator<Geometry> it = ((GeometryCollection) geometry).geometries().iterator();
            while (it.hasNext()) {
                double[] a2 = a(it.next());
                arrayList.add(Point.fromLngLat(a2[0], a2[1]));
                arrayList.add(Point.fromLngLat(a2[2], a2[1]));
                arrayList.add(Point.fromLngLat(a2[2], a2[3]));
                arrayList.add(Point.fromLngLat(a2[0], a2[3]));
            }
            return a(MultiPoint.fromLngLats(arrayList));
        }
        throw new RuntimeException("Unknown geometry class: " + geometry.getClass());
    }

    private static double[] a(List<Point> list) {
        double[] dArr = {Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY, Double.NEGATIVE_INFINITY, Double.NEGATIVE_INFINITY};
        for (Point point : list) {
            if (dArr[0] > point.longitude()) {
                dArr[0] = point.longitude();
            }
            if (dArr[1] > point.latitude()) {
                dArr[1] = point.latitude();
            }
            if (dArr[2] < point.longitude()) {
                dArr[2] = point.longitude();
            }
            if (dArr[3] < point.latitude()) {
                dArr[3] = point.latitude();
            }
        }
        return dArr;
    }
}

package com.mapbox.geojson;

import androidx.annotation.Keep;
import com.google.gson.p;
import com.google.gson.typeadapters.RuntimeTypeAdapterFactory;

@Keep
/* loaded from: classes2.dex */
public abstract class GeometryAdapterFactory implements p {
    private static p geometryTypeFactory;

    public static p create() {
        if (geometryTypeFactory == null) {
            geometryTypeFactory = RuntimeTypeAdapterFactory.of(Geometry.class, "type", true).registerSubtype(GeometryCollection.class, "GeometryCollection").registerSubtype(Point.class, "Point").registerSubtype(MultiPoint.class, "MultiPoint").registerSubtype(LineString.class, "LineString").registerSubtype(MultiLineString.class, "MultiLineString").registerSubtype(Polygon.class, "Polygon").registerSubtype(MultiPolygon.class, "MultiPolygon");
        }
        return geometryTypeFactory;
    }
}

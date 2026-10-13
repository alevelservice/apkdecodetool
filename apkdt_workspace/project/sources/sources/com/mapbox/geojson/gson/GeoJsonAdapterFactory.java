package com.mapbox.geojson.gson;

import androidx.annotation.Keep;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.p;
import com.google.gson.q.a;
import com.mapbox.geojson.BoundingBox;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.GeometryCollection;
import com.mapbox.geojson.LineString;
import com.mapbox.geojson.MultiLineString;
import com.mapbox.geojson.MultiPoint;
import com.mapbox.geojson.MultiPolygon;
import com.mapbox.geojson.Point;
import com.mapbox.geojson.Polygon;

@Keep
/* loaded from: classes2.dex */
public abstract class GeoJsonAdapterFactory implements p {

    /* loaded from: classes2.dex */
    public static final class GeoJsonAdapterFactoryIml extends GeoJsonAdapterFactory {
        @Override // com.google.gson.p
        public <T> TypeAdapter<T> create(Gson gson, a<T> aVar) {
            Class<? super T> rawType = aVar.getRawType();
            if (BoundingBox.class.isAssignableFrom(rawType)) {
                return (TypeAdapter<T>) BoundingBox.typeAdapter(gson);
            }
            if (Feature.class.isAssignableFrom(rawType)) {
                return (TypeAdapter<T>) Feature.typeAdapter(gson);
            }
            if (FeatureCollection.class.isAssignableFrom(rawType)) {
                return (TypeAdapter<T>) FeatureCollection.typeAdapter(gson);
            }
            if (GeometryCollection.class.isAssignableFrom(rawType)) {
                return (TypeAdapter<T>) GeometryCollection.typeAdapter(gson);
            }
            if (LineString.class.isAssignableFrom(rawType)) {
                return (TypeAdapter<T>) LineString.typeAdapter(gson);
            }
            if (MultiLineString.class.isAssignableFrom(rawType)) {
                return (TypeAdapter<T>) MultiLineString.typeAdapter(gson);
            }
            if (MultiPoint.class.isAssignableFrom(rawType)) {
                return (TypeAdapter<T>) MultiPoint.typeAdapter(gson);
            }
            if (MultiPolygon.class.isAssignableFrom(rawType)) {
                return (TypeAdapter<T>) MultiPolygon.typeAdapter(gson);
            }
            if (Polygon.class.isAssignableFrom(rawType)) {
                return (TypeAdapter<T>) Polygon.typeAdapter(gson);
            }
            if (Point.class.isAssignableFrom(rawType)) {
                return (TypeAdapter<T>) Point.typeAdapter(gson);
            }
            return null;
        }
    }

    public static p create() {
        return new GeoJsonAdapterFactoryIml();
    }
}

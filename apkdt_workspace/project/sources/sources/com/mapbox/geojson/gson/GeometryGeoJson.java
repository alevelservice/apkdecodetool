package com.mapbox.geojson.gson;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.google.gson.e;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.GeometryAdapterFactory;

@Keep
/* loaded from: classes2.dex */
public class GeometryGeoJson {
    public static Geometry fromJson(@NonNull String str) {
        e eVar = new e();
        eVar.a(GeoJsonAdapterFactory.create());
        eVar.a(GeometryAdapterFactory.create());
        return (Geometry) eVar.a().a(str, Geometry.class);
    }
}

package com.mapbox.mapboxsdk.location;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.Point;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LayerFeatureProvider.java */
/* loaded from: classes2.dex */
public class g {
    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Feature a(@Nullable Feature feature, boolean z) {
        if (feature != null) {
            return feature;
        }
        Feature fromGeometry = Feature.fromGeometry(Point.fromLngLat(0.0d, 0.0d));
        fromGeometry.addNumberProperty("mapbox-property-gps-bearing", Float.valueOf(0.0f));
        fromGeometry.addNumberProperty("mapbox-property-compass-bearing", Float.valueOf(0.0f));
        fromGeometry.addBooleanProperty("mapbox-property-location-stale", Boolean.valueOf(z));
        return fromGeometry;
    }
}

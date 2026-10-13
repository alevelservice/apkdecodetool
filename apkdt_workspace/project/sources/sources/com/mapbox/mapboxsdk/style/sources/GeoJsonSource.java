package com.mapbox.mapboxsdk.style.sources;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.Geometry;
import java.util.ArrayList;

@UiThread
/* loaded from: classes2.dex */
public class GeoJsonSource extends Source {
    @Keep
    GeoJsonSource(long j2) {
        super(j2);
    }

    @Keep
    private native Feature[] nativeGetClusterChildren(Feature feature);

    @Keep
    private native int nativeGetClusterExpansionZoom(Feature feature);

    @Keep
    private native Feature[] nativeGetClusterLeaves(Feature feature, long j2, long j3);

    @Keep
    private native void nativeSetFeature(Feature feature);

    @Keep
    private native void nativeSetFeatureCollection(FeatureCollection featureCollection);

    @Keep
    private native void nativeSetGeoJsonString(String str);

    @Keep
    private native void nativeSetGeometry(Geometry geometry);

    @NonNull
    @Keep
    private native Feature[] querySourceFeatures(Object[] objArr);

    public void a(Feature feature) {
        if (this.detached) {
            return;
        }
        checkThread();
        nativeSetFeature(feature);
    }

    @Keep
    protected native void finalize();

    @Keep
    protected native void initialize(String str, Object obj);

    @NonNull
    @Keep
    protected native String nativeGetUrl();

    @Keep
    protected native void nativeSetUrl(String str);

    public GeoJsonSource(String str, a aVar) {
        initialize(str, aVar);
        a(FeatureCollection.fromFeatures(new ArrayList()));
    }

    public void a(@Nullable FeatureCollection featureCollection) {
        if (this.detached) {
            return;
        }
        checkThread();
        if (featureCollection != null && featureCollection.features() != null) {
            nativeSetFeatureCollection(FeatureCollection.fromFeatures(new ArrayList(featureCollection.features())));
        } else {
            nativeSetFeatureCollection(featureCollection);
        }
    }

    public GeoJsonSource(String str, Feature feature, a aVar) {
        initialize(str, aVar);
        a(feature);
    }
}

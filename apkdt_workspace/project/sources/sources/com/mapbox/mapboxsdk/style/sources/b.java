package com.mapbox.mapboxsdk.style.sources;

import androidx.annotation.WorkerThread;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;

/* compiled from: GeometryTileProvider.java */
/* loaded from: classes2.dex */
public interface b {
    @WorkerThread
    FeatureCollection a(LatLngBounds latLngBounds, int i2);
}

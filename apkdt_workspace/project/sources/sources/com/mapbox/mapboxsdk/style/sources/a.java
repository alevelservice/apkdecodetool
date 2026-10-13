package com.mapbox.mapboxsdk.style.sources;

import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.u.a.a;
import java.util.HashMap;

/* compiled from: GeoJsonOptions.java */
/* loaded from: classes2.dex */
public class a extends HashMap<String, Object> {
    @NonNull
    public a withBuffer(int i2) {
        put("buffer", Integer.valueOf(i2));
        return this;
    }

    @NonNull
    public a withCluster(boolean z) {
        put("cluster", Boolean.valueOf(z));
        return this;
    }

    @NonNull
    public a withClusterMaxZoom(int i2) {
        put("clusterMaxZoom", Integer.valueOf(i2));
        return this;
    }

    @NonNull
    public a withClusterProperty(String str, com.mapbox.mapboxsdk.u.a.a aVar, com.mapbox.mapboxsdk.u.a.a aVar2) {
        HashMap hashMap = containsKey("clusterProperties") ? (HashMap) get("clusterProperties") : new HashMap();
        hashMap.put(str, new Object[]{aVar instanceof a.b ? ((a.b) aVar).a() : aVar.b(), aVar2.b()});
        put("clusterProperties", hashMap);
        return this;
    }

    @NonNull
    public a withClusterRadius(int i2) {
        put("clusterRadius", Integer.valueOf(i2));
        return this;
    }

    @NonNull
    public a withLineMetrics(boolean z) {
        put("lineMetrics", Boolean.valueOf(z));
        return this;
    }

    @NonNull
    public a withMaxZoom(int i2) {
        put("maxzoom", Integer.valueOf(i2));
        return this;
    }

    @NonNull
    public a withMinZoom(int i2) {
        put("minzoom", Integer.valueOf(i2));
        return this;
    }

    @NonNull
    public a withTolerance(float f2) {
        put("tolerance", Float.valueOf(f2));
        return this;
    }
}

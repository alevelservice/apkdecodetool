package com.mapbox.mapboxsdk.location;

import androidx.annotation.NonNull;
import com.mapbox.geojson.Feature;
import com.mapbox.mapboxsdk.style.layers.CircleLayer;
import com.mapbox.mapboxsdk.style.layers.Layer;
import com.mapbox.mapboxsdk.style.layers.SymbolLayer;
import com.mapbox.mapboxsdk.style.layers.TransitionOptions;
import com.mapbox.mapboxsdk.style.sources.GeoJsonSource;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LayerSourceProvider.java */
/* loaded from: classes2.dex */
public class h {
    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public GeoJsonSource a(Feature feature) {
        return new GeoJsonSource("mapbox-location-source", feature, new com.mapbox.mapboxsdk.style.sources.a().withMaxZoom(16));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Layer b() {
        LocationIndicatorLayer locationIndicatorLayer = new LocationIndicatorLayer("mapbox-location-foreground-layer");
        locationIndicatorLayer.a(new TransitionOptions(0L, 0L));
        locationIndicatorLayer.a(q.c(Float.valueOf(0.9f)), q.b(Float.valueOf(4.0f)));
        return locationIndicatorLayer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Layer c() {
        return new CircleLayer("mapbox-location-pulsing-circle-layer", "mapbox-location-source").b(com.mapbox.mapboxsdk.style.layers.c.a("map"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<String> d() {
        return new HashSet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p e() {
        return new d(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Layer a(@NonNull String str) {
        SymbolLayer symbolLayer = new SymbolLayer(str, "mapbox-location-source");
        com.mapbox.mapboxsdk.u.a.a b2 = com.mapbox.mapboxsdk.u.a.a.b(str);
        Float valueOf = Float.valueOf(0.0f);
        symbolLayer.a(com.mapbox.mapboxsdk.style.layers.c.a((Boolean) true), com.mapbox.mapboxsdk.style.layers.c.b((Boolean) true), com.mapbox.mapboxsdk.style.layers.c.b("map"), com.mapbox.mapboxsdk.style.layers.c.t(com.mapbox.mapboxsdk.u.a.a.a(b2, com.mapbox.mapboxsdk.u.a.a.a((Number) valueOf), com.mapbox.mapboxsdk.u.a.a.a("mapbox-location-foreground-layer", com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-gps-bearing")), com.mapbox.mapboxsdk.u.a.a.a("mapbox-location-background-layer", com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-gps-bearing")), com.mapbox.mapboxsdk.u.a.a.a("mapbox-location-shadow-layer", com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-gps-bearing")), com.mapbox.mapboxsdk.u.a.a.a("mapbox-location-bearing-layer", com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-compass-bearing")))), com.mapbox.mapboxsdk.style.layers.c.q(com.mapbox.mapboxsdk.u.a.a.a(com.mapbox.mapboxsdk.u.a.a.b(str), com.mapbox.mapboxsdk.u.a.a.b(""), com.mapbox.mapboxsdk.u.a.a.a("mapbox-location-foreground-layer", com.mapbox.mapboxsdk.u.a.a.b(com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-location-stale"), com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-foreground-stale-icon"), com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-foreground-icon"))), com.mapbox.mapboxsdk.u.a.a.a("mapbox-location-background-layer", com.mapbox.mapboxsdk.u.a.a.b(com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-location-stale"), com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-background-stale-icon"), com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-background-icon"))), com.mapbox.mapboxsdk.u.a.a.a("mapbox-location-shadow-layer", com.mapbox.mapboxsdk.u.a.a.b("mapbox-location-shadow-icon")), com.mapbox.mapboxsdk.u.a.a.a("mapbox-location-bearing-layer", com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-shadow-icon")))), com.mapbox.mapboxsdk.style.layers.c.r(com.mapbox.mapboxsdk.u.a.a.a(com.mapbox.mapboxsdk.u.a.a.b(str), com.mapbox.mapboxsdk.u.a.a.a((Object[]) new Float[]{valueOf, valueOf}), com.mapbox.mapboxsdk.u.a.a.a(com.mapbox.mapboxsdk.u.a.a.b("mapbox-location-foreground-layer"), com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-foreground-icon-offset")), com.mapbox.mapboxsdk.u.a.a.a(com.mapbox.mapboxsdk.u.a.a.b("mapbox-location-shadow-layer"), com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-shadow-icon-offset")))));
        return symbolLayer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Layer a() {
        return new CircleLayer("mapbox-location-accuracy-layer", "mapbox-location-source").b(com.mapbox.mapboxsdk.style.layers.c.d(com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-accuracy-radius")), com.mapbox.mapboxsdk.style.layers.c.b(com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-accuracy-color")), com.mapbox.mapboxsdk.style.layers.c.c(com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-accuracy-alpha")), com.mapbox.mapboxsdk.style.layers.c.e(com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-accuracy-color")), com.mapbox.mapboxsdk.style.layers.c.a("map"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p a(g gVar, boolean z) {
        return new f0(this, gVar, z);
    }
}

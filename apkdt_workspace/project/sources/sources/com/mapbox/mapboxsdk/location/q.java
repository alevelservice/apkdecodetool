package com.mapbox.mapboxsdk.location;

/* compiled from: LocationPropertyFactory.java */
/* loaded from: classes2.dex */
class q {
    public static com.mapbox.mapboxsdk.style.layers.d<Double> a(Double d2) {
        return new com.mapbox.mapboxsdk.style.layers.b("bearing", d2);
    }

    public static com.mapbox.mapboxsdk.style.layers.d<Float> b(Float f2) {
        return new com.mapbox.mapboxsdk.style.layers.b("image-tilt-displacement", f2);
    }

    public static com.mapbox.mapboxsdk.style.layers.d<Float> c(Float f2) {
        return new com.mapbox.mapboxsdk.style.layers.b("perspective-compensation", f2);
    }

    public static com.mapbox.mapboxsdk.style.layers.d<String> d(String str) {
        return new com.mapbox.mapboxsdk.style.layers.a("visibility", str);
    }

    public static com.mapbox.mapboxsdk.style.layers.d<com.mapbox.mapboxsdk.u.a.a> e(com.mapbox.mapboxsdk.u.a.a aVar) {
        return new com.mapbox.mapboxsdk.style.layers.b("top-image-size", aVar);
    }

    public static com.mapbox.mapboxsdk.style.layers.d<Double[]> a(Double[] dArr) {
        return new com.mapbox.mapboxsdk.style.layers.b("location", dArr);
    }

    public static com.mapbox.mapboxsdk.style.layers.d<com.mapbox.mapboxsdk.u.a.a> b(com.mapbox.mapboxsdk.u.a.a aVar) {
        return new com.mapbox.mapboxsdk.style.layers.b("accuracy-radius-color", aVar);
    }

    public static com.mapbox.mapboxsdk.style.layers.d<com.mapbox.mapboxsdk.u.a.a> c(com.mapbox.mapboxsdk.u.a.a aVar) {
        return new com.mapbox.mapboxsdk.style.layers.b("bearing-image-size", aVar);
    }

    public static com.mapbox.mapboxsdk.style.layers.d<com.mapbox.mapboxsdk.u.a.a> d(com.mapbox.mapboxsdk.u.a.a aVar) {
        return new com.mapbox.mapboxsdk.style.layers.b("shadow-image-size", aVar);
    }

    public static com.mapbox.mapboxsdk.style.layers.d<Float> a(Float f2) {
        return new com.mapbox.mapboxsdk.style.layers.b("accuracy-radius", f2);
    }

    public static com.mapbox.mapboxsdk.style.layers.d<String> b(String str) {
        return new com.mapbox.mapboxsdk.style.layers.a("shadow-image", str);
    }

    public static com.mapbox.mapboxsdk.style.layers.d<String> c(String str) {
        return new com.mapbox.mapboxsdk.style.layers.a("top-image", str);
    }

    public static com.mapbox.mapboxsdk.style.layers.d<com.mapbox.mapboxsdk.u.a.a> a(com.mapbox.mapboxsdk.u.a.a aVar) {
        return new com.mapbox.mapboxsdk.style.layers.b("accuracy-radius-border-color", aVar);
    }

    public static com.mapbox.mapboxsdk.style.layers.d<String> a(String str) {
        return new com.mapbox.mapboxsdk.style.layers.a("bearing-image", str);
    }
}

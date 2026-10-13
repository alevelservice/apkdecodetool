package e.m.b;

import com.mapbox.geojson.Point;
import com.mapbox.mapboxsdk.geometry.LatLng;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CircleBuilder.java */
/* loaded from: classes2.dex */
public class f implements h {

    /* renamed from: a, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.t.a.e f18061a;

    /* renamed from: b, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.t.a.f f18062b = new com.mapbox.mapboxsdk.t.a.f();

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(com.mapbox.mapboxsdk.t.a.e eVar) {
        this.f18061a = eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.mapbox.mapboxsdk.t.a.c a() {
        return this.f18061a.a((com.mapbox.mapboxsdk.t.a.e) this.f18062b);
    }

    @Override // e.m.b.h
    public void b(float f2) {
        this.f18062b.b(Float.valueOf(f2));
    }

    @Override // e.m.b.h
    public void c(float f2) {
        this.f18062b.e(Float.valueOf(f2));
    }

    @Override // e.m.b.h
    public void d(float f2) {
        this.f18062b.d(Float.valueOf(f2));
    }

    @Override // e.m.b.h
    public void e(float f2) {
        this.f18062b.a(Float.valueOf(f2));
    }

    @Override // e.m.b.h
    public void a(float f2) {
        this.f18062b.c(Float.valueOf(f2));
    }

    @Override // e.m.b.h
    public void b(String str) {
        this.f18062b.b(str);
    }

    @Override // e.m.b.h
    public void a(String str) {
        this.f18062b.a(str);
    }

    @Override // e.m.b.h
    public void a(LatLng latLng) {
        this.f18062b.a(Point.fromLngLat(latLng.b(), latLng.a()));
    }

    @Override // e.m.b.h
    public void a(boolean z) {
        this.f18062b.a(z);
    }
}

package e.m.b;

import android.graphics.Color;
import com.mapbox.geojson.Point;
import com.mapbox.mapboxsdk.geometry.LatLng;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CircleController.java */
/* loaded from: classes2.dex */
public class g implements h {

    /* renamed from: a, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.t.a.c f18063a;

    /* renamed from: b, reason: collision with root package name */
    private final v f18064b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f18065c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(com.mapbox.mapboxsdk.t.a.c cVar, boolean z, v vVar) {
        this.f18063a = cVar;
        this.f18065c = z;
        this.f18064b = vVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.mapbox.mapboxsdk.t.a.e eVar) {
        eVar.a((com.mapbox.mapboxsdk.t.a.e) this.f18063a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        v vVar = this.f18064b;
        if (vVar != null) {
            vVar.a(this.f18063a);
        }
        return this.f18065c;
    }

    @Override // e.m.b.h
    public void c(float f2) {
        this.f18063a.e(Float.valueOf(f2));
    }

    @Override // e.m.b.h
    public void d(float f2) {
        this.f18063a.d(Float.valueOf(f2));
    }

    @Override // e.m.b.h
    public void e(float f2) {
        this.f18063a.a(Float.valueOf(f2));
    }

    @Override // e.m.b.h
    public void a(float f2) {
        this.f18063a.c(Float.valueOf(f2));
    }

    @Override // e.m.b.h
    public void a(String str) {
        this.f18063a.a(Color.parseColor(str));
    }

    @Override // e.m.b.h
    public void a(LatLng latLng) {
        this.f18063a.a((com.mapbox.mapboxsdk.t.a.c) Point.fromLngLat(latLng.b(), latLng.a()));
    }

    @Override // e.m.b.h
    public void b(float f2) {
        this.f18063a.b(Float.valueOf(f2));
    }

    public LatLng a() {
        Point b2 = this.f18063a.b();
        return new LatLng(b2.latitude(), b2.longitude());
    }

    @Override // e.m.b.h
    public void b(String str) {
        this.f18063a.b(Color.parseColor(str));
    }

    public void b(com.mapbox.mapboxsdk.t.a.e eVar) {
        eVar.b((com.mapbox.mapboxsdk.t.a.e) this.f18063a);
    }

    @Override // e.m.b.h
    public void a(boolean z) {
        this.f18063a.a(z);
    }
}

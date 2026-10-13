package e.m.b;

import android.graphics.Color;
import android.graphics.PointF;
import com.mapbox.geojson.Point;
import com.mapbox.mapboxsdk.geometry.LatLng;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SymbolController.java */
/* loaded from: classes2.dex */
public class a0 implements b0 {

    /* renamed from: a, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.t.a.z f18053a;

    /* renamed from: b, reason: collision with root package name */
    private final y f18054b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f18055c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(com.mapbox.mapboxsdk.t.a.z zVar, boolean z, y yVar) {
        this.f18053a = zVar;
        this.f18055c = z;
        this.f18054b = yVar;
    }

    @Override // e.m.b.b0
    public void a(float[] fArr) {
        this.f18053a.a(new PointF(fArr[0], fArr[1]));
    }

    public com.mapbox.mapboxsdk.t.a.z b() {
        return this.f18053a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        y yVar = this.f18054b;
        if (yVar != null) {
            yVar.a(this.f18053a);
        }
        return this.f18055c;
    }

    @Override // e.m.b.b0
    public void d(float f2) {
        this.f18053a.m(Float.valueOf(f2));
    }

    @Override // e.m.b.b0
    public void e(String str) {
        this.f18053a.a(Color.parseColor(str));
    }

    @Override // e.m.b.b0
    public void f(float f2) {
        this.f18053a.a(Float.valueOf(f2));
    }

    @Override // e.m.b.b0
    public void g(String str) {
        this.f18053a.b(str);
    }

    @Override // e.m.b.b0
    public void h(String str) {
        this.f18053a.a(str);
    }

    @Override // e.m.b.b0
    public void i(float f2) {
        this.f18053a.e(Float.valueOf(f2));
    }

    @Override // e.m.b.b0
    public void j(String str) {
        this.f18053a.d(str);
    }

    @Override // e.m.b.b0
    public void k(float f2) {
        this.f18053a.d(Float.valueOf(f2));
    }

    @Override // e.m.b.b0
    public void l(float f2) {
        this.f18053a.b(Float.valueOf(f2));
    }

    @Override // e.m.b.b0
    public void m(float f2) {
        this.f18053a.i(Float.valueOf(f2));
    }

    @Override // e.m.b.b0
    public void a(String[] strArr) {
        this.f18053a.a(strArr);
    }

    @Override // e.m.b.b0
    public void b(float f2) {
        this.f18053a.j(Float.valueOf(f2));
    }

    @Override // e.m.b.b0
    public void d(String str) {
        this.f18053a.f(str);
    }

    @Override // e.m.b.b0
    public void e(float f2) {
        this.f18053a.h(Float.valueOf(f2));
    }

    @Override // e.m.b.b0
    public void f(String str) {
        this.f18053a.c(Color.parseColor(str));
    }

    @Override // e.m.b.b0
    public void g(float f2) {
        this.f18053a.k(Float.valueOf(f2));
    }

    @Override // e.m.b.b0
    public void h(float f2) {
        this.f18053a.f(Float.valueOf(f2));
    }

    @Override // e.m.b.b0
    public void i(String str) {
        this.f18053a.d(Color.parseColor(str));
    }

    @Override // e.m.b.b0
    public void j(float f2) {
        this.f18053a.c(Float.valueOf(f2));
    }

    @Override // e.m.b.b0
    public void a(String str) {
        this.f18053a.e(str);
    }

    @Override // e.m.b.b0
    public void b(float[] fArr) {
        this.f18053a.b(new PointF(fArr[0], fArr[1]));
    }

    @Override // e.m.b.b0
    public void a(float f2) {
        this.f18053a.g(Float.valueOf(f2));
    }

    @Override // e.m.b.b0
    public void b(String str) {
        this.f18053a.b(Color.parseColor(str));
    }

    @Override // e.m.b.b0
    public void c(String str) {
        this.f18053a.c(str);
    }

    @Override // e.m.b.b0
    public void a(LatLng latLng) {
        this.f18053a.a((com.mapbox.mapboxsdk.t.a.z) Point.fromLngLat(latLng.b(), latLng.a()));
    }

    @Override // e.m.b.b0
    public void c(float f2) {
        this.f18053a.l(Float.valueOf(f2));
    }

    public LatLng a() {
        Point b2 = this.f18053a.b();
        return new LatLng(b2.latitude(), b2.longitude());
    }

    @Override // e.m.b.b0
    public void a(boolean z) {
        this.f18053a.a(z);
    }

    public void a(com.mapbox.mapboxsdk.t.a.b0 b0Var) {
        b0Var.b((com.mapbox.mapboxsdk.t.a.b0) this.f18053a);
    }
}

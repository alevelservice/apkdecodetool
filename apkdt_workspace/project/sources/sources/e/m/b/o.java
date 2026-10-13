package e.m.b;

import com.mapbox.geojson.Point;
import com.mapbox.mapboxsdk.geometry.LatLng;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LineController.java */
/* loaded from: classes2.dex */
public class o implements p {

    /* renamed from: a, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.t.a.n f18074a;

    /* renamed from: b, reason: collision with root package name */
    private final x f18075b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f18076c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(com.mapbox.mapboxsdk.t.a.n nVar, boolean z, x xVar) {
        this.f18074a = nVar;
        this.f18076c = z;
        this.f18075b = xVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.mapbox.mapboxsdk.t.a.p pVar) {
        pVar.a((com.mapbox.mapboxsdk.t.a.p) this.f18074a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        x xVar = this.f18075b;
        if (xVar != null) {
            xVar.a(this.f18074a);
        }
        return this.f18076c;
    }

    @Override // e.m.b.p
    public void c(float f2) {
        this.f18074a.d(Float.valueOf(f2));
    }

    @Override // e.m.b.p
    public void d(float f2) {
        this.f18074a.c(Float.valueOf(f2));
    }

    @Override // e.m.b.p
    public void e(float f2) {
        this.f18074a.a(Float.valueOf(f2));
    }

    @Override // e.m.b.p
    public void a(String str) {
        this.f18074a.a(str);
    }

    @Override // e.m.b.p
    public void c(String str) {
        this.f18074a.a(com.mapbox.mapboxsdk.utils.b.a(str));
    }

    @Override // e.m.b.p
    public void a(float f2) {
        this.f18074a.b(Float.valueOf(f2));
    }

    @Override // e.m.b.p
    public void a(List<LatLng> list) {
        this.f18074a.a(list);
    }

    @Override // e.m.b.p
    public void b(float f2) {
        this.f18074a.e(Float.valueOf(f2));
    }

    public List<LatLng> a() {
        List<Point> coordinates = this.f18074a.b().coordinates();
        ArrayList arrayList = new ArrayList();
        for (Point point : coordinates) {
            arrayList.add(new LatLng(point.latitude(), point.longitude()));
        }
        return arrayList;
    }

    @Override // e.m.b.p
    public void b(String str) {
        this.f18074a.b(str);
    }

    public void b(com.mapbox.mapboxsdk.t.a.p pVar) {
        pVar.b((com.mapbox.mapboxsdk.t.a.p) this.f18074a);
    }

    @Override // e.m.b.p
    public void a(boolean z) {
        this.f18074a.a(z);
    }
}

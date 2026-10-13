package e.m.b;

import com.mapbox.mapboxsdk.geometry.LatLng;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LineBuilder.java */
/* loaded from: classes2.dex */
public class n implements p {

    /* renamed from: a, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.t.a.p f18072a;

    /* renamed from: b, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.t.a.q f18073b = new com.mapbox.mapboxsdk.t.a.q();

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(com.mapbox.mapboxsdk.t.a.p pVar) {
        this.f18072a = pVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.mapbox.mapboxsdk.t.a.n a() {
        return this.f18072a.a((com.mapbox.mapboxsdk.t.a.p) this.f18073b);
    }

    @Override // e.m.b.p
    public void b(float f2) {
        this.f18073b.e(Float.valueOf(f2));
    }

    @Override // e.m.b.p
    public void c(float f2) {
        this.f18073b.d(Float.valueOf(f2));
    }

    @Override // e.m.b.p
    public void d(float f2) {
        this.f18073b.c(Float.valueOf(f2));
    }

    @Override // e.m.b.p
    public void e(float f2) {
        this.f18073b.a(Float.valueOf(f2));
    }

    @Override // e.m.b.p
    public void a(String str) {
        this.f18073b.b(str);
    }

    @Override // e.m.b.p
    public void b(String str) {
        this.f18073b.c(str);
    }

    @Override // e.m.b.p
    public void c(String str) {
        this.f18073b.a(str);
    }

    @Override // e.m.b.p
    public void a(float f2) {
        this.f18073b.b(Float.valueOf(f2));
    }

    @Override // e.m.b.p
    public void a(List<LatLng> list) {
        this.f18073b.a(list);
    }

    @Override // e.m.b.p
    public void a(boolean z) {
        this.f18073b.a(z);
    }
}

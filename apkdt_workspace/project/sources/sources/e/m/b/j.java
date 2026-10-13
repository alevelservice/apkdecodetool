package e.m.b;

import com.mapbox.mapboxsdk.geometry.LatLng;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FillBuilder.java */
/* loaded from: classes2.dex */
public class j implements l {

    /* renamed from: a, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.t.a.l f18066a;

    /* renamed from: b, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.t.a.m f18067b = new com.mapbox.mapboxsdk.t.a.m();

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(com.mapbox.mapboxsdk.t.a.l lVar) {
        this.f18066a = lVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.mapbox.mapboxsdk.t.a.j a() {
        return this.f18066a.a((com.mapbox.mapboxsdk.t.a.l) this.f18067b);
    }

    @Override // e.m.b.l
    public void b(String str) {
        this.f18067b.c(str);
    }

    @Override // e.m.b.l
    public void c(String str) {
        this.f18067b.a(str);
    }

    @Override // e.m.b.l
    public void a(float f2) {
        this.f18067b.a(Float.valueOf(f2));
    }

    @Override // e.m.b.l
    public void a(String str) {
        this.f18067b.b(str);
    }

    @Override // e.m.b.l
    public void a(List<List<LatLng>> list) {
        this.f18067b.a(i.a(list));
    }

    @Override // e.m.b.l
    public void a(boolean z) {
        this.f18067b.a(z);
    }
}

package e.m.b;

import android.graphics.Color;
import com.mapbox.mapboxsdk.geometry.LatLng;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FillController.java */
/* loaded from: classes2.dex */
public class k implements l {

    /* renamed from: a, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.t.a.j f18068a;

    /* renamed from: b, reason: collision with root package name */
    private final w f18069b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f18070c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(com.mapbox.mapboxsdk.t.a.j jVar, boolean z, w wVar) {
        this.f18068a = jVar;
        this.f18070c = z;
        this.f18069b = wVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        w wVar = this.f18069b;
        if (wVar != null) {
            wVar.a(this.f18068a);
        }
        return this.f18070c;
    }

    @Override // e.m.b.l
    public void b(String str) {
        this.f18068a.a(str);
    }

    @Override // e.m.b.l
    public void c(String str) {
        this.f18068a.a(Color.parseColor(str));
    }

    public void b(com.mapbox.mapboxsdk.t.a.l lVar) {
        lVar.b((com.mapbox.mapboxsdk.t.a.l) this.f18068a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.mapbox.mapboxsdk.t.a.l lVar) {
        lVar.a((com.mapbox.mapboxsdk.t.a.l) this.f18068a);
    }

    @Override // e.m.b.l
    public void a(float f2) {
        this.f18068a.a(Float.valueOf(f2));
    }

    @Override // e.m.b.l
    public void a(String str) {
        this.f18068a.b(Color.parseColor(str));
    }

    @Override // e.m.b.l
    public void a(List<List<LatLng>> list) {
        this.f18068a.a((com.mapbox.mapboxsdk.t.a.j) i.a(list));
    }

    @Override // e.m.b.l
    public void a(boolean z) {
        this.f18068a.a(z);
    }
}

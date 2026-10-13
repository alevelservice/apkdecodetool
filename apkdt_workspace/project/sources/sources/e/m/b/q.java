package e.m.b;

import android.content.Context;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.maps.MapboxMapOptions;
import g.a.c.a.m;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: MapboxMapBuilder.java */
/* loaded from: classes2.dex */
class q implements t {

    /* renamed from: e, reason: collision with root package name */
    public final String f18077e = q.class.getSimpleName();

    /* renamed from: f, reason: collision with root package name */
    private final MapboxMapOptions f18078f = new MapboxMapOptions().m(true).a(true);

    /* renamed from: g, reason: collision with root package name */
    private boolean f18079g = false;

    /* renamed from: h, reason: collision with root package name */
    private boolean f18080h = false;

    /* renamed from: i, reason: collision with root package name */
    private int f18081i = 0;

    /* renamed from: j, reason: collision with root package name */
    private int f18082j = 0;

    /* renamed from: k, reason: collision with root package name */
    private String f18083k = "mapbox://styles/mapbox/streets-v11";

    /* JADX INFO: Access modifiers changed from: package-private */
    public r a(int i2, Context context, AtomicInteger atomicInteger, m.d dVar, String str) {
        r rVar = new r(i2, context, atomicInteger, dVar, this.f18078f, str, this.f18083k);
        rVar.g();
        rVar.g(this.f18080h);
        rVar.e(this.f18081i);
        rVar.b(this.f18082j);
        rVar.b(this.f18079g);
        return rVar;
    }

    @Override // e.m.b.t
    public void a(LatLngBounds latLngBounds) {
    }

    @Override // e.m.b.t
    public void b(boolean z) {
        this.f18079g = z;
    }

    @Override // e.m.b.t
    public void c(boolean z) {
        this.f18078f.n(z);
    }

    @Override // e.m.b.t
    public void d(boolean z) {
        this.f18078f.p(z);
    }

    @Override // e.m.b.t
    public void e(boolean z) {
        this.f18078f.j(z);
    }

    @Override // e.m.b.t
    public void f(boolean z) {
        this.f18078f.k(z);
    }

    @Override // e.m.b.t
    public void g(boolean z) {
        this.f18080h = z;
    }

    @Override // e.m.b.t
    public void b(int i2) {
        this.f18082j = i2;
    }

    @Override // e.m.b.t
    public void c(int i2, int i3) {
        this.f18078f.c(new int[]{i2, 0, 0, i3});
    }

    @Override // e.m.b.t
    public void d(int i2) {
        if (i2 == 0) {
            this.f18078f.c(8388659);
            return;
        }
        if (i2 == 2) {
            this.f18078f.c(8388691);
        } else if (i2 != 3) {
            this.f18078f.c(8388661);
        } else {
            this.f18078f.c(8388693);
        }
    }

    @Override // e.m.b.t
    public void e(int i2) {
        this.f18081i = i2;
    }

    @Override // e.m.b.t
    public void b(int i2, int i3) {
        int i4 = this.f18078f.i();
        if (i4 == 8388659) {
            this.f18078f.b(new int[]{i2, i3, 0, 0});
            return;
        }
        if (i4 == 8388691) {
            this.f18078f.b(new int[]{i2, 0, 0, i3});
        } else if (i4 != 8388693) {
            this.f18078f.b(new int[]{0, i3, i2, 0});
        } else {
            this.f18078f.b(new int[]{0, 0, i2, i3});
        }
    }

    public void a(CameraPosition cameraPosition) {
        this.f18078f.a(cameraPosition);
    }

    @Override // e.m.b.t
    public void a(boolean z) {
        this.f18078f.b(z);
    }

    @Override // e.m.b.t
    public void a(String str) {
        this.f18083k = str;
    }

    @Override // e.m.b.t
    public void a(Float f2, Float f3) {
        if (f2 != null) {
            this.f18078f.d(f2.floatValue());
        }
        if (f3 != null) {
            this.f18078f.b(f3.floatValue());
        }
    }

    @Override // e.m.b.t
    public void a(int i2, int i3) {
        this.f18078f.a(new int[]{i2, 0, 0, i3});
    }
}

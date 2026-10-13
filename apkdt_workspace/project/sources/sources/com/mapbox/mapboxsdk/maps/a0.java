package com.mapbox.mapboxsdk.maps;

import android.graphics.PointF;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.n;

/* compiled from: Transform.java */
/* loaded from: classes2.dex */
public final class a0 implements MapView.l {

    /* renamed from: a, reason: collision with root package name */
    private final q f15975a;

    /* renamed from: b, reason: collision with root package name */
    private final MapView f15976b;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private CameraPosition f15978d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private n.a f15979e;

    /* renamed from: f, reason: collision with root package name */
    private e f15980f;

    /* renamed from: c, reason: collision with root package name */
    private final Handler f15977c = new Handler();

    /* renamed from: g, reason: collision with root package name */
    private final MapView.l f15981g = new a();

    /* compiled from: Transform.java */
    /* loaded from: classes2.dex */
    class a implements MapView.l {
        a() {
        }

        @Override // com.mapbox.mapboxsdk.maps.MapView.l
        public void a(boolean z) {
            if (z) {
                a0.this.f15980f.e();
                a0.this.f15976b.removeOnCameraDidChangeListener(this);
            }
        }
    }

    /* compiled from: Transform.java */
    /* loaded from: classes2.dex */
    class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ n.a f15983e;

        b(a0 a0Var, n.a aVar) {
            this.f15983e = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15983e.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Transform.java */
    /* loaded from: classes2.dex */
    public class c implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ n.a f15984e;

        c(a0 a0Var, n.a aVar) {
            this.f15984e = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            n.a aVar = this.f15984e;
            if (aVar != null) {
                aVar.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Transform.java */
    /* loaded from: classes2.dex */
    public class d implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ n.a f15985e;

        d(a0 a0Var, n.a aVar) {
            this.f15985e = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15985e.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(MapView mapView, q qVar, e eVar) {
        this.f15976b = mapView;
        this.f15975a = qVar;
        this.f15980f = eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double c() {
        return this.f15975a.getMaxZoom();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(double d2) {
        if (d2 < 0.0d || d2 > 25.5d) {
            Logger.e("Mbgl-Transform", String.format("Not setting minZoomPreference, value is in unsupported range: %s", Double.valueOf(d2)));
        } else {
            this.f15975a.d(d2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double e() {
        return this.f15975a.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double f() {
        return this.f15975a.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double g() {
        return this.f15975a.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @UiThread
    public CameraPosition h() {
        q qVar = this.f15975a;
        if (qVar != null) {
            CameraPosition d2 = qVar.d();
            CameraPosition cameraPosition = this.f15978d;
            if (cameraPosition != null && !cameraPosition.equals(d2)) {
                this.f15980f.a();
            }
            this.f15978d = d2;
        }
        return this.f15978d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull n nVar, @NonNull MapboxMapOptions mapboxMapOptions) {
        CameraPosition f2 = mapboxMapOptions.f();
        if (f2 != null && !f2.equals(CameraPosition.f15732e)) {
            a(nVar, com.mapbox.mapboxsdk.camera.b.a(f2), (n.a) null);
        }
        d(mapboxMapOptions.x());
        b(mapboxMapOptions.v());
        c(mapboxMapOptions.w());
        a(mapboxMapOptions.u());
    }

    @Nullable
    @UiThread
    public final CameraPosition b() {
        if (this.f15978d == null) {
            this.f15978d = h();
        }
        return this.f15978d;
    }

    void c(double d2) {
        if (d2 < 0.0d || d2 > 60.0d) {
            Logger.e("Mbgl-Transform", String.format("Not setting minPitchPreference, value is in unsupported range: %s", Double.valueOf(d2)));
        } else {
            this.f15975a.e(d2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double d() {
        return this.f15975a.getMinZoom();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(double d2, @NonNull PointF pointF) {
        a(this.f15975a.g() + d2, pointF);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        this.f15975a.c(z);
        if (z) {
            return;
        }
        h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(double d2) {
        if (d2 < 0.0d || d2 > 25.5d) {
            Logger.e("Mbgl-Transform", String.format("Not setting maxZoomPreference, value is in unsupported range: %s", Double.valueOf(d2)));
        } else {
            this.f15975a.b(d2);
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.MapView.l
    public void a(boolean z) {
        if (z) {
            h();
            n.a aVar = this.f15979e;
            if (aVar != null) {
                this.f15979e = null;
                this.f15977c.post(new b(this, aVar));
            }
            this.f15980f.e();
            this.f15976b.removeOnCameraDidChangeListener(this);
        }
    }

    @UiThread
    public final void a(@NonNull n nVar, com.mapbox.mapboxsdk.camera.a aVar, @Nullable n.a aVar2) {
        CameraPosition a2 = aVar.a(nVar);
        if (!a(a2)) {
            if (aVar2 != null) {
                aVar2.a();
            }
        } else {
            a();
            this.f15980f.c(3);
            this.f15975a.a(a2.target, a2.zoom, a2.tilt, a2.bearing, a2.padding);
            this.f15980f.e();
            h();
            this.f15977c.post(new c(this, aVar2));
        }
    }

    @UiThread
    public final void a(@NonNull n nVar, com.mapbox.mapboxsdk.camera.a aVar, int i2, @Nullable n.a aVar2) {
        CameraPosition a2 = aVar.a(nVar);
        if (!a(a2)) {
            if (aVar2 != null) {
                aVar2.a();
            }
        } else {
            a();
            this.f15980f.c(3);
            if (aVar2 != null) {
                this.f15979e = aVar2;
            }
            this.f15976b.addOnCameraDidChangeListener(this);
            this.f15975a.a(a2.target, a2.zoom, a2.bearing, a2.tilt, a2.padding, i2);
        }
    }

    private boolean a(@Nullable CameraPosition cameraPosition) {
        return (cameraPosition == null || cameraPosition.equals(this.f15978d)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f15980f.b();
        n.a aVar = this.f15979e;
        if (aVar != null) {
            this.f15980f.e();
            this.f15979e = null;
            this.f15977c.post(new d(this, aVar));
        }
        this.f15975a.b();
        this.f15980f.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(double d2, @NonNull PointF pointF) {
        this.f15975a.a(d2, pointF, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(double d2, float f2, float f3) {
        this.f15975a.a(d2, f2, f3, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(double d2, float f2, float f3, long j2) {
        this.f15975a.a(d2, f2, f3, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Double d2) {
        this.f15975a.a(d2.doubleValue(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(double d2, double d3, long j2) {
        if (j2 > 0) {
            this.f15976b.addOnCameraDidChangeListener(this.f15981g);
        }
        this.f15975a.a(d2, d3, j2);
    }

    void a(double d2) {
        if (d2 < 0.0d || d2 > 60.0d) {
            Logger.e("Mbgl-Transform", String.format("Not setting maxPitchPreference, value is in unsupported range: %s", Double.valueOf(d2)));
        } else {
            this.f15975a.c(d2);
        }
    }
}

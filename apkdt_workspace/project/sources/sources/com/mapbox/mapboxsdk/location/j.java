package com.mapbox.mapboxsdk.location;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.RectF;
import android.location.Location;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.mapbox.android.gestures.AndroidGesturesManager;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.location.r;
import com.mapbox.mapboxsdk.maps.n;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LocationCameraController.java */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    private int f15820a;

    /* renamed from: b, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.maps.n f15821b;

    /* renamed from: c, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.maps.a0 f15822c;

    /* renamed from: d, reason: collision with root package name */
    private final x f15823d;

    /* renamed from: e, reason: collision with root package name */
    private LocationComponentOptions f15824e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f15825f;

    /* renamed from: g, reason: collision with root package name */
    private final com.mapbox.android.gestures.c f15826g;

    /* renamed from: h, reason: collision with root package name */
    private final w f15827h;

    /* renamed from: i, reason: collision with root package name */
    private final AndroidGesturesManager f15828i;

    /* renamed from: j, reason: collision with root package name */
    private final AndroidGesturesManager f15829j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f15830k;

    /* renamed from: l, reason: collision with root package name */
    private final r.b<LatLng> f15831l = new b();
    private final r.b<Float> m = new c();
    private final r.b<Float> n = new d();
    private final r.b<Float> o = new e();
    private final r.b<Float> p = new f();

    @NonNull
    @VisibleForTesting
    n.r q = new g();

    @NonNull
    private n.u r = new h();

    @NonNull
    private n.i s = new i();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocationCameraController.java */
    /* loaded from: classes2.dex */
    public class a implements n.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ y f15832a;

        a(y yVar) {
            this.f15832a = yVar;
        }

        @Override // com.mapbox.mapboxsdk.maps.n.a
        public void a() {
            j.this.f15830k = false;
            y yVar = this.f15832a;
            if (yVar != null) {
                yVar.a(j.this.f15820a);
            }
        }

        @Override // com.mapbox.mapboxsdk.maps.n.a
        public void b() {
            j.this.f15830k = false;
            y yVar = this.f15832a;
            if (yVar != null) {
                yVar.b(j.this.f15820a);
            }
        }
    }

    /* compiled from: LocationCameraController.java */
    /* loaded from: classes2.dex */
    class b implements r.b<LatLng> {
        b() {
        }

        @Override // com.mapbox.mapboxsdk.location.r.b
        public void a(LatLng latLng) {
            j.this.a(latLng);
        }
    }

    /* compiled from: LocationCameraController.java */
    /* loaded from: classes2.dex */
    class c implements r.b<Float> {
        c() {
        }

        @Override // com.mapbox.mapboxsdk.location.r.b
        public void a(Float f2) {
            if (j.this.f15820a == 36 && j.this.f15821b.b().bearing == 0.0d) {
                return;
            }
            j.this.a(f2.floatValue());
        }
    }

    /* compiled from: LocationCameraController.java */
    /* loaded from: classes2.dex */
    class d implements r.b<Float> {
        d() {
        }

        @Override // com.mapbox.mapboxsdk.location.r.b
        public void a(Float f2) {
            if (j.this.f15820a == 32 || j.this.f15820a == 16) {
                j.this.a(f2.floatValue());
            }
        }
    }

    /* compiled from: LocationCameraController.java */
    /* loaded from: classes2.dex */
    class e implements r.b<Float> {
        e() {
        }

        @Override // com.mapbox.mapboxsdk.location.r.b
        public void a(Float f2) {
            j.this.c(f2.floatValue());
        }
    }

    /* compiled from: LocationCameraController.java */
    /* loaded from: classes2.dex */
    class f implements r.b<Float> {
        f() {
        }

        @Override // com.mapbox.mapboxsdk.location.r.b
        public void a(Float f2) {
            j.this.b(f2.floatValue());
        }
    }

    /* compiled from: LocationCameraController.java */
    /* loaded from: classes2.dex */
    class g implements n.r {

        /* renamed from: a, reason: collision with root package name */
        private boolean f15839a;

        g() {
        }

        private void d(@NonNull com.mapbox.android.gestures.c cVar) {
            if (cVar.r() != j.this.f15824e.O()) {
                cVar.b(j.this.f15824e.O());
                this.f15839a = true;
            }
        }

        private void e(@NonNull com.mapbox.android.gestures.c cVar) {
            RectF s = cVar.s();
            if (s == null || s.equals(j.this.f15824e.P())) {
                if (s != null || j.this.f15824e.P() == null) {
                    return;
                }
                cVar.a(j.this.f15824e.P());
                this.f15839a = true;
                return;
            }
            cVar.a(j.this.f15824e.P());
            this.f15839a = true;
        }

        private void f(@NonNull com.mapbox.android.gestures.c cVar) {
            if (cVar.r() != j.this.f15824e.N()) {
                cVar.b(j.this.f15824e.N());
                this.f15839a = true;
            }
        }

        @Override // com.mapbox.mapboxsdk.maps.n.r
        public void a(@NonNull com.mapbox.android.gestures.c cVar) {
            if (j.this.f15824e.M() && j.this.g()) {
                if (cVar.g() > 1) {
                    e(cVar);
                    d(cVar);
                    return;
                } else {
                    f(cVar);
                    return;
                }
            }
            j.this.a(8);
        }

        @Override // com.mapbox.mapboxsdk.maps.n.r
        public void b(@NonNull com.mapbox.android.gestures.c cVar) {
            if (!this.f15839a) {
                if (j.this.g() || j.this.e()) {
                    j.this.a(8);
                    cVar.n();
                    return;
                }
                return;
            }
            cVar.n();
        }

        @Override // com.mapbox.mapboxsdk.maps.n.r
        public void c(@NonNull com.mapbox.android.gestures.c cVar) {
            if (j.this.f15824e.M() && !this.f15839a && j.this.g()) {
                cVar.b(j.this.f15824e.N());
                cVar.a((RectF) null);
            }
            this.f15839a = false;
        }
    }

    /* compiled from: LocationCameraController.java */
    /* loaded from: classes2.dex */
    class h implements n.u {
        h() {
        }

        @Override // com.mapbox.mapboxsdk.maps.n.u
        public void a(@NonNull com.mapbox.android.gestures.k kVar) {
            if (j.this.e()) {
                j.this.a(8);
            }
        }

        @Override // com.mapbox.mapboxsdk.maps.n.u
        public void b(@NonNull com.mapbox.android.gestures.k kVar) {
        }

        @Override // com.mapbox.mapboxsdk.maps.n.u
        public void c(@NonNull com.mapbox.android.gestures.k kVar) {
        }
    }

    /* compiled from: LocationCameraController.java */
    /* loaded from: classes2.dex */
    class i implements n.i {
        i() {
        }

        @Override // com.mapbox.mapboxsdk.maps.n.i
        public void a() {
            j.this.a(8);
        }
    }

    /* compiled from: LocationCameraController.java */
    /* renamed from: com.mapbox.mapboxsdk.location.j$j, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private class C0154j extends AndroidGesturesManager {
        C0154j(Context context) {
            super(context);
        }

        @Override // com.mapbox.android.gestures.AndroidGesturesManager
        public boolean a(@Nullable MotionEvent motionEvent) {
            if (motionEvent != null && motionEvent.getActionMasked() == 1) {
                j.this.d();
            }
            return super.a(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Context context, com.mapbox.mapboxsdk.maps.n nVar, com.mapbox.mapboxsdk.maps.a0 a0Var, x xVar, @NonNull LocationComponentOptions locationComponentOptions, w wVar) {
        this.f15821b = nVar;
        this.f15822c = a0Var;
        this.f15828i = nVar.c();
        this.f15829j = new C0154j(context);
        this.f15826g = this.f15829j.b();
        nVar.a(this.r);
        nVar.a(this.s);
        nVar.a(this.q);
        this.f15823d = xVar;
        this.f15827h = wVar;
        a(locationComponentOptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        int i2 = this.f15820a;
        return i2 == 24 || i2 == 32 || i2 == 34 || i2 == 36;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.f15824e.M()) {
            if (g()) {
                this.f15825f = true;
                this.f15826g.b(this.f15824e.N());
            } else {
                this.f15826g.b(0.0f);
                this.f15826g.a((RectF) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        int i2 = this.f15820a;
        return i2 == 16 || i2 == 32 || i2 == 22 || i2 == 34 || i2 == 36;
    }

    private boolean f() {
        int i2 = this.f15820a;
        return i2 == 34 || i2 == 36 || i2 == 22;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(float f2) {
        if (this.f15830k) {
            return;
        }
        this.f15822c.a(this.f15821b, com.mapbox.mapboxsdk.camera.b.d(f2), (n.a) null);
        this.f15827h.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f15820a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(float f2) {
        if (this.f15830k) {
            return;
        }
        this.f15822c.a(this.f15821b, com.mapbox.mapboxsdk.camera.b.b(f2), (n.a) null);
        this.f15827h.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(LocationComponentOptions locationComponentOptions) {
        this.f15824e = locationComponentOptions;
        if (locationComponentOptions.M()) {
            AndroidGesturesManager c2 = this.f15821b.c();
            AndroidGesturesManager androidGesturesManager = this.f15829j;
            if (c2 != androidGesturesManager) {
                this.f15821b.a(androidGesturesManager, true, true);
            }
            d();
            return;
        }
        AndroidGesturesManager c3 = this.f15821b.c();
        AndroidGesturesManager androidGesturesManager2 = this.f15828i;
        if (c3 != androidGesturesManager2) {
            this.f15821b.a(androidGesturesManager2, true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        int i2 = this.f15820a;
        return i2 == 32 || i2 == 16;
    }

    void a(int i2) {
        a(i2, (Location) null, 750L, (Double) null, (Double) null, (Double) null, (y) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2, @Nullable Location location, long j2, @Nullable Double d2, @Nullable Double d3, @Nullable Double d4, @Nullable y yVar) {
        if (this.f15820a == i2) {
            if (yVar != null) {
                yVar.a(i2);
                return;
            }
            return;
        }
        boolean g2 = g();
        this.f15820a = i2;
        if (i2 != 8) {
            this.f15821b.a();
        }
        d();
        a(g2);
        a(g2, location, j2, d2, d3, d4, yVar);
    }

    private void a(boolean z, Location location, long j2, Double d2, Double d3, Double d4, y yVar) {
        if (z || !g() || location == null) {
            if (yVar != null) {
                yVar.a(this.f15820a);
                return;
            }
            return;
        }
        this.f15830k = true;
        LatLng latLng = new LatLng(location);
        CameraPosition.b bVar = new CameraPosition.b();
        bVar.a(latLng);
        if (d2 != null) {
            bVar.c(d2.doubleValue());
        }
        if (d4 != null) {
            bVar.b(d4.doubleValue());
        }
        if (d3 != null) {
            bVar.a(d3.doubleValue());
        } else if (f()) {
            bVar.a(this.f15820a == 36 ? 0.0d : location.getBearing());
        }
        com.mapbox.mapboxsdk.camera.a a2 = com.mapbox.mapboxsdk.camera.b.a(bVar.a());
        a aVar = new a(yVar);
        if (g0.a(this.f15821b.l(), this.f15821b.b().target, latLng)) {
            this.f15822c.a(this.f15821b, a2, aVar);
        } else {
            this.f15822c.a(this.f15821b, a2, (int) j2, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(float f2) {
        if (this.f15830k) {
            return;
        }
        this.f15822c.a(this.f15821b, com.mapbox.mapboxsdk.camera.b.a(f2), (n.a) null);
        this.f15827h.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@NonNull LatLng latLng) {
        if (this.f15830k) {
            return;
        }
        this.f15822c.a(this.f15821b, com.mapbox.mapboxsdk.camera.b.a(latLng), (n.a) null);
        this.f15827h.a();
        if (this.f15825f) {
            this.f15821b.n().a(this.f15821b.l().a(latLng));
            this.f15825f = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<com.mapbox.mapboxsdk.location.a> a() {
        HashSet hashSet = new HashSet();
        if (g()) {
            hashSet.add(new com.mapbox.mapboxsdk.location.a(1, this.f15831l));
        }
        if (f()) {
            hashSet.add(new com.mapbox.mapboxsdk.location.a(4, this.m));
        }
        if (c()) {
            hashSet.add(new com.mapbox.mapboxsdk.location.a(5, this.n));
        }
        hashSet.add(new com.mapbox.mapboxsdk.location.a(7, this.o));
        hashSet.add(new com.mapbox.mapboxsdk.location.a(8, this.p));
        return hashSet;
    }

    private void a(boolean z) {
        this.f15823d.a(this.f15820a);
        if (!z || g()) {
            return;
        }
        this.f15821b.n().a((PointF) null);
        this.f15823d.f();
    }
}

package com.mapbox.mapboxsdk.location;

import android.annotation.SuppressLint;
import android.content.Context;
import android.hardware.SensorManager;
import android.location.Location;
import android.os.Looper;
import android.os.SystemClock;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.VisibleForTesting;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.maps.n;
import e.m.a.a.d.h;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: LocationComponent.java */
/* loaded from: classes2.dex */
public final class k {
    private final CopyOnWriteArrayList<c0> A;
    private long B;
    private long C;

    @NonNull
    private n.e D;

    @NonNull
    private n.c E;

    @NonNull
    private n.o F;

    @NonNull
    private n.p G;

    @NonNull
    private b0 H;

    @NonNull
    private w I;

    @NonNull
    private com.mapbox.mapboxsdk.location.c J;

    @NonNull
    @VisibleForTesting
    x K;

    @NonNull
    @VisibleForTesting
    c0 L;

    @NonNull
    private final n.h M;

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final com.mapbox.mapboxsdk.maps.n f15844a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final com.mapbox.mapboxsdk.maps.a0 f15845b;

    /* renamed from: c, reason: collision with root package name */
    private Style f15846c;

    /* renamed from: d, reason: collision with root package name */
    private LocationComponentOptions f15847d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    private m f15848e = new m();

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private e.m.a.a.d.c f15849f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    private e.m.a.a.d.h f15850g;

    /* renamed from: h, reason: collision with root package name */
    private e.m.a.a.d.d<e.m.a.a.d.i> f15851h;

    /* renamed from: i, reason: collision with root package name */
    private e.m.a.a.d.d<e.m.a.a.d.i> f15852i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private com.mapbox.mapboxsdk.location.b f15853j;

    /* renamed from: k, reason: collision with root package name */
    private o f15854k;

    /* renamed from: l, reason: collision with root package name */
    private com.mapbox.mapboxsdk.location.j f15855l;
    private com.mapbox.mapboxsdk.location.i m;

    @Nullable
    private Location n;
    private CameraPosition o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private e0 v;
    private final CopyOnWriteArrayList<b0> w;
    private final CopyOnWriteArrayList<z> x;
    private final CopyOnWriteArrayList<a0> y;
    private final CopyOnWriteArrayList<x> z;

    /* compiled from: LocationComponent.java */
    /* loaded from: classes2.dex */
    class a implements n.h {
        a() {
        }

        @Override // com.mapbox.mapboxsdk.maps.n.h
        public void a() {
            if (k.this.p && k.this.r) {
                k.this.a(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocationComponent.java */
    /* loaded from: classes2.dex */
    public class b implements n.e {
        b() {
        }

        @Override // com.mapbox.mapboxsdk.maps.n.e
        public void a() {
            k.this.c(false);
        }
    }

    /* compiled from: LocationComponent.java */
    /* loaded from: classes2.dex */
    class c implements n.c {
        c() {
        }

        @Override // com.mapbox.mapboxsdk.maps.n.c
        public void e() {
            k.this.c(false);
        }
    }

    /* compiled from: LocationComponent.java */
    /* loaded from: classes2.dex */
    class d implements n.o {
        d() {
        }

        @Override // com.mapbox.mapboxsdk.maps.n.o
        public boolean a(@NonNull LatLng latLng) {
            if (k.this.x.isEmpty() || !k.this.f15854k.a(latLng)) {
                return false;
            }
            Iterator it = k.this.x.iterator();
            while (it.hasNext()) {
                ((z) it.next()).a();
            }
            return true;
        }
    }

    /* compiled from: LocationComponent.java */
    /* loaded from: classes2.dex */
    class e implements n.p {
        e() {
        }

        @Override // com.mapbox.mapboxsdk.maps.n.p
        public boolean b(@NonNull LatLng latLng) {
            if (k.this.y.isEmpty() || !k.this.f15854k.a(latLng)) {
                return false;
            }
            Iterator it = k.this.y.iterator();
            while (it.hasNext()) {
                ((a0) it.next()).a();
            }
            return true;
        }
    }

    /* compiled from: LocationComponent.java */
    /* loaded from: classes2.dex */
    class f implements b0 {
        f() {
        }

        @Override // com.mapbox.mapboxsdk.location.b0
        public void a(boolean z) {
            k.this.f15854k.b(z);
            Iterator it = k.this.w.iterator();
            while (it.hasNext()) {
                ((b0) it.next()).a(z);
            }
        }
    }

    /* compiled from: LocationComponent.java */
    /* loaded from: classes2.dex */
    class g implements w {
        g() {
        }

        @Override // com.mapbox.mapboxsdk.location.w
        public void a() {
            k.this.D.a();
        }
    }

    /* compiled from: LocationComponent.java */
    /* loaded from: classes2.dex */
    class h implements com.mapbox.mapboxsdk.location.c {
        h() {
        }

        @Override // com.mapbox.mapboxsdk.location.c
        public void a(float f2) {
            k.this.a(f2);
        }

        @Override // com.mapbox.mapboxsdk.location.c
        public void a(int i2) {
        }
    }

    /* compiled from: LocationComponent.java */
    /* loaded from: classes2.dex */
    class i implements x {
        i() {
        }

        @Override // com.mapbox.mapboxsdk.location.x
        public void a(int i2) {
            k.this.m.c();
            k.this.m.b();
            k.this.t();
            Iterator it = k.this.z.iterator();
            while (it.hasNext()) {
                ((x) it.next()).a(i2);
            }
        }

        @Override // com.mapbox.mapboxsdk.location.x
        public void f() {
            Iterator it = k.this.z.iterator();
            while (it.hasNext()) {
                ((x) it.next()).f();
            }
        }
    }

    /* compiled from: LocationComponent.java */
    /* loaded from: classes2.dex */
    class j implements c0 {
        j() {
        }

        @Override // com.mapbox.mapboxsdk.location.c0
        public void a(int i2) {
            k.this.t();
            Iterator it = k.this.A.iterator();
            while (it.hasNext()) {
                ((c0) it.next()).a(i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LocationComponent.java */
    /* renamed from: com.mapbox.mapboxsdk.location.k$k, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0155k implements y {

        /* renamed from: a, reason: collision with root package name */
        private final y f15866a;

        /* synthetic */ C0155k(k kVar, y yVar, b bVar) {
            this(yVar);
        }

        private void c(int i2) {
            k.this.m.a(k.this.f15844a.b(), i2 == 36);
        }

        @Override // com.mapbox.mapboxsdk.location.y
        public void a(int i2) {
            y yVar = this.f15866a;
            if (yVar != null) {
                yVar.a(i2);
            }
            c(i2);
        }

        @Override // com.mapbox.mapboxsdk.location.y
        public void b(int i2) {
            y yVar = this.f15866a;
            if (yVar != null) {
                yVar.b(i2);
            }
            c(i2);
        }

        private C0155k(y yVar) {
            this.f15866a = yVar;
        }
    }

    /* compiled from: LocationComponent.java */
    @VisibleForTesting
    /* loaded from: classes2.dex */
    static final class l implements e.m.a.a.d.d<e.m.a.a.d.i> {

        /* renamed from: a, reason: collision with root package name */
        private final WeakReference<k> f15868a;

        l(k kVar) {
            this.f15868a = new WeakReference<>(kVar);
        }

        @Override // e.m.a.a.d.d
        public void a(e.m.a.a.d.i iVar) {
            k kVar = this.f15868a.get();
            if (kVar != null) {
                kVar.b(iVar.a(), false);
            }
        }

        @Override // e.m.a.a.d.d
        public void a(@NonNull Exception exc) {
            Logger.e("Mbgl-LocationComponent", "Failed to obtain location update", exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocationComponent.java */
    /* loaded from: classes2.dex */
    public static class m {
        m() {
        }

        e.m.a.a.d.c a(@NonNull Context context, boolean z) {
            return e.m.a.a.d.f.a(context, z);
        }
    }

    /* compiled from: LocationComponent.java */
    @VisibleForTesting
    /* loaded from: classes2.dex */
    static final class n implements e.m.a.a.d.d<e.m.a.a.d.i> {

        /* renamed from: a, reason: collision with root package name */
        private final WeakReference<k> f15869a;

        n(k kVar) {
            this.f15869a = new WeakReference<>(kVar);
        }

        @Override // e.m.a.a.d.d
        public void a(e.m.a.a.d.i iVar) {
            k kVar = this.f15869a.get();
            if (kVar != null) {
                kVar.b(iVar.a(), true);
            }
        }

        @Override // e.m.a.a.d.d
        public void a(@NonNull Exception exc) {
            Logger.e("Mbgl-LocationComponent", "Failed to obtain last location update", exc);
        }
    }

    public k(@NonNull com.mapbox.mapboxsdk.maps.n nVar, @NonNull com.mapbox.mapboxsdk.maps.a0 a0Var, @NonNull List<n.h> list) {
        h.b bVar = new h.b(1000L);
        bVar.a(1000L);
        bVar.a(0);
        this.f15850g = bVar.a();
        this.f15851h = new l(this);
        this.f15852i = new n(this);
        this.w = new CopyOnWriteArrayList<>();
        this.x = new CopyOnWriteArrayList<>();
        this.y = new CopyOnWriteArrayList<>();
        this.z = new CopyOnWriteArrayList<>();
        this.A = new CopyOnWriteArrayList<>();
        this.D = new b();
        this.E = new c();
        this.F = new d();
        this.G = new e();
        this.H = new f();
        this.I = new g();
        this.J = new h();
        this.K = new i();
        this.L = new j();
        this.M = new a();
        this.f15844a = nVar;
        this.f15845b = a0Var;
        list.add(this.M);
    }

    @SuppressLint({"MissingPermission"})
    private void m() {
        if (this.p && this.s && this.f15844a.m() != null) {
            if (!this.t) {
                this.t = true;
                this.f15844a.a(this.D);
                this.f15844a.a(this.E);
                if (this.f15847d.o()) {
                    this.v.a();
                }
            }
            if (this.r) {
                e.m.a.a.d.c cVar = this.f15849f;
                if (cVar != null) {
                    try {
                        cVar.a(this.f15850g, this.f15851h, Looper.getMainLooper());
                    } catch (SecurityException e2) {
                        Logger.e("Mbgl-LocationComponent", "Unable to request location updates", e2);
                    }
                }
                a(this.f15855l.b());
                if (this.f15847d.E().booleanValue()) {
                    r();
                } else {
                    s();
                }
                p();
                b(true);
                o();
            }
        }
    }

    private void n() {
        if (this.p && this.t && this.s) {
            this.t = false;
            this.v.b();
            if (this.f15853j != null) {
                b(false);
            }
            s();
            this.m.a();
            e.m.a.a.d.c cVar = this.f15849f;
            if (cVar != null) {
                cVar.b(this.f15851h);
            }
            this.f15844a.b(this.D);
            this.f15844a.b(this.E);
        }
    }

    private void o() {
        com.mapbox.mapboxsdk.location.b bVar = this.f15853j;
        a(bVar != null ? bVar.a() : 0.0f);
    }

    @SuppressLint({"MissingPermission"})
    private void p() {
        e.m.a.a.d.c cVar = this.f15849f;
        if (cVar != null) {
            cVar.a(this.f15852i);
        } else {
            b(b(), true);
        }
    }

    private void q() {
        boolean d2 = this.f15854k.d();
        if (this.r && this.s && d2) {
            this.f15854k.e();
            if (this.f15847d.E().booleanValue()) {
                this.f15854k.a(true);
            }
        }
    }

    private void r() {
        if (this.r && this.t) {
            this.m.a(this.f15847d);
            this.f15854k.a(true);
        }
    }

    private void s() {
        this.m.e();
        this.f15854k.a(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        HashSet hashSet = new HashSet();
        hashSet.addAll(this.f15854k.a());
        hashSet.addAll(this.f15855l.a());
        this.m.a(hashSet);
        this.m.a(this.f15844a.b(), this.f15855l.b() == 36);
        this.m.d();
    }

    public void e() {
    }

    private void j() {
        if (!this.p) {
            throw new com.mapbox.mapboxsdk.location.m();
        }
    }

    private void k() {
        this.r = false;
        this.f15854k.b();
        n();
    }

    private void l() {
        this.r = true;
        m();
    }

    public void b(int i2) {
        j();
        this.m.a(i2);
    }

    public void c(int i2) {
        j();
        this.f15854k.a(i2);
        c(true);
        b(true);
    }

    @NonNull
    public e.m.a.a.d.h d() {
        j();
        return this.f15850g;
    }

    public void f() {
        if (this.p) {
            this.f15846c = this.f15844a.m();
            this.f15854k.a(this.f15846c, this.f15847d);
            this.f15855l.a(this.f15847d);
            m();
        }
    }

    public void g() {
        this.s = true;
        m();
    }

    public void h() {
        n();
    }

    public void i() {
        n();
        this.s = false;
    }

    @Nullable
    public Location b() {
        j();
        return this.n;
    }

    @Deprecated
    public void a(@NonNull Context context, @NonNull Style style, @NonNull LocationComponentOptions locationComponentOptions) {
        a(context, style, false, locationComponentOptions);
        a(context);
        a(locationComponentOptions);
    }

    private void b(boolean z) {
        com.mapbox.mapboxsdk.location.b bVar = this.f15853j;
        if (bVar != null) {
            if (!z) {
                a(bVar);
                return;
            }
            if (this.p && this.s && this.r && this.t) {
                if (!this.f15855l.c() && !this.f15854k.c()) {
                    a(this.f15853j);
                } else {
                    if (this.u) {
                        return;
                    }
                    this.u = true;
                    this.f15853j.b(this.J);
                }
            }
        }
    }

    @Nullable
    public e.m.a.a.d.c c() {
        j();
        return this.f15849f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void c(boolean z) {
        if (this.q) {
            return;
        }
        CameraPosition b2 = this.f15844a.b();
        CameraPosition cameraPosition = this.o;
        if (cameraPosition != null && !z) {
            double d2 = b2.bearing;
            if (d2 != cameraPosition.bearing) {
                this.f15854k.a(d2);
            }
            double d3 = b2.tilt;
            if (d3 != this.o.tilt) {
                this.f15854k.b(d3);
            }
            if (b2.zoom != this.o.zoom) {
                a(b(), true);
            }
            this.o = b2;
            return;
        }
        this.o = b2;
        this.f15854k.a(b2.bearing);
        this.f15854k.b(b2.tilt);
        a(b(), true);
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"})
    public void a(boolean z) {
        j();
        if (z) {
            l();
        } else {
            k();
        }
    }

    public void a(int i2) {
        a(i2, (y) null);
    }

    public void a(int i2, @Nullable y yVar) {
        a(i2, 750L, null, null, null, yVar);
    }

    public void a(int i2, long j2, @Nullable Double d2, @Nullable Double d3, @Nullable Double d4, @Nullable y yVar) {
        j();
        this.f15855l.a(i2, this.n, j2, d2, d3, d4, new C0155k(this, yVar, null));
        b(true);
    }

    private void b(@NonNull LocationComponentOptions locationComponentOptions) {
        int[] B = locationComponentOptions.B();
        if (B != null) {
            this.f15844a.a(B[0], B[1], B[2], B[3]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(@Nullable Location location, boolean z) {
        a(location, (List<Location>) null, z, false);
    }

    public int a() {
        j();
        return this.f15855l.b();
    }

    public void a(@NonNull LocationComponentOptions locationComponentOptions) {
        j();
        this.f15847d = locationComponentOptions;
        if (this.f15844a.m() != null) {
            this.f15854k.a(locationComponentOptions);
            this.f15855l.a(locationComponentOptions);
            this.v.a(locationComponentOptions.o());
            this.v.a(locationComponentOptions.J());
            this.m.a(locationComponentOptions.L());
            this.m.b(locationComponentOptions.m());
            this.m.a(locationComponentOptions.b());
            if (locationComponentOptions.E().booleanValue()) {
                r();
            } else {
                s();
            }
            b(locationComponentOptions);
        }
    }

    k() {
        h.b bVar = new h.b(1000L);
        bVar.a(1000L);
        bVar.a(0);
        this.f15850g = bVar.a();
        this.f15851h = new l(this);
        this.f15852i = new n(this);
        this.w = new CopyOnWriteArrayList<>();
        this.x = new CopyOnWriteArrayList<>();
        this.y = new CopyOnWriteArrayList<>();
        this.z = new CopyOnWriteArrayList<>();
        this.A = new CopyOnWriteArrayList<>();
        this.D = new b();
        this.E = new c();
        this.F = new d();
        this.G = new e();
        this.H = new f();
        this.I = new g();
        this.J = new h();
        this.K = new i();
        this.L = new j();
        this.M = new a();
        this.f15844a = null;
        this.f15845b = null;
    }

    @SuppressLint({"MissingPermission"})
    public void a(@Nullable e.m.a.a.d.c cVar) {
        j();
        e.m.a.a.d.c cVar2 = this.f15849f;
        if (cVar2 != null) {
            cVar2.b(this.f15851h);
            this.f15849f = null;
        }
        if (cVar != null) {
            this.B = this.f15850g.b();
            this.f15849f = cVar;
            if (this.t && this.r) {
                p();
                cVar.a(this.f15850g, this.f15851h, Looper.getMainLooper());
                return;
            }
            return;
        }
        this.B = 0L;
    }

    public void a(@NonNull x xVar) {
        this.z.add(xVar);
    }

    private void a(@NonNull Context context, @NonNull Style style, boolean z, @NonNull LocationComponentOptions locationComponentOptions) {
        if (this.p) {
            return;
        }
        this.p = true;
        if (style.e()) {
            this.f15846c = style;
            this.f15847d = locationComponentOptions;
            this.q = z;
            this.f15844a.a(this.F);
            this.f15844a.a(this.G);
            this.f15854k = new o(this.f15844a, style, new com.mapbox.mapboxsdk.location.h(), new com.mapbox.mapboxsdk.location.g(), new com.mapbox.mapboxsdk.location.f(context), locationComponentOptions, this.L, z);
            this.f15855l = new com.mapbox.mapboxsdk.location.j(context, this.f15844a, this.f15845b, this.K, locationComponentOptions, this.I);
            this.m = new com.mapbox.mapboxsdk.location.i(this.f15844a.l(), t.a(), s.a());
            this.m.a(locationComponentOptions.L());
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
            if (windowManager != null && sensorManager != null) {
                this.f15853j = new com.mapbox.mapboxsdk.location.l(windowManager, sensorManager);
            }
            this.v = new e0(this.H, locationComponentOptions);
            b(locationComponentOptions);
            c(18);
            a(8);
            m();
            return;
        }
        throw new IllegalStateException("Style is invalid, provide the most recently loaded one.");
    }

    private void a(@NonNull Context context) {
        e.m.a.a.d.c cVar = this.f15849f;
        if (cVar != null) {
            cVar.b(this.f15851h);
        }
        a(this.f15848e.a(context, false));
    }

    private void a(@NonNull com.mapbox.mapboxsdk.location.b bVar) {
        if (this.u) {
            this.u = false;
            bVar.a(this.J);
        }
    }

    private void a(@Nullable Location location, @Nullable List<Location> list, boolean z, boolean z2) {
        if (location == null) {
            return;
        }
        if (!this.t) {
            this.n = location;
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - this.C < this.B) {
            return;
        }
        this.C = elapsedRealtime;
        q();
        if (!z) {
            this.v.c();
        }
        CameraPosition b2 = this.f15844a.b();
        boolean z3 = a() == 36;
        if (list != null) {
            this.m.a(a(location, list), b2, z3, z2);
        } else {
            this.m.a(location, b2, z3);
        }
        a(location, false);
        this.n = location;
    }

    private Location[] a(Location location, List<Location> list) {
        Location[] locationArr = new Location[list.size() + 1];
        locationArr[locationArr.length - 1] = location;
        for (int i2 = 0; i2 < list.size(); i2++) {
            locationArr[i2] = list.get(i2);
        }
        return locationArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(float f2) {
        this.m.a(f2, this.f15844a.b());
    }

    private void a(Location location, boolean z) {
        float a2;
        if (location == null) {
            a2 = 0.0f;
        } else if (this.q) {
            a2 = location.getAccuracy();
        } else {
            a2 = g0.a(this.f15844a, location);
        }
        this.m.a(a2, z);
    }
}

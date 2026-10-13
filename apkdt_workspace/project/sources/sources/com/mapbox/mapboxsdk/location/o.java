package com.mapbox.mapboxsdk.location;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.location.r;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.Style;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LocationLayerController.java */
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    private int f15885a;

    /* renamed from: b, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.maps.n f15886b;

    /* renamed from: c, reason: collision with root package name */
    private final f f15887c;

    /* renamed from: d, reason: collision with root package name */
    private LocationComponentOptions f15888d;

    /* renamed from: e, reason: collision with root package name */
    private final c0 f15889e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f15890f;

    /* renamed from: h, reason: collision with root package name */
    private boolean f15892h;

    /* renamed from: i, reason: collision with root package name */
    private n f15893i;

    /* renamed from: j, reason: collision with root package name */
    private p f15894j;

    /* renamed from: g, reason: collision with root package name */
    private boolean f15891g = true;

    /* renamed from: k, reason: collision with root package name */
    private final r.b<LatLng> f15895k = new a();

    /* renamed from: l, reason: collision with root package name */
    private final r.b<Float> f15896l = new b();
    private final r.b<Float> m = new c();
    private final r.b<Float> n = new d();
    private final r.b<Float> o = new e();

    /* compiled from: LocationLayerController.java */
    /* loaded from: classes2.dex */
    class a implements r.b<LatLng> {
        a() {
        }

        @Override // com.mapbox.mapboxsdk.location.r.b
        public void a(LatLng latLng) {
            o.this.f15894j.a(latLng);
        }
    }

    /* compiled from: LocationLayerController.java */
    /* loaded from: classes2.dex */
    class b implements r.b<Float> {
        b() {
        }

        @Override // com.mapbox.mapboxsdk.location.r.b
        public void a(Float f2) {
            o.this.f15894j.a(f2);
        }
    }

    /* compiled from: LocationLayerController.java */
    /* loaded from: classes2.dex */
    class c implements r.b<Float> {
        c() {
        }

        @Override // com.mapbox.mapboxsdk.location.r.b
        public void a(Float f2) {
            o.this.f15894j.b(f2);
        }
    }

    /* compiled from: LocationLayerController.java */
    /* loaded from: classes2.dex */
    class d implements r.b<Float> {
        d() {
        }

        @Override // com.mapbox.mapboxsdk.location.r.b
        public void a(Float f2) {
            o.this.f15894j.c(f2);
        }
    }

    /* compiled from: LocationLayerController.java */
    /* loaded from: classes2.dex */
    class e implements r.b<Float> {
        e() {
        }

        @Override // com.mapbox.mapboxsdk.location.r.b
        public void a(Float f2) {
            o.this.f15894j.a(f2.floatValue(), o.this.f15888d.F().booleanValue() ? Float.valueOf(1.0f - ((f2.floatValue() / 100.0f) * 3.0f)) : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(com.mapbox.mapboxsdk.maps.n nVar, Style style, h hVar, g gVar, f fVar, @NonNull LocationComponentOptions locationComponentOptions, @NonNull c0 c0Var, boolean z) {
        this.f15886b = nVar;
        this.f15887c = fVar;
        this.f15889e = c0Var;
        this.f15890f = z;
        this.f15892h = locationComponentOptions.o();
        if (z) {
            this.f15894j = hVar.e();
        } else {
            this.f15894j = hVar.a(gVar, this.f15892h);
        }
        a(style, locationComponentOptions);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return this.f15885a == 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        return this.f15891g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        this.f15891g = false;
        this.f15894j.a(this.f15885a, this.f15892h);
    }

    private void c(LocationComponentOptions locationComponentOptions) {
        Bitmap bitmap;
        Bitmap bitmap2;
        Bitmap a2 = locationComponentOptions.n() > 0.0f ? this.f15887c.a(locationComponentOptions) : null;
        Bitmap a3 = this.f15887c.a(locationComponentOptions.d(), locationComponentOptions.i());
        Bitmap a4 = this.f15887c.a(locationComponentOptions.e(), locationComponentOptions.h());
        Bitmap a5 = this.f15887c.a(locationComponentOptions.j(), locationComponentOptions.l());
        Bitmap a6 = this.f15887c.a(locationComponentOptions.p(), locationComponentOptions.u());
        Bitmap a7 = this.f15887c.a(locationComponentOptions.q(), locationComponentOptions.t());
        if (this.f15885a == 8) {
            Bitmap a8 = this.f15887c.a(locationComponentOptions.v(), locationComponentOptions.u());
            bitmap2 = this.f15887c.a(locationComponentOptions.v(), locationComponentOptions.t());
            bitmap = a8;
        } else {
            bitmap = a6;
            bitmap2 = a7;
        }
        this.f15894j.a(this.f15885a, a2, a3, a4, a5, bitmap, bitmap2);
    }

    private void d(@NonNull LocationComponentOptions locationComponentOptions) {
        this.f15894j.a(com.mapbox.mapboxsdk.u.a.a.a(com.mapbox.mapboxsdk.u.a.a.c(), com.mapbox.mapboxsdk.u.a.a.d(), com.mapbox.mapboxsdk.u.a.a.a(Double.valueOf(this.f15886b.h()), Float.valueOf(locationComponentOptions.A())), com.mapbox.mapboxsdk.u.a.a.a(Double.valueOf(this.f15886b.g()), Float.valueOf(locationComponentOptions.z()))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Style style, LocationComponentOptions locationComponentOptions) {
        this.f15893i = new n(style, locationComponentOptions.x(), locationComponentOptions.y());
        this.f15894j.a(style);
        this.f15894j.a(this.f15893i);
        a(locationComponentOptions);
        if (this.f15891g) {
            b();
        } else {
            e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.f15891g = true;
        this.f15894j.a();
    }

    private void b(LocationComponentOptions locationComponentOptions) {
        this.f15894j.a(a(this.f15885a == 8 ? locationComponentOptions.w() : locationComponentOptions.r(), "mapbox-location-icon"), a(locationComponentOptions.s(), "mapbox-location-stale-icon"), a(locationComponentOptions.f(), "mapbox-location-stroke-icon"), a(locationComponentOptions.g(), "mapbox-location-background-stale-icon"), a(locationComponentOptions.k(), "mapbox-location-bearing-icon"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull LocationComponentOptions locationComponentOptions) {
        if (this.f15893i.a(locationComponentOptions.x(), locationComponentOptions.y())) {
            this.f15894j.b();
            this.f15894j.a(this.f15893i);
            if (this.f15891g) {
                b();
            }
        }
        this.f15888d = locationComponentOptions;
        c(locationComponentOptions);
        this.f15894j.a(locationComponentOptions.a(), locationComponentOptions.c());
        d(locationComponentOptions);
        this.f15894j.a(locationComponentOptions);
        b(locationComponentOptions);
        if (this.f15891g) {
            return;
        }
        e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        this.f15892h = z;
        this.f15894j.a(z, this.f15885a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(double d2) {
        this.f15894j.b(d2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2) {
        if (this.f15885a == i2) {
            return;
        }
        this.f15885a = i2;
        c(this.f15888d);
        b(this.f15888d);
        if (!this.f15891g) {
            e();
        }
        this.f15889e.a(i2);
    }

    @NonNull
    private String a(@Nullable String str, @NonNull String str2) {
        if (str == null) {
            return str2;
        }
        if (!this.f15890f) {
            return str;
        }
        Logger.e("Mbgl-LocationLayerController", str + " replacement ID provided for an unsupported specialized location layer");
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(@NonNull LatLng latLng) {
        return !this.f15886b.a(this.f15886b.l().a(latLng), "mapbox-location-background-layer", "mapbox-location-foreground-layer", "mapbox-location-bearing-layer").isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<com.mapbox.mapboxsdk.location.a> a() {
        HashSet hashSet = new HashSet();
        hashSet.add(new com.mapbox.mapboxsdk.location.a(0, this.f15895k));
        int i2 = this.f15885a;
        if (i2 == 8) {
            hashSet.add(new com.mapbox.mapboxsdk.location.a(2, this.f15896l));
        } else if (i2 == 4) {
            hashSet.add(new com.mapbox.mapboxsdk.location.a(3, this.m));
        }
        int i3 = this.f15885a;
        if (i3 == 4 || i3 == 18) {
            hashSet.add(new com.mapbox.mapboxsdk.location.a(6, this.n));
        }
        if (this.f15888d.E().booleanValue()) {
            hashSet.add(new com.mapbox.mapboxsdk.location.a(9, this.o));
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(double d2) {
        if (this.f15885a != 8) {
            this.f15894j.a(d2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.f15894j.a(z);
    }
}

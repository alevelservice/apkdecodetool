package com.mapbox.mapboxsdk.location;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.Point;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.style.layers.Layer;
import com.mapbox.mapboxsdk.style.layers.SymbolLayer;
import com.mapbox.mapboxsdk.style.sources.GeoJsonSource;
import io.reactivex.rxjava3.annotations.SchedulerSupport;
import java.util.Iterator;
import java.util.Set;

/* compiled from: SymbolLocationLayerRenderer.java */
/* loaded from: classes2.dex */
final class f0 implements p {

    /* renamed from: a, reason: collision with root package name */
    private Style f15803a;

    /* renamed from: b, reason: collision with root package name */
    private final h f15804b;

    /* renamed from: c, reason: collision with root package name */
    private final Set<String> f15805c;

    /* renamed from: d, reason: collision with root package name */
    private Feature f15806d;

    /* renamed from: e, reason: collision with root package name */
    private GeoJsonSource f15807e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0(h hVar, g gVar, boolean z) {
        this.f15804b = hVar;
        this.f15805c = hVar.d();
        this.f15806d = gVar.a(this.f15806d, z);
    }

    private void d() {
        this.f15807e = this.f15804b.a(this.f15806d);
        this.f15803a.a(this.f15807e);
    }

    private void e() {
        a(this.f15804b.c(), "mapbox-location-accuracy-layer");
    }

    private void f() {
        if (((GeoJsonSource) this.f15803a.b("mapbox-location-source")) != null) {
            this.f15807e.a(this.f15806d);
        }
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(Style style) {
        this.f15803a = style;
        d();
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void b() {
        Iterator<String> it = this.f15805c.iterator();
        while (it.hasNext()) {
            this.f15803a.d(it.next());
        }
        this.f15805c.clear();
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void c(Float f2) {
        a(f2.floatValue());
    }

    private void c(double d2) {
        JsonArray jsonArray = new JsonArray();
        Float valueOf = Float.valueOf(0.0f);
        jsonArray.add(valueOf);
        jsonArray.add(Float.valueOf((float) ((-0.05d) * d2)));
        this.f15806d.addProperty("mapbox-property-foreground-icon-offset", jsonArray);
        JsonArray jsonArray2 = new JsonArray();
        jsonArray2.add(valueOf);
        jsonArray2.add(Float.valueOf((float) (d2 * 0.05d)));
        this.f15806d.addProperty("mapbox-property-shadow-icon-offset", jsonArray2);
        f();
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(n nVar) {
        Layer a2 = this.f15804b.a("mapbox-location-bearing-layer");
        nVar.a(a2);
        this.f15805c.add(a2.b());
        a("mapbox-location-foreground-layer", "mapbox-location-bearing-layer");
        a("mapbox-location-background-layer", "mapbox-location-foreground-layer");
        a("mapbox-location-shadow-layer", "mapbox-location-background-layer");
        c();
        e();
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void b(double d2) {
        c(d2);
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void b(Float f2) {
        a("mapbox-property-compass-bearing", f2.floatValue());
    }

    private void b(float f2) {
        a("mapbox-property-gps-bearing", f2);
    }

    private void c() {
        a(this.f15804b.a(), "mapbox-location-background-layer");
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a() {
        Iterator<String> it = this.f15805c.iterator();
        while (it.hasNext()) {
            a(it.next(), false);
        }
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(double d2) {
        b((float) d2);
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(int i2, boolean z) {
        if (i2 == 4) {
            a("mapbox-location-shadow-layer", true);
            a("mapbox-location-foreground-layer", true);
            a("mapbox-location-background-layer", true);
            a("mapbox-location-accuracy-layer", !z);
            a("mapbox-location-bearing-layer", true);
            return;
        }
        if (i2 == 8) {
            a("mapbox-location-shadow-layer", false);
            a("mapbox-location-foreground-layer", true);
            a("mapbox-location-background-layer", true);
            a("mapbox-location-accuracy-layer", false);
            a("mapbox-location-bearing-layer", false);
            return;
        }
        if (i2 != 18) {
            return;
        }
        a("mapbox-location-shadow-layer", true);
        a("mapbox-location-foreground-layer", true);
        a("mapbox-location-background-layer", true);
        a("mapbox-location-accuracy-layer", !z);
        a("mapbox-location-bearing-layer", false);
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(float f2, int i2) {
        this.f15806d.addNumberProperty("mapbox-property-accuracy-alpha", Float.valueOf(f2));
        this.f15806d.addStringProperty("mapbox-property-accuracy-color", com.mapbox.mapboxsdk.utils.b.b(i2));
        f();
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(LatLng latLng) {
        a(Point.fromLngLat(latLng.b(), latLng.a()));
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(Float f2) {
        a("mapbox-property-gps-bearing", f2.floatValue());
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(com.mapbox.mapboxsdk.u.a.a aVar) {
        Iterator<String> it = this.f15805c.iterator();
        while (it.hasNext()) {
            Layer a2 = this.f15803a.a(it.next());
            if (a2 instanceof SymbolLayer) {
                a2.a(com.mapbox.mapboxsdk.style.layers.c.u(aVar));
            }
        }
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(boolean z, int i2) {
        this.f15806d.addBooleanProperty("mapbox-property-location-stale", Boolean.valueOf(z));
        f();
        if (i2 != 8) {
            a("mapbox-location-accuracy-layer", !z);
        }
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(String str, String str2, String str3, String str4, String str5) {
        this.f15806d.addStringProperty("mapbox-property-foreground-icon", str);
        this.f15806d.addStringProperty("mapbox-property-background-icon", str3);
        this.f15806d.addStringProperty("mapbox-property-foreground-stale-icon", str2);
        this.f15806d.addStringProperty("mapbox-property-background-stale-icon", str4);
        this.f15806d.addStringProperty("mapbox-property-shadow-icon", str5);
        f();
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(int i2, @Nullable Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3, Bitmap bitmap4, Bitmap bitmap5, Bitmap bitmap6) {
        if (bitmap != null) {
            this.f15803a.a("mapbox-location-shadow-icon", bitmap);
        } else {
            this.f15803a.c("mapbox-location-shadow-icon");
        }
        this.f15803a.a("mapbox-location-stroke-icon", bitmap2);
        this.f15803a.a("mapbox-location-background-stale-icon", bitmap3);
        this.f15803a.a("mapbox-location-bearing-icon", bitmap4);
        this.f15803a.a("mapbox-location-icon", bitmap5);
        this.f15803a.a("mapbox-location-stale-icon", bitmap6);
    }

    private void a(@NonNull String str, boolean z) {
        Layer a2 = this.f15803a.a(str);
        if (a2 != null) {
            if (a2.d().f16261b.equals(z ? "visible" : SchedulerSupport.NONE)) {
                return;
            }
            com.mapbox.mapboxsdk.style.layers.d<?>[] dVarArr = new com.mapbox.mapboxsdk.style.layers.d[1];
            dVarArr[0] = com.mapbox.mapboxsdk.style.layers.c.c(z ? "visible" : SchedulerSupport.NONE);
            a2.a(dVarArr);
        }
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(boolean z) {
        a("mapbox-location-pulsing-circle-layer", z);
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(LocationComponentOptions locationComponentOptions) {
        if (this.f15803a.a("mapbox-location-pulsing-circle-layer") != null) {
            a("mapbox-location-pulsing-circle-layer", true);
            this.f15803a.a("mapbox-location-pulsing-circle-layer").a(com.mapbox.mapboxsdk.style.layers.c.d(com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-pulsing-circle-radius")), com.mapbox.mapboxsdk.style.layers.c.a(locationComponentOptions.D().intValue()), com.mapbox.mapboxsdk.style.layers.c.b(locationComponentOptions.D().intValue()), com.mapbox.mapboxsdk.style.layers.c.c(com.mapbox.mapboxsdk.u.a.a.a("mapbox-property-pulsing-circle-opacity")));
        }
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(float f2, @Nullable Float f3) {
        this.f15806d.addNumberProperty("mapbox-property-pulsing-circle-radius", Float.valueOf(f2));
        if (f3 != null) {
            this.f15806d.addNumberProperty("mapbox-property-pulsing-circle-opacity", f3);
        }
        f();
    }

    private void a(@NonNull String str, @NonNull String str2) {
        a(this.f15804b.a(str), str2);
    }

    private void a(Layer layer, @NonNull String str) {
        this.f15803a.b(layer, str);
        this.f15805c.add(layer.b());
    }

    private void a(Point point) {
        JsonObject properties = this.f15806d.properties();
        if (properties != null) {
            this.f15806d = Feature.fromGeometry(point, properties);
            f();
        }
    }

    private void a(@NonNull String str, float f2) {
        this.f15806d.addNumberProperty(str, Float.valueOf(f2));
        f();
    }

    private void a(float f2) {
        this.f15806d.addNumberProperty("mapbox-property-accuracy-radius", Float.valueOf(f2));
        f();
    }
}

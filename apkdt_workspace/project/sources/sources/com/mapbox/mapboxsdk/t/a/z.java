package com.mapbox.mapboxsdk.t.a;

import android.graphics.PointF;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.Point;
import com.mapbox.mapboxsdk.geometry.LatLng;

/* compiled from: Symbol.java */
@UiThread
/* loaded from: classes2.dex */
public class z extends a<Point> {

    /* renamed from: d, reason: collision with root package name */
    private final b<?, z, ?, ?, ?, ?> f16367d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(long j2, b<?, z, ?, ?, ?, ?> bVar, JsonObject jsonObject, Point point) {
        super(j2, jsonObject, point);
        this.f16367d = bVar;
    }

    public void a(PointF pointF) {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(Float.valueOf(pointF.x));
        jsonArray.add(Float.valueOf(pointF.y));
        this.f16279a.add("icon-offset", jsonArray);
    }

    public void b(String str) {
        this.f16279a.addProperty("icon-image", str);
    }

    public void c(String str) {
        this.f16279a.addProperty("text-anchor", str);
    }

    @Override // com.mapbox.mapboxsdk.t.a.a
    String d() {
        return "Symbol";
    }

    public void d(Float f2) {
        this.f16279a.addProperty("icon-rotate", f2);
    }

    public void e(Float f2) {
        this.f16279a.addProperty("icon-size", f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mapbox.mapboxsdk.t.a.a
    public void f() {
        if (!(this.f16279a.get("symbol-sort-key") instanceof com.google.gson.j)) {
            this.f16367d.a("symbol-sort-key");
        }
        if (!(this.f16279a.get("icon-size") instanceof com.google.gson.j)) {
            this.f16367d.a("icon-size");
        }
        if (!(this.f16279a.get("icon-image") instanceof com.google.gson.j)) {
            this.f16367d.a("icon-image");
        }
        if (!(this.f16279a.get("icon-rotate") instanceof com.google.gson.j)) {
            this.f16367d.a("icon-rotate");
        }
        if (!(this.f16279a.get("icon-offset") instanceof com.google.gson.j)) {
            this.f16367d.a("icon-offset");
        }
        if (!(this.f16279a.get("icon-anchor") instanceof com.google.gson.j)) {
            this.f16367d.a("icon-anchor");
        }
        if (!(this.f16279a.get("text-field") instanceof com.google.gson.j)) {
            this.f16367d.a("text-field");
        }
        if (!(this.f16279a.get("text-font") instanceof com.google.gson.j)) {
            this.f16367d.a("text-font");
        }
        if (!(this.f16279a.get("text-size") instanceof com.google.gson.j)) {
            this.f16367d.a("text-size");
        }
        if (!(this.f16279a.get("text-max-width") instanceof com.google.gson.j)) {
            this.f16367d.a("text-max-width");
        }
        if (!(this.f16279a.get("text-letter-spacing") instanceof com.google.gson.j)) {
            this.f16367d.a("text-letter-spacing");
        }
        if (!(this.f16279a.get("text-justify") instanceof com.google.gson.j)) {
            this.f16367d.a("text-justify");
        }
        if (!(this.f16279a.get("text-radial-offset") instanceof com.google.gson.j)) {
            this.f16367d.a("text-radial-offset");
        }
        if (!(this.f16279a.get("text-anchor") instanceof com.google.gson.j)) {
            this.f16367d.a("text-anchor");
        }
        if (!(this.f16279a.get("text-rotate") instanceof com.google.gson.j)) {
            this.f16367d.a("text-rotate");
        }
        if (!(this.f16279a.get("text-transform") instanceof com.google.gson.j)) {
            this.f16367d.a("text-transform");
        }
        if (!(this.f16279a.get("text-offset") instanceof com.google.gson.j)) {
            this.f16367d.a("text-offset");
        }
        if (!(this.f16279a.get("icon-opacity") instanceof com.google.gson.j)) {
            this.f16367d.a("icon-opacity");
        }
        if (!(this.f16279a.get("icon-color") instanceof com.google.gson.j)) {
            this.f16367d.a("icon-color");
        }
        if (!(this.f16279a.get("icon-halo-color") instanceof com.google.gson.j)) {
            this.f16367d.a("icon-halo-color");
        }
        if (!(this.f16279a.get("icon-halo-width") instanceof com.google.gson.j)) {
            this.f16367d.a("icon-halo-width");
        }
        if (!(this.f16279a.get("icon-halo-blur") instanceof com.google.gson.j)) {
            this.f16367d.a("icon-halo-blur");
        }
        if (!(this.f16279a.get("text-opacity") instanceof com.google.gson.j)) {
            this.f16367d.a("text-opacity");
        }
        if (!(this.f16279a.get("text-color") instanceof com.google.gson.j)) {
            this.f16367d.a("text-color");
        }
        if (!(this.f16279a.get("text-halo-color") instanceof com.google.gson.j)) {
            this.f16367d.a("text-halo-color");
        }
        if (!(this.f16279a.get("text-halo-width") instanceof com.google.gson.j)) {
            this.f16367d.a("text-halo-width");
        }
        if (this.f16279a.get("text-halo-blur") instanceof com.google.gson.j) {
            return;
        }
        this.f16367d.a("text-halo-blur");
    }

    public void g(Float f2) {
        this.f16279a.addProperty("text-halo-blur", f2);
    }

    public void h(Float f2) {
        this.f16279a.addProperty("text-halo-width", f2);
    }

    public void i(Float f2) {
        this.f16279a.addProperty("text-letter-spacing", f2);
    }

    public void j(Float f2) {
        this.f16279a.addProperty("text-max-width", f2);
    }

    public void k(Float f2) {
        this.f16279a.addProperty("text-opacity", f2);
    }

    public void l(Float f2) {
        this.f16279a.addProperty("text-rotate", f2);
    }

    public void m(Float f2) {
        this.f16279a.addProperty("text-size", f2);
    }

    public void b(PointF pointF) {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(Float.valueOf(pointF.x));
        jsonArray.add(Float.valueOf(pointF.y));
        this.f16279a.add("text-offset", jsonArray);
    }

    public void c(Float f2) {
        this.f16279a.addProperty("icon-opacity", f2);
    }

    public void d(String str) {
        this.f16279a.addProperty("text-field", str);
    }

    public void e(String str) {
        this.f16279a.addProperty("text-justify", str);
    }

    public void c(@ColorInt int i2) {
        this.f16279a.addProperty("text-color", com.mapbox.mapboxsdk.utils.b.b(i2));
    }

    public void d(@ColorInt int i2) {
        this.f16279a.addProperty("text-halo-color", com.mapbox.mapboxsdk.utils.b.b(i2));
    }

    public void a(String str) {
        this.f16279a.addProperty("icon-anchor", str);
    }

    public void a(String[] strArr) {
        JsonArray jsonArray = new JsonArray();
        for (String str : strArr) {
            jsonArray.add(str);
        }
        this.f16279a.add("text-font", jsonArray);
    }

    public void b(@ColorInt int i2) {
        this.f16279a.addProperty("icon-halo-color", com.mapbox.mapboxsdk.utils.b.b(i2));
    }

    public void b(Float f2) {
        this.f16279a.addProperty("icon-halo-width", f2);
    }

    public void a(@ColorInt int i2) {
        this.f16279a.addProperty("icon-color", com.mapbox.mapboxsdk.utils.b.b(i2));
    }

    public void a(Float f2) {
        this.f16279a.addProperty("icon-halo-blur", f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mapbox.mapboxsdk.t.a.a
    @Nullable
    public Geometry a(@NonNull com.mapbox.mapboxsdk.maps.w wVar, @NonNull com.mapbox.android.gestures.b bVar, float f2, float f3) {
        LatLng a2 = wVar.a(new PointF(bVar.a() - f2, bVar.b() - f3));
        if (a2.a() > 85.05112877980659d || a2.a() < -85.05112877980659d) {
            return null;
        }
        return Point.fromLngLat(a2.b(), a2.a());
    }

    public void f(Float f2) {
        this.f16279a.addProperty("symbol-sort-key", f2);
    }

    public void f(String str) {
        this.f16279a.addProperty("text-transform", str);
    }
}

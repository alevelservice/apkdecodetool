package com.mapbox.mapboxsdk.t.a;

import android.graphics.PointF;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.google.gson.JsonObject;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.Point;
import com.mapbox.mapboxsdk.geometry.LatLng;

/* compiled from: Circle.java */
@UiThread
/* loaded from: classes2.dex */
public class c extends a<Point> {

    /* renamed from: d, reason: collision with root package name */
    private final b<?, c, ?, ?, ?, ?> f16302d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(long j2, b<?, c, ?, ?, ?, ?> bVar, JsonObject jsonObject, Point point) {
        super(j2, jsonObject, point);
        this.f16302d = bVar;
    }

    public void a(@ColorInt int i2) {
        this.f16279a.addProperty("circle-color", com.mapbox.mapboxsdk.utils.b.b(i2));
    }

    public void b(Float f2) {
        this.f16279a.addProperty("circle-opacity", f2);
    }

    public void c(Float f2) {
        this.f16279a.addProperty("circle-radius", f2);
    }

    @Override // com.mapbox.mapboxsdk.t.a.a
    String d() {
        return "Circle";
    }

    public void d(Float f2) {
        this.f16279a.addProperty("circle-stroke-opacity", f2);
    }

    public void e(Float f2) {
        this.f16279a.addProperty("circle-stroke-width", f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mapbox.mapboxsdk.t.a.a
    public void f() {
        if (!(this.f16279a.get("circle-radius") instanceof com.google.gson.j)) {
            this.f16302d.a("circle-radius");
        }
        if (!(this.f16279a.get("circle-color") instanceof com.google.gson.j)) {
            this.f16302d.a("circle-color");
        }
        if (!(this.f16279a.get("circle-blur") instanceof com.google.gson.j)) {
            this.f16302d.a("circle-blur");
        }
        if (!(this.f16279a.get("circle-opacity") instanceof com.google.gson.j)) {
            this.f16302d.a("circle-opacity");
        }
        if (!(this.f16279a.get("circle-stroke-width") instanceof com.google.gson.j)) {
            this.f16302d.a("circle-stroke-width");
        }
        if (!(this.f16279a.get("circle-stroke-color") instanceof com.google.gson.j)) {
            this.f16302d.a("circle-stroke-color");
        }
        if (this.f16279a.get("circle-stroke-opacity") instanceof com.google.gson.j) {
            return;
        }
        this.f16302d.a("circle-stroke-opacity");
    }

    public void a(Float f2) {
        this.f16279a.addProperty("circle-blur", f2);
    }

    public void b(@ColorInt int i2) {
        this.f16279a.addProperty("circle-stroke-color", com.mapbox.mapboxsdk.utils.b.b(i2));
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
}

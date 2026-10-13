package com.mapbox.mapboxsdk.t.a;

import android.graphics.PointF;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.google.gson.JsonObject;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.LineString;
import com.mapbox.geojson.Point;
import com.mapbox.mapboxsdk.geometry.LatLng;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Line.java */
@UiThread
/* loaded from: classes2.dex */
public class n extends a<LineString> {

    /* renamed from: d, reason: collision with root package name */
    private final b<?, n, ?, ?, ?, ?> f16352d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(long j2, b<?, n, ?, ?, ?, ?> bVar, JsonObject jsonObject, LineString lineString) {
        super(j2, jsonObject, lineString);
        this.f16352d = bVar;
    }

    public void a(List<LatLng> list) {
        ArrayList arrayList = new ArrayList();
        for (LatLng latLng : list) {
            arrayList.add(Point.fromLngLat(latLng.b(), latLng.a()));
        }
        this.f16280b = LineString.fromLngLats(arrayList);
    }

    public void b(Float f2) {
        this.f16279a.addProperty("line-gap-width", f2);
    }

    public void c(Float f2) {
        this.f16279a.addProperty("line-offset", f2);
    }

    @Override // com.mapbox.mapboxsdk.t.a.a
    String d() {
        return "Line";
    }

    public void d(Float f2) {
        this.f16279a.addProperty("line-opacity", f2);
    }

    public void e(Float f2) {
        this.f16279a.addProperty("line-width", f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mapbox.mapboxsdk.t.a.a
    public void f() {
        if (!(this.f16279a.get("line-join") instanceof com.google.gson.j)) {
            this.f16352d.a("line-join");
        }
        if (!(this.f16279a.get("line-opacity") instanceof com.google.gson.j)) {
            this.f16352d.a("line-opacity");
        }
        if (!(this.f16279a.get("line-color") instanceof com.google.gson.j)) {
            this.f16352d.a("line-color");
        }
        if (!(this.f16279a.get("line-width") instanceof com.google.gson.j)) {
            this.f16352d.a("line-width");
        }
        if (!(this.f16279a.get("line-gap-width") instanceof com.google.gson.j)) {
            this.f16352d.a("line-gap-width");
        }
        if (!(this.f16279a.get("line-offset") instanceof com.google.gson.j)) {
            this.f16352d.a("line-offset");
        }
        if (!(this.f16279a.get("line-blur") instanceof com.google.gson.j)) {
            this.f16352d.a("line-blur");
        }
        if (this.f16279a.get("line-pattern") instanceof com.google.gson.j) {
            return;
        }
        this.f16352d.a("line-pattern");
    }

    public void b(String str) {
        this.f16279a.addProperty("line-pattern", str);
    }

    public void a(String str) {
        this.f16279a.addProperty("line-join", str);
    }

    public void a(@ColorInt int i2) {
        this.f16279a.addProperty("line-color", com.mapbox.mapboxsdk.utils.b.b(i2));
    }

    public void a(Float f2) {
        this.f16279a.addProperty("line-blur", f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mapbox.mapboxsdk.t.a.a
    @Nullable
    public Geometry a(@NonNull com.mapbox.mapboxsdk.maps.w wVar, @NonNull com.mapbox.android.gestures.b bVar, float f2, float f3) {
        List<Point> coordinates = ((LineString) this.f16280b).coordinates();
        ArrayList arrayList = new ArrayList(coordinates.size());
        for (Point point : coordinates) {
            PointF a2 = wVar.a(new LatLng(point.latitude(), point.longitude()));
            a2.x -= bVar.c();
            a2.y -= bVar.e();
            LatLng a3 = wVar.a(a2);
            if (a3.a() > 85.05112877980659d || a3.a() < -85.05112877980659d) {
                return null;
            }
            arrayList.add(Point.fromLngLat(a3.b(), a3.a()));
        }
        return LineString.fromLngLats(arrayList);
    }
}

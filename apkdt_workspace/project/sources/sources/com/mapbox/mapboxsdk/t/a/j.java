package com.mapbox.mapboxsdk.t.a;

import android.graphics.PointF;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.google.gson.JsonObject;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.Point;
import com.mapbox.geojson.Polygon;
import com.mapbox.mapboxsdk.geometry.LatLng;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Fill.java */
@UiThread
/* loaded from: classes2.dex */
public class j extends a<Polygon> {

    /* renamed from: d, reason: collision with root package name */
    private final b<?, j, ?, ?, ?, ?> f16341d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(long j2, b<?, j, ?, ?, ?, ?> bVar, JsonObject jsonObject, Polygon polygon) {
        super(j2, jsonObject, polygon);
        this.f16341d = bVar;
    }

    public void a(Float f2) {
        this.f16279a.addProperty("fill-opacity", f2);
    }

    public void b(@ColorInt int i2) {
        this.f16279a.addProperty("fill-outline-color", com.mapbox.mapboxsdk.utils.b.b(i2));
    }

    @Override // com.mapbox.mapboxsdk.t.a.a
    String d() {
        return "Fill";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mapbox.mapboxsdk.t.a.a
    public void f() {
        if (!(this.f16279a.get("fill-opacity") instanceof com.google.gson.j)) {
            this.f16341d.a("fill-opacity");
        }
        if (!(this.f16279a.get("fill-color") instanceof com.google.gson.j)) {
            this.f16341d.a("fill-color");
        }
        if (!(this.f16279a.get("fill-outline-color") instanceof com.google.gson.j)) {
            this.f16341d.a("fill-outline-color");
        }
        if (this.f16279a.get("fill-pattern") instanceof com.google.gson.j) {
            return;
        }
        this.f16341d.a("fill-pattern");
    }

    public void a(@ColorInt int i2) {
        this.f16279a.addProperty("fill-color", com.mapbox.mapboxsdk.utils.b.b(i2));
    }

    public void a(String str) {
        this.f16279a.addProperty("fill-pattern", str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mapbox.mapboxsdk.t.a.a
    @Nullable
    public Geometry a(@NonNull com.mapbox.mapboxsdk.maps.w wVar, @NonNull com.mapbox.android.gestures.b bVar, float f2, float f3) {
        List<List<Point>> coordinates = ((Polygon) this.f16280b).coordinates();
        if (coordinates == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(coordinates.size());
        for (List<Point> list : coordinates) {
            ArrayList arrayList2 = new ArrayList();
            for (Point point : list) {
                PointF a2 = wVar.a(new LatLng(point.latitude(), point.longitude()));
                a2.x -= bVar.c();
                a2.y -= bVar.e();
                LatLng a3 = wVar.a(a2);
                if (a3.a() > 85.05112877980659d || a3.a() < -85.05112877980659d) {
                    return null;
                }
                arrayList2.add(Point.fromLngLat(a3.b(), a3.a()));
            }
            arrayList.add(arrayList2);
        }
        return Polygon.fromLngLats(arrayList);
    }
}

package com.mapbox.mapboxsdk.t.a;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mapbox.geojson.LineString;
import com.mapbox.geojson.Point;
import com.mapbox.mapboxsdk.geometry.LatLng;
import java.util.ArrayList;
import java.util.List;

/* compiled from: LineOptions.java */
/* loaded from: classes2.dex */
public class q extends y<n> {

    /* renamed from: a, reason: collision with root package name */
    private boolean f16356a;

    /* renamed from: b, reason: collision with root package name */
    private JsonElement f16357b;

    /* renamed from: c, reason: collision with root package name */
    private LineString f16358c;

    /* renamed from: d, reason: collision with root package name */
    private String f16359d;

    /* renamed from: e, reason: collision with root package name */
    private Float f16360e;

    /* renamed from: f, reason: collision with root package name */
    private String f16361f;

    /* renamed from: g, reason: collision with root package name */
    private Float f16362g;

    /* renamed from: h, reason: collision with root package name */
    private Float f16363h;

    /* renamed from: i, reason: collision with root package name */
    private Float f16364i;

    /* renamed from: j, reason: collision with root package name */
    private Float f16365j;

    /* renamed from: k, reason: collision with root package name */
    private String f16366k;

    public q b(String str) {
        this.f16359d = str;
        return this;
    }

    public q c(Float f2) {
        this.f16364i = f2;
        return this;
    }

    public q d(Float f2) {
        this.f16360e = f2;
        return this;
    }

    public q e(Float f2) {
        this.f16362g = f2;
        return this;
    }

    public q a(String str) {
        this.f16361f = str;
        return this;
    }

    public q b(Float f2) {
        this.f16363h = f2;
        return this;
    }

    public q c(String str) {
        this.f16366k = str;
        return this;
    }

    public q a(Float f2) {
        this.f16365j = f2;
        return this;
    }

    public q a(List<LatLng> list) {
        ArrayList arrayList = new ArrayList();
        for (LatLng latLng : list) {
            arrayList.add(Point.fromLngLat(latLng.b(), latLng.a()));
        }
        this.f16358c = LineString.fromLngLats(arrayList);
        return this;
    }

    public q a(boolean z) {
        this.f16356a = z;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mapbox.mapboxsdk.t.a.y
    public n a(long j2, b<?, n, ?, ?, ?, ?> bVar) {
        if (this.f16358c != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("line-join", this.f16359d);
            jsonObject.addProperty("line-opacity", this.f16360e);
            jsonObject.addProperty("line-color", this.f16361f);
            jsonObject.addProperty("line-width", this.f16362g);
            jsonObject.addProperty("line-gap-width", this.f16363h);
            jsonObject.addProperty("line-offset", this.f16364i);
            jsonObject.addProperty("line-blur", this.f16365j);
            jsonObject.addProperty("line-pattern", this.f16366k);
            n nVar = new n(j2, bVar, jsonObject, this.f16358c);
            nVar.a(this.f16356a);
            nVar.a(this.f16357b);
            return nVar;
        }
        throw new RuntimeException("geometry field is required");
    }
}

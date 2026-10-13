package com.mapbox.mapboxsdk.t.a;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mapbox.geojson.Polygon;

/* compiled from: FillOptions.java */
/* loaded from: classes2.dex */
public class m extends y<j> {

    /* renamed from: a, reason: collision with root package name */
    private boolean f16345a;

    /* renamed from: b, reason: collision with root package name */
    private JsonElement f16346b;

    /* renamed from: c, reason: collision with root package name */
    private Polygon f16347c;

    /* renamed from: d, reason: collision with root package name */
    private Float f16348d;

    /* renamed from: e, reason: collision with root package name */
    private String f16349e;

    /* renamed from: f, reason: collision with root package name */
    private String f16350f;

    /* renamed from: g, reason: collision with root package name */
    private String f16351g;

    public m b(String str) {
        this.f16350f = str;
        return this;
    }

    public m c(String str) {
        this.f16351g = str;
        return this;
    }

    public m a(Float f2) {
        this.f16348d = f2;
        return this;
    }

    public m a(String str) {
        this.f16349e = str;
        return this;
    }

    public m a(Polygon polygon) {
        this.f16347c = polygon;
        return this;
    }

    public m a(boolean z) {
        this.f16345a = z;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mapbox.mapboxsdk.t.a.y
    public j a(long j2, b<?, j, ?, ?, ?, ?> bVar) {
        if (this.f16347c != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("fill-opacity", this.f16348d);
            jsonObject.addProperty("fill-color", this.f16349e);
            jsonObject.addProperty("fill-outline-color", this.f16350f);
            jsonObject.addProperty("fill-pattern", this.f16351g);
            j jVar = new j(j2, bVar, jsonObject, this.f16347c);
            jVar.a(this.f16345a);
            jVar.a(this.f16346b);
            return jVar;
        }
        throw new RuntimeException("geometry field is required");
    }
}

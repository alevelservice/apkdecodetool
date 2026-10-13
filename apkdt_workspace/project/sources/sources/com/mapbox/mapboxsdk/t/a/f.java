package com.mapbox.mapboxsdk.t.a;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mapbox.geojson.Point;

/* compiled from: CircleOptions.java */
/* loaded from: classes2.dex */
public class f extends y<c> {

    /* renamed from: a, reason: collision with root package name */
    private boolean f16318a;

    /* renamed from: b, reason: collision with root package name */
    private JsonElement f16319b;

    /* renamed from: c, reason: collision with root package name */
    private Point f16320c;

    /* renamed from: d, reason: collision with root package name */
    private Float f16321d;

    /* renamed from: e, reason: collision with root package name */
    private String f16322e;

    /* renamed from: f, reason: collision with root package name */
    private Float f16323f;

    /* renamed from: g, reason: collision with root package name */
    private Float f16324g;

    /* renamed from: h, reason: collision with root package name */
    private Float f16325h;

    /* renamed from: i, reason: collision with root package name */
    private String f16326i;

    /* renamed from: j, reason: collision with root package name */
    private Float f16327j;

    public f b(Float f2) {
        this.f16324g = f2;
        return this;
    }

    public f c(Float f2) {
        this.f16321d = f2;
        return this;
    }

    public f d(Float f2) {
        this.f16327j = f2;
        return this;
    }

    public f e(Float f2) {
        this.f16325h = f2;
        return this;
    }

    public f a(String str) {
        this.f16322e = str;
        return this;
    }

    public f b(String str) {
        this.f16326i = str;
        return this;
    }

    public f a(Float f2) {
        this.f16323f = f2;
        return this;
    }

    public f a(Point point) {
        this.f16320c = point;
        return this;
    }

    public f a(boolean z) {
        this.f16318a = z;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mapbox.mapboxsdk.t.a.y
    public c a(long j2, b<?, c, ?, ?, ?, ?> bVar) {
        if (this.f16320c != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("circle-radius", this.f16321d);
            jsonObject.addProperty("circle-color", this.f16322e);
            jsonObject.addProperty("circle-blur", this.f16323f);
            jsonObject.addProperty("circle-opacity", this.f16324g);
            jsonObject.addProperty("circle-stroke-width", this.f16325h);
            jsonObject.addProperty("circle-stroke-color", this.f16326i);
            jsonObject.addProperty("circle-stroke-opacity", this.f16327j);
            c cVar = new c(j2, bVar, jsonObject, this.f16320c);
            cVar.a(this.f16318a);
            cVar.a(this.f16319b);
            return cVar;
        }
        throw new RuntimeException("geometry field is required");
    }
}

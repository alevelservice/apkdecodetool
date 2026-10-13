package com.mapbox.mapboxsdk.t.a;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mapbox.geojson.Point;

/* compiled from: SymbolOptions.java */
/* loaded from: classes2.dex */
public class c0 extends y<z> {
    private String A;
    private String B;
    private Float C;
    private Float D;

    /* renamed from: a, reason: collision with root package name */
    private boolean f16303a;

    /* renamed from: b, reason: collision with root package name */
    private JsonElement f16304b;

    /* renamed from: c, reason: collision with root package name */
    private Point f16305c;

    /* renamed from: d, reason: collision with root package name */
    private Float f16306d;

    /* renamed from: e, reason: collision with root package name */
    private Float f16307e;

    /* renamed from: f, reason: collision with root package name */
    private String f16308f;

    /* renamed from: g, reason: collision with root package name */
    private Float f16309g;

    /* renamed from: h, reason: collision with root package name */
    private Float[] f16310h;

    /* renamed from: i, reason: collision with root package name */
    private String f16311i;

    /* renamed from: j, reason: collision with root package name */
    private String f16312j;

    /* renamed from: k, reason: collision with root package name */
    private String[] f16313k;

    /* renamed from: l, reason: collision with root package name */
    private Float f16314l;
    private Float m;
    private Float n;
    private String o;
    private Float p;
    private String q;
    private Float r;
    private String s;
    private Float[] t;
    private Float u;
    private String v;
    private String w;
    private Float x;
    private Float y;
    private Float z;

    public c0 b(Float[] fArr) {
        this.t = fArr;
        return this;
    }

    public c0 c(Float f2) {
        this.u = f2;
        return this;
    }

    public c0 d(String str) {
        this.f16308f = str;
        return this;
    }

    public c0 e(Float f2) {
        this.f16307e = f2;
        return this;
    }

    public c0 f(Float f2) {
        this.f16306d = f2;
        return this;
    }

    public c0 g(String str) {
        this.f16312j = str;
        return this;
    }

    public c0 h(String str) {
        this.B = str;
        return this;
    }

    public c0 i(Float f2) {
        this.n = f2;
        return this;
    }

    public c0 j(Float f2) {
        this.m = f2;
        return this;
    }

    public c0 k(Float f2) {
        this.z = f2;
        return this;
    }

    public c0 l(Float f2) {
        this.r = f2;
        return this;
    }

    public c0 m(Float f2) {
        this.f16314l = f2;
        return this;
    }

    public c0 a(Float[] fArr) {
        this.f16310h = fArr;
        return this;
    }

    public c0 b(String str) {
        this.v = str;
        return this;
    }

    public c0 c(String str) {
        this.w = str;
        return this;
    }

    public c0 d(Float f2) {
        this.f16309g = f2;
        return this;
    }

    public c0 e(String str) {
        this.q = str;
        return this;
    }

    public c0 f(String str) {
        this.A = str;
        return this;
    }

    public c0 g(Float f2) {
        this.D = f2;
        return this;
    }

    public c0 h(Float f2) {
        this.C = f2;
        return this;
    }

    public c0 i(String str) {
        this.o = str;
        return this;
    }

    public c0 j(String str) {
        this.s = str;
        return this;
    }

    public c0 a(String str) {
        this.f16311i = str;
        return this;
    }

    public c0 b(Float f2) {
        this.x = f2;
        return this;
    }

    public c0 a(String[] strArr) {
        this.f16313k = strArr;
        return this;
    }

    public c0 a(Float f2) {
        this.y = f2;
        return this;
    }

    public c0 a(Point point) {
        this.f16305c = point;
        return this;
    }

    public c0 a(boolean z) {
        this.f16303a = z;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mapbox.mapboxsdk.t.a.y
    public z a(long j2, b<?, z, ?, ?, ?, ?> bVar) {
        if (this.f16305c != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("symbol-sort-key", this.f16306d);
            jsonObject.addProperty("icon-size", this.f16307e);
            jsonObject.addProperty("icon-image", this.f16308f);
            jsonObject.addProperty("icon-rotate", this.f16309g);
            jsonObject.add("icon-offset", g.a(this.f16310h));
            jsonObject.addProperty("icon-anchor", this.f16311i);
            jsonObject.addProperty("text-field", this.f16312j);
            jsonObject.add("text-font", g.a(this.f16313k));
            jsonObject.addProperty("text-size", this.f16314l);
            jsonObject.addProperty("text-max-width", this.m);
            jsonObject.addProperty("text-letter-spacing", this.n);
            jsonObject.addProperty("text-justify", this.o);
            jsonObject.addProperty("text-radial-offset", this.p);
            jsonObject.addProperty("text-anchor", this.q);
            jsonObject.addProperty("text-rotate", this.r);
            jsonObject.addProperty("text-transform", this.s);
            jsonObject.add("text-offset", g.a(this.t));
            jsonObject.addProperty("icon-opacity", this.u);
            jsonObject.addProperty("icon-color", this.v);
            jsonObject.addProperty("icon-halo-color", this.w);
            jsonObject.addProperty("icon-halo-width", this.x);
            jsonObject.addProperty("icon-halo-blur", this.y);
            jsonObject.addProperty("text-opacity", this.z);
            jsonObject.addProperty("text-color", this.A);
            jsonObject.addProperty("text-halo-color", this.B);
            jsonObject.addProperty("text-halo-width", this.C);
            jsonObject.addProperty("text-halo-blur", this.D);
            z zVar = new z(j2, bVar, jsonObject, this.f16305c);
            zVar.a(this.f16303a);
            zVar.a(this.f16304b);
            return zVar;
        }
        throw new RuntimeException("geometry field is required");
    }
}

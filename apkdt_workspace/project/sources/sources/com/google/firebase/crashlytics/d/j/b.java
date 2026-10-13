package com.google.firebase.crashlytics.d.j;

import i.a0;
import i.d;
import i.s;
import i.u;
import i.v;
import i.w;
import i.z;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* compiled from: HttpRequest.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: f, reason: collision with root package name */
    private static final w f14612f;

    /* renamed from: a, reason: collision with root package name */
    private final a f14613a;

    /* renamed from: b, reason: collision with root package name */
    private final String f14614b;

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, String> f14615c;

    /* renamed from: e, reason: collision with root package name */
    private v.a f14617e = null;

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, String> f14616d = new HashMap();

    static {
        w.b D = new w().D();
        D.a(10000L, TimeUnit.MILLISECONDS);
        f14612f = D.a();
    }

    public b(a aVar, String str, Map<String, String> map) {
        this.f14613a = aVar;
        this.f14614b = str;
        this.f14615c = map;
    }

    private z c() {
        z.a aVar = new z.a();
        d.a aVar2 = new d.a();
        aVar2.b();
        aVar.a(aVar2.a());
        s.a i2 = s.e(this.f14614b).i();
        for (Map.Entry<String, String> entry : this.f14615c.entrySet()) {
            i2.a(entry.getKey(), entry.getValue());
        }
        aVar.a(i2.a());
        for (Map.Entry<String, String> entry2 : this.f14616d.entrySet()) {
            aVar.b(entry2.getKey(), entry2.getValue());
        }
        v.a aVar3 = this.f14617e;
        aVar.a(this.f14613a.name(), aVar3 == null ? null : aVar3.a());
        return aVar.a();
    }

    private v.a d() {
        if (this.f14617e == null) {
            v.a aVar = new v.a();
            aVar.a(v.f18803f);
            this.f14617e = aVar;
        }
        return this.f14617e;
    }

    public b a(String str, String str2) {
        this.f14616d.put(str, str2);
        return this;
    }

    public b b(String str, String str2) {
        v.a d2 = d();
        d2.a(str, str2);
        this.f14617e = d2;
        return this;
    }

    public b a(Map.Entry<String, String> entry) {
        a(entry.getKey(), entry.getValue());
        return this;
    }

    public String b() {
        return this.f14613a.name();
    }

    public b a(String str, String str2, String str3, File file) {
        a0 a2 = a0.a(u.b(str3), file);
        v.a d2 = d();
        d2.a(str, str2, a2);
        this.f14617e = d2;
        return this;
    }

    public d a() {
        return d.a(f14612f.a(c()).execute());
    }
}

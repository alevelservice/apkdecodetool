package e.b.b.a.a.b;

import e.b.b.a.a.a.c;

/* compiled from: TraceLog.java */
/* loaded from: classes.dex */
public class f extends b {

    /* renamed from: c, reason: collision with root package name */
    private String f16909c;

    /* renamed from: d, reason: collision with root package name */
    private c f16910d;

    /* renamed from: e, reason: collision with root package name */
    private String f16911e;

    /* renamed from: f, reason: collision with root package name */
    private Throwable f16912f;

    public f(String str, c cVar, String str2, Throwable th) {
        this.f16909c = str;
        this.f16910d = cVar;
        this.f16911e = str2;
        this.f16912f = th;
    }

    @Override // e.b.b.a.a.b.b
    public String a() {
        return "applog";
    }

    public String e() {
        return this.f16909c;
    }

    public c f() {
        return this.f16910d;
    }

    public String g() {
        return this.f16911e;
    }

    public Throwable h() {
        return this.f16912f;
    }
}

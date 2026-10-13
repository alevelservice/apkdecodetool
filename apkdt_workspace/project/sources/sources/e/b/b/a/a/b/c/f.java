package e.b.b.a.a.b.c;

import e.b.b.a.a.d.i;
import e.b.b.a.a.e.p;

/* compiled from: SPMLog.java */
/* loaded from: classes.dex */
public class f extends a {

    /* renamed from: d, reason: collision with root package name */
    private String f16898d = "pageMonitor";

    /* renamed from: e, reason: collision with root package name */
    private String f16899e;

    /* renamed from: f, reason: collision with root package name */
    private e f16900f;

    /* renamed from: g, reason: collision with root package name */
    private String f16901g;

    /* renamed from: h, reason: collision with root package name */
    private String f16902h;

    public f(String str) {
        j();
        this.f16899e = str;
        String str2 = str + p.f17069a + i.a().f() + p.f17069a + e.b.b.a.a.e.i.a(System.currentTimeMillis());
        this.f16900f.b(str2);
        i.a().c(str2);
    }

    private void j() {
        this.f16900f = new e();
        b();
        this.f16900f.a(System.currentTimeMillis() + "");
        this.f16900f.d(i.a().n());
    }

    @Override // e.b.b.a.a.b.b
    public String a() {
        return this.f16898d;
    }

    public void b(String str) {
        e eVar = this.f16900f;
        if (eVar != null) {
            eVar.c(str);
        }
    }

    public void c(String str) {
        e eVar = this.f16900f;
        if (eVar != null) {
            eVar.a(str);
        }
    }

    public void d(String str) {
        this.f16901g = str;
    }

    public void e(String str) {
        this.f16902h = str;
    }

    @Override // e.b.b.a.a.b.c.a
    public String f() {
        return this.f16899e;
    }

    public e g() {
        return this.f16900f;
    }

    public String h() {
        return this.f16901g;
    }

    public String i() {
        return this.f16902h;
    }

    public void f(String str) {
        this.f16900f.b(str);
    }
}

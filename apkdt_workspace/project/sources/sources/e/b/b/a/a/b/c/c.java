package e.b.b.a.a.b.c;

import android.app.Activity;
import android.content.Context;
import e.b.b.a.a.d.i;

/* compiled from: AutoBehaviourLog.java */
/* loaded from: classes.dex */
public class c extends a {

    /* renamed from: d, reason: collision with root package name */
    private String f16879d;

    /* renamed from: e, reason: collision with root package name */
    private String f16880e;

    /* renamed from: f, reason: collision with root package name */
    private e f16881f;

    /* renamed from: g, reason: collision with root package name */
    private String f16882g;

    /* renamed from: h, reason: collision with root package name */
    private String f16883h;

    /* renamed from: i, reason: collision with root package name */
    private int f16884i;

    public c() {
        this.f16880e = "auto_openPage";
        this.f16882g = "autouserbehavor";
        this.f16884i = 2;
        this.f16881f = new e();
        b();
    }

    private void k() {
        this.f16881f = new e();
        b();
        this.f16881f.a(System.currentTimeMillis() + "");
        this.f16881f.d(i.a().m());
    }

    @Override // e.b.b.a.a.b.b
    public String a() {
        return this.f16882g;
    }

    public c b(String str) {
        this.f16879d = str;
        return this;
    }

    public void c(String str) {
        this.f16881f.c(str);
    }

    @Override // e.b.b.a.a.b.c.a
    public String f() {
        return this.f16879d;
    }

    public e g() {
        return this.f16881f;
    }

    public String h() {
        return this.f16880e;
    }

    public int i() {
        return this.f16884i;
    }

    public String j() {
        return this.f16883h;
    }

    public c(Context context) {
        this.f16880e = "auto_openPage";
        this.f16882g = "autouserbehavor";
        this.f16884i = 2;
        k();
        if (context instanceof Activity) {
            String str = context.getClass().getName() + "_" + i.a().f() + "_" + e.b.b.a.a.e.i.a(System.currentTimeMillis());
            this.f16881f.b(str);
            b(context.getClass().getName());
            this.f16881f.e(context.getClass().getName());
            i.a().d(str);
        }
    }
}

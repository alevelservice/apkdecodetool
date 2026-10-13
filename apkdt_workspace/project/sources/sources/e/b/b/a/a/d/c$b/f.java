package e.b.b.a.a.d.c$b;

import android.os.Build;
import android.text.TextUtils;
import e.b.b.a.a.e.j;
import e.b.b.a.a.e.l;

/* compiled from: MasManualBehaviourLog.java */
/* loaded from: classes.dex */
public class f implements e<e.b.b.a.a.b.c.d> {

    /* renamed from: a, reason: collision with root package name */
    private e.b.b.a.a.a.d f16999a;

    public f(e.b.b.a.a.a.d dVar) {
        this.f16999a = dVar;
    }

    @Override // e.b.b.a.a.d.c$b.e
    public String a(e.b.b.a.a.b.c.d dVar) {
        dVar.a(dVar);
        StringBuilder sb = new StringBuilder();
        sb.append("D-VM");
        j.a(sb, j.c());
        j.a(sb, this.f16999a.d());
        j.a(sb, this.f16999a.g());
        j.a(sb, "2");
        j.a(sb, this.f16999a.f());
        j.a(sb, this.f16999a.r());
        j.a(sb, this.f16999a.e());
        if (!TextUtils.isEmpty(dVar.h())) {
            j.a(sb, dVar.h());
        } else {
            j.a(sb, "event");
        }
        j.a(sb, dVar.e());
        if (dVar.g() != null && !TextUtils.isEmpty(dVar.g().d())) {
            j.a(sb, j.d(dVar.g().d()) + "|" + dVar.g().d());
        } else {
            j.a(sb, "-");
        }
        j.a(sb, "-");
        j.a(sb, "-");
        if (dVar.g().e() != null) {
            j.a(sb, "//" + dVar.g().e());
        } else {
            j.a(sb, "-");
        }
        j.a(sb, "-");
        if (dVar.f() != null) {
            j.a(sb, dVar.f());
        } else {
            j.a(sb, "-");
        }
        j.a(sb, dVar.i() + "");
        j.a(sb, TextUtils.isEmpty(dVar.k()) ? "behavior" : dVar.k());
        j.a(sb, "c");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, dVar.d());
        j.a(sb, dVar.j());
        if (dVar.g().c() != null && dVar.g().a() != null) {
            try {
                j.a(sb, Long.valueOf(Long.valueOf(dVar.g().c()).longValue() - Long.valueOf(dVar.g().a()).longValue()) + "");
            } catch (Exception unused) {
            }
        } else {
            j.a(sb, "-");
        }
        j.a(sb, this.f16999a.f());
        j.a(sb, "-");
        if (dVar.g() != null && dVar.g().b() != null) {
            j.a(sb, dVar.g().b());
        } else {
            j.a(sb, "-");
        }
        if (dVar.g() != null && dVar.g().d() != null) {
            j.a(sb, dVar.g().d());
        } else {
            j.a(sb, "-");
        }
        if (dVar.g() != null && dVar.g().e() != null) {
            j.a(sb, dVar.g().e());
        } else {
            j.a(sb, "-");
        }
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, String.valueOf(1000));
        j.a(sb, Build.MODEL);
        j.a(sb, Build.VERSION.RELEASE);
        j.a(sb, l.b(this.f16999a.a()));
        j.a(sb, this.f16999a.g());
        j.a(sb, "-");
        j.a(sb, this.f16999a.l());
        j.a(sb, "-");
        j.a(sb, String.valueOf(e.b.b.a.a.e.f.a()));
        j.a(sb, String.valueOf(e.b.b.a.a.e.f.b()));
        j.a(sb, String.valueOf(e.b.b.a.a.e.f.a(this.f16999a.a())));
        j.a(sb, this.f16999a.k());
        j.a(sb, "-");
        j.a(sb, j.d());
        j.a(sb, e.b.b.a.a.d.i.b().d());
        j.a(sb, dVar.c());
        sb.append("$$");
        return sb.toString();
    }
}

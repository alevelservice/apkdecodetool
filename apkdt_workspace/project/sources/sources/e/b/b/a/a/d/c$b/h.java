package e.b.b.a.a.d.c$b;

import android.os.Build;
import android.text.TextUtils;
import e.b.b.a.a.e.j;
import e.b.b.a.a.e.l;

/* compiled from: MasSPMLog.java */
/* loaded from: classes.dex */
public class h implements e<e.b.b.a.a.b.c.f> {

    /* renamed from: a, reason: collision with root package name */
    private e.b.b.a.a.a.d f17001a;

    public h(e.b.b.a.a.a.d dVar) {
        this.f17001a = dVar;
    }

    @Override // e.b.b.a.a.d.c$b.e
    public String a(e.b.b.a.a.b.c.f fVar) {
        fVar.a(fVar);
        StringBuilder sb = new StringBuilder();
        sb.append("D-VM");
        j.a(sb, j.c());
        j.a(sb, this.f17001a.d());
        j.a(sb, this.f17001a.g());
        j.a(sb, "2");
        j.a(sb, this.f17001a.f());
        j.a(sb, this.f17001a.r());
        j.a(sb, this.f17001a.e());
        j.a(sb, "pageMonitor");
        j.a(sb, fVar.e());
        j.a(sb, fVar.i());
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, fVar.f());
        j.a(sb, "-");
        j.a(sb, TextUtils.isEmpty(fVar.h()) ? "behavior" : fVar.h());
        j.a(sb, "c");
        j.a(sb, fVar.i());
        if (fVar.g().c() != null && fVar.g().a() != null) {
            try {
                j.a(sb, String.valueOf(Long.valueOf(Long.valueOf(fVar.g().c()).longValue() - Long.valueOf(fVar.g().a()).longValue())));
            } catch (Exception unused) {
            }
        } else {
            j.a(sb, "-");
        }
        j.a(sb, "-");
        j.a(sb, fVar.d());
        j.a(sb, "-");
        if (fVar.g().c() != null && fVar.g().a() != null) {
            try {
                j.a(sb, Long.valueOf(Long.valueOf(fVar.g().c()).longValue() - Long.valueOf(fVar.g().a()).longValue()) + "");
            } catch (Exception unused2) {
            }
        } else {
            j.a(sb, "-");
        }
        j.a(sb, this.f17001a.f());
        j.a(sb, "-");
        if (fVar.g() != null && fVar.g().b() != null) {
            j.a(sb, fVar.g().b());
        } else {
            j.a(sb, "-");
        }
        if (fVar.g() != null && fVar.g().d() != null) {
            j.a(sb, fVar.g().d());
        } else {
            j.a(sb, "-");
        }
        if (fVar.g() != null && fVar.g().e() != null) {
            j.a(sb, fVar.g().e());
        } else {
            j.a(sb, "-");
        }
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, String.valueOf(1000));
        j.a(sb, Build.MODEL);
        j.a(sb, Build.VERSION.RELEASE);
        j.a(sb, l.b(this.f17001a.a()));
        j.a(sb, this.f17001a.g());
        j.a(sb, this.f17001a.s());
        j.a(sb, this.f17001a.l());
        j.a(sb, "-");
        j.a(sb, String.valueOf(e.b.b.a.a.e.f.a()));
        j.a(sb, String.valueOf(e.b.b.a.a.e.f.b()));
        j.a(sb, String.valueOf(e.b.b.a.a.e.f.a(this.f17001a.a())));
        j.a(sb, this.f17001a.k());
        j.a(sb, "-");
        j.a(sb, j.d());
        j.a(sb, e.b.b.a.a.d.i.b().d());
        j.a(sb, "-");
        sb.append("$$");
        return sb.toString();
    }
}

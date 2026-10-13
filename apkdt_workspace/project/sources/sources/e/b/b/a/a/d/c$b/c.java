package e.b.b.a.a.d.c$b;

import android.os.Build;
import android.text.TextUtils;
import e.b.b.a.a.e.j;
import e.b.b.a.a.e.l;

/* compiled from: MasAutoBehaviourLog.java */
/* loaded from: classes.dex */
public class c implements e<e.b.b.a.a.b.c.c> {

    /* renamed from: a, reason: collision with root package name */
    private e.b.b.a.a.a.d f16997a;

    public c(e.b.b.a.a.a.d dVar) {
        this.f16997a = dVar;
    }

    @Override // e.b.b.a.a.d.c$b.e
    public String a(e.b.b.a.a.b.c.c cVar) {
        e.b.b.a.a.d.i.c().c("MasAutoBehaviourLog", "last page:  " + cVar.g().d());
        cVar.a(cVar);
        StringBuilder sb = new StringBuilder();
        sb.append("D-AM");
        j.a(sb, j.c());
        j.a(sb, this.f16997a.d());
        j.a(sb, this.f16997a.g());
        j.a(sb, "2");
        j.a(sb, this.f16997a.f());
        j.a(sb, this.f16997a.r());
        j.a(sb, this.f16997a.e());
        if (!TextUtils.isEmpty(cVar.h())) {
            j.a(sb, cVar.h());
        } else {
            j.a(sb, "event");
        }
        j.a(sb, cVar.e());
        if (cVar.g() != null && !TextUtils.isEmpty(cVar.g().d())) {
            j.a(sb, j.d(cVar.g().d()) + "|" + cVar.g().d());
        } else {
            j.a(sb, "-");
        }
        j.a(sb, "-");
        j.a(sb, "-");
        if (cVar.g().e() != null) {
            j.a(sb, "//" + cVar.g().e());
        } else {
            j.a(sb, "-");
        }
        j.a(sb, "-");
        if (cVar.f() != null) {
            j.a(sb, cVar.f());
        } else {
            j.a(sb, "-");
        }
        j.a(sb, cVar.i() + "");
        j.a(sb, "autotrack");
        j.a(sb, "c");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, cVar.d());
        j.a(sb, cVar.j());
        if (cVar.g().c() != null && cVar.g().a() != null) {
            try {
                j.a(sb, Long.valueOf(Long.valueOf(cVar.g().c()).longValue() - Long.valueOf(cVar.g().a()).longValue()) + "");
            } catch (Exception unused) {
            }
        } else {
            j.a(sb, "-");
        }
        j.a(sb, this.f16997a.f());
        j.a(sb, "-");
        if (cVar.g() != null && cVar.g().b() != null) {
            j.a(sb, cVar.g().b());
        } else {
            j.a(sb, "-");
        }
        if (cVar.g() != null && cVar.g().d() != null) {
            j.a(sb, cVar.g().d());
        } else {
            j.a(sb, "-");
        }
        if (cVar.g().e() != null) {
            j.a(sb, cVar.g().e());
        } else {
            j.a(sb, "-");
        }
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "1000");
        j.a(sb, Build.MODEL);
        j.a(sb, Build.VERSION.RELEASE);
        j.a(sb, l.b(this.f16997a.a()));
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, this.f16997a.l());
        j.a(sb, "-");
        j.a(sb, String.valueOf(e.b.b.a.a.e.f.a()));
        j.a(sb, String.valueOf(e.b.b.a.a.e.f.b()));
        j.a(sb, String.valueOf(e.b.b.a.a.e.f.a(this.f16997a.a())));
        j.a(sb, this.f16997a.k());
        j.a(sb, "-");
        j.a(sb, j.d());
        j.a(sb, e.b.b.a.a.d.i.b().d());
        j.a(sb, cVar.c());
        sb.append("$$");
        return sb.toString();
    }
}

package e.b.b.a.a.d.c$b;

import android.os.Build;
import e.b.b.a.a.e.j;
import e.b.b.a.a.e.l;

/* compiled from: MasApmLog.java */
/* loaded from: classes.dex */
public class b implements e<e.b.b.a.a.b.a.a> {

    /* renamed from: a, reason: collision with root package name */
    private e.b.b.a.a.a.d f16996a;

    public b(e.b.b.a.a.a.d dVar) {
        this.f16996a = dVar;
    }

    @Override // e.b.b.a.a.d.c$b.e
    public String a(e.b.b.a.a.b.a.a aVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("D-EM");
        j.a(sb, j.c());
        j.a(sb, this.f16996a.d());
        j.a(sb, this.f16996a.g());
        j.a(sb, "2");
        j.a(sb, this.f16996a.f());
        j.a(sb, this.f16996a.e());
        j.a(sb, l.b(this.f16996a.a()));
        j.a(sb, Build.MODEL);
        j.a(sb, Build.VERSION.RELEASE);
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, aVar.e());
        j.a(sb, aVar.f());
        if (aVar.g() != null) {
            aVar.d().put("stackFrame", j.a(aVar.g()));
        }
        j.a(sb, aVar.d());
        j.a(sb, this.f16996a.l());
        j.a(sb, "-");
        j.a(sb, String.valueOf(e.b.b.a.a.e.f.a()));
        j.a(sb, String.valueOf(e.b.b.a.a.e.f.b()));
        j.a(sb, String.valueOf(String.valueOf(e.b.b.a.a.e.f.a(this.f16996a.a()))));
        j.a(sb, (String) null);
        j.a(sb, "-");
        j.a(sb, e.b.b.a.a.d.i.b().d());
        j.a(sb, this.f16996a.f());
        j.a(sb, this.f16996a.k());
        j.a(sb, aVar.c());
        sb.append("$$");
        return sb.toString();
    }
}

package e.b.b.a.a.d.c$b;

import android.os.Build;
import android.text.TextUtils;
import e.b.b.a.a.e.j;
import e.b.b.a.a.e.l;

/* compiled from: MasAliveReportLog.java */
/* loaded from: classes.dex */
public class a implements e<e.b.b.a.a.b.c.b> {

    /* renamed from: a, reason: collision with root package name */
    private e.b.b.a.a.a.d f16995a;

    public a(e.b.b.a.a.a.d dVar) {
        this.f16995a = dVar;
    }

    @Override // e.b.b.a.a.d.c$b.e
    public String a(e.b.b.a.a.b.c.b bVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("D-VM");
        j.a(sb, j.c());
        j.a(sb, this.f16995a.d());
        j.a(sb, this.f16995a.g());
        j.a(sb, "2");
        j.a(sb, this.f16995a.f());
        j.a(sb, this.f16995a.r());
        j.a(sb, this.f16995a.e());
        if (!TextUtils.isEmpty(bVar.f())) {
            j.a(sb, bVar.f());
        } else {
            j.a(sb, "event");
        }
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "-");
        if (bVar.e() != null) {
            j.a(sb, bVar.e());
        }
        j.a(sb, "reportActive");
        j.a(sb, bVar.g() + "");
        j.a(sb, "-");
        j.a(sb, "c");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, bVar.d());
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, this.f16995a.f());
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, String.valueOf(1000));
        j.a(sb, Build.MODEL);
        j.a(sb, Build.VERSION.RELEASE);
        j.a(sb, l.b(this.f16995a.a()));
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, this.f16995a.l());
        j.a(sb, "-");
        j.a(sb, String.valueOf(e.b.b.a.a.e.f.a()));
        j.a(sb, String.valueOf(e.b.b.a.a.e.f.b()));
        j.a(sb, String.valueOf(e.b.b.a.a.e.f.a(this.f16995a.a())));
        j.a(sb, this.f16995a.k());
        j.a(sb, "-");
        j.a(sb, j.d());
        j.a(sb, e.b.b.a.a.d.i.b().d());
        j.a(sb, bVar.c());
        sb.append("$$");
        return sb.toString();
    }
}

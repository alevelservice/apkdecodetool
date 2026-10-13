package e.b.b.a.a.d.c$b;

import android.os.Build;
import android.text.TextUtils;
import e.b.b.a.a.e.j;
import e.b.b.a.a.e.l;

/* compiled from: MasPerformanceLog.java */
/* loaded from: classes.dex */
public class g implements e<e.b.b.a.a.b.g.b> {

    /* renamed from: a, reason: collision with root package name */
    private e.b.b.a.a.a.d f17000a;

    public g(e.b.b.a.a.a.d dVar) {
        this.f17000a = dVar;
    }

    @Override // e.b.b.a.a.d.c$b.e
    public String a(e.b.b.a.a.b.g.b bVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("D-MM");
        j.a(sb, j.c());
        j.a(sb, this.f17000a.d());
        j.a(sb, this.f17000a.g());
        j.a(sb, "2");
        j.a(sb, this.f17000a.f());
        j.a(sb, this.f17000a.r());
        j.a(sb, this.f17000a.e());
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, String.valueOf(1000));
        if (TextUtils.isEmpty(bVar.k())) {
            j.a(sb, bVar.i().getDes());
        } else {
            j.a(sb, bVar.k());
        }
        j.a(sb, bVar.e());
        j.a(sb, bVar.f());
        j.a(sb, bVar.g());
        j.a(sb, bVar.h());
        j.a(sb, bVar.d());
        j.a(sb, "android");
        j.a(sb, Build.VERSION.RELEASE);
        j.a(sb, l.b(this.f17000a.a()));
        j.a(sb, Build.MODEL);
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, this.f17000a.f());
        j.a(sb, this.f17000a.l());
        j.a(sb, String.valueOf(e.b.b.a.a.e.f.a()));
        j.a(sb, String.valueOf(e.b.b.a.a.e.f.b()));
        j.a(sb, String.valueOf(e.b.b.a.a.e.f.a(this.f17000a.a())));
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, this.f17000a.k());
        j.a(sb, "-");
        j.a(sb, j.d());
        j.a(sb, "-");
        j.a(sb, e.b.b.a.a.d.i.b().d());
        j.a(sb, bVar.c());
        j.a(sb, String.valueOf(bVar.j()));
        sb.append("$$");
        return sb.toString();
    }
}

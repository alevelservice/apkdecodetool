package e.b.b.a.a.d.c$b;

import android.os.Build;
import com.ap.zoloz.hummer.biz.HummerConstants;
import e.b.b.a.a.e.j;
import e.b.b.a.a.e.l;

/* compiled from: MasExceptionLog.java */
/* loaded from: classes.dex */
public class d implements e<e.b.b.a.a.b.e.a> {

    /* renamed from: a, reason: collision with root package name */
    private e.b.b.a.a.a.d f16998a;

    public d(e.b.b.a.a.a.d dVar) {
        this.f16998a = dVar;
    }

    @Override // e.b.b.a.a.d.c$b.e
    public String a(e.b.b.a.a.b.e.a aVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("e");
        j.a(sb, j.c());
        j.a(sb, this.f16998a.d());
        j.a(sb, this.f16998a.g());
        j.a(sb, "2");
        j.a(sb, this.f16998a.f());
        j.a(sb, this.f16998a.r());
        j.a(sb, this.f16998a.e());
        j.a(sb, HummerConstants.NORMAL_EXCEPTION);
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, aVar.g());
        j.a(sb, aVar.e());
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, e.b.b.a.a.d.i.a().m());
        j.a(sb, aVar.f());
        j.a(sb, e.b.b.a.a.d.f.a.f17014f ? "bg" : "fg");
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, Build.MODEL);
        j.a(sb, Build.VERSION.RELEASE);
        j.a(sb, l.b(this.f16998a.a()));
        j.a(sb, aVar.d());
        j.a(sb, "-");
        j.a(sb, this.f16998a.f());
        j.a(sb, this.f16998a.l());
        j.a(sb, "-");
        j.a(sb, "-");
        if (aVar.f() != null) {
            j.a(sb, aVar.f());
        } else {
            j.a(sb, "-");
        }
        j.a(sb, "-");
        j.a(sb, "-");
        j.a(sb, "-");
        sb.append("$$");
        return sb.toString().replaceAll("\n", "###");
    }
}

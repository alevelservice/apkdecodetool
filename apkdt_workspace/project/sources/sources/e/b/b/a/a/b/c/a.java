package e.b.b.a.a.b.c;

import android.text.TextUtils;
import e.b.b.a.a.d.i;
import java.util.Map;

/* compiled from: AbTestLog.java */
/* loaded from: classes.dex */
public abstract class a extends e.b.b.a.a.b.b {

    /* renamed from: c, reason: collision with root package name */
    private String f16874c;

    public void a(String str) {
        this.f16874c = str;
    }

    public String e() {
        return this.f16874c;
    }

    public abstract String f();

    public void a(a aVar) {
        if (aVar == null || !TextUtils.isEmpty(aVar.e()) || i.a() == null) {
            return;
        }
        String str = aVar.d() != null ? aVar.d().get("abTestInfo") : null;
        e.b.b.a.a.a.a.a o = i.a().o();
        if (o == null) {
            aVar.a(str);
            return;
        }
        String f2 = aVar.f();
        if (TextUtils.isEmpty(f2)) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            str = o.a(f2);
        }
        aVar.a(str);
        Map<String, String> b2 = o.b(f2);
        if (b2 == null) {
            return;
        }
        a(b2);
    }
}

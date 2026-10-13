package e.n.a.f;

import java.util.List;

/* compiled from: BaseReadOperation.java */
/* loaded from: classes2.dex */
public abstract class b implements f {
    private String e() {
        return (String) a("sql");
    }

    private List<Object> f() {
        return (List) a("arguments");
    }

    @Override // e.n.a.f.f
    public e.n.a.d a() {
        return new e.n.a.d(e(), f());
    }

    @Override // e.n.a.f.f
    public boolean b() {
        return Boolean.TRUE.equals(a("noResult"));
    }

    @Override // e.n.a.f.f
    public Boolean c() {
        return b("inTransaction");
    }

    public boolean d() {
        return Boolean.TRUE.equals(a("continueOnError"));
    }

    private Boolean b(String str) {
        Object a2 = a(str);
        if (a2 instanceof Boolean) {
            return (Boolean) a2;
        }
        return null;
    }
}

package e.b.b.a.a.b.c;

import java.util.Map;

/* compiled from: BehaviourLog.java */
/* loaded from: classes.dex */
public class d extends e.b.b.a.a.b.c.a {

    /* renamed from: d, reason: collision with root package name */
    private String f16885d;

    /* renamed from: h, reason: collision with root package name */
    private String f16889h;

    /* renamed from: i, reason: collision with root package name */
    private String f16890i;

    /* renamed from: f, reason: collision with root package name */
    private String f16887f = "userbehavor";

    /* renamed from: g, reason: collision with root package name */
    private String f16888g = "event";

    /* renamed from: j, reason: collision with root package name */
    private int f16891j = 2;

    /* renamed from: e, reason: collision with root package name */
    private e f16886e = new e();

    /* compiled from: BehaviourLog.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private final d f16892a = new d();

        public a a(String str) {
            this.f16892a.c(str);
            return this;
        }

        public a b(String str) {
            this.f16892a.d(str);
            return this;
        }

        public a c(String str) {
            this.f16892a.b(str);
            return this;
        }

        public a d(String str) {
            this.f16892a.g().b(str);
            return this;
        }

        public a e(String str) {
            this.f16892a.g().d(str);
            return this;
        }

        public a a(String str, String str2) {
            this.f16892a.a(str, str2);
            return this;
        }

        public a a(Map<String, String> map) {
            if (map != null && map.size() > 0) {
                for (String str : map.keySet()) {
                    a(str, map.get(str));
                }
            }
            return this;
        }

        public d a() {
            return this.f16892a;
        }
    }

    public d() {
        b();
    }

    @Override // e.b.b.a.a.b.b
    public String a() {
        return this.f16887f;
    }

    public d b(String str) {
        this.f16885d = str;
        return this;
    }

    public d c(String str) {
        this.f16888g = str;
        return this;
    }

    public void d(String str) {
        this.f16890i = str;
    }

    @Override // e.b.b.a.a.b.c.a
    public String f() {
        return this.f16885d;
    }

    public e g() {
        return this.f16886e;
    }

    public String h() {
        return this.f16888g;
    }

    public int i() {
        return this.f16891j;
    }

    public String j() {
        return this.f16889h;
    }

    public String k() {
        return this.f16890i;
    }
}

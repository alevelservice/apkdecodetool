package i.g0.e;

import i.b0;
import i.c0;
import i.g0.e.c;
import i.g0.g.f;
import i.g0.g.h;
import i.r;
import i.t;
import i.x;
import i.z;
import j.e;
import j.n;
import j.u;
import j.v;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* compiled from: CacheInterceptor.java */
/* loaded from: classes2.dex */
public final class a implements t {

    /* renamed from: a, reason: collision with root package name */
    final d f18462a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CacheInterceptor.java */
    /* renamed from: i.g0.e.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0221a implements u {

        /* renamed from: e, reason: collision with root package name */
        boolean f18463e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ e f18464f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ b f18465g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ j.d f18466h;

        C0221a(a aVar, e eVar, b bVar, j.d dVar) {
            this.f18464f = eVar;
            this.f18465g = bVar;
            this.f18466h = dVar;
        }

        @Override // j.u
        public long b(j.c cVar, long j2) {
            try {
                long b2 = this.f18464f.b(cVar, j2);
                if (b2 == -1) {
                    if (!this.f18463e) {
                        this.f18463e = true;
                        this.f18466h.close();
                    }
                    return -1L;
                }
                cVar.a(this.f18466h.a(), cVar.z() - b2, b2);
                this.f18466h.b();
                return b2;
            } catch (IOException e2) {
                if (!this.f18463e) {
                    this.f18463e = true;
                    this.f18465g.a();
                }
                throw e2;
            }
        }

        @Override // j.u, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (!this.f18463e && !i.g0.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                this.f18463e = true;
                this.f18465g.a();
            }
            this.f18464f.close();
        }

        @Override // j.u
        public v timeout() {
            return this.f18464f.timeout();
        }
    }

    public a(d dVar) {
        this.f18462a = dVar;
    }

    static boolean b(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    @Override // i.t
    public b0 a(t.a aVar) {
        d dVar = this.f18462a;
        b0 b2 = dVar != null ? dVar.b(aVar.v()) : null;
        c a2 = new c.a(System.currentTimeMillis(), aVar.v(), b2).a();
        z zVar = a2.f18467a;
        b0 b0Var = a2.f18468b;
        d dVar2 = this.f18462a;
        if (dVar2 != null) {
            dVar2.a(a2);
        }
        if (b2 != null && b0Var == null) {
            i.g0.c.a(b2.i());
        }
        if (zVar == null && b0Var == null) {
            b0.a aVar2 = new b0.a();
            aVar2.a(aVar.v());
            aVar2.a(x.HTTP_1_1);
            aVar2.a(504);
            aVar2.a("Unsatisfiable Request (only-if-cached)");
            aVar2.a(i.g0.c.f18450c);
            aVar2.b(-1L);
            aVar2.a(System.currentTimeMillis());
            return aVar2.a();
        }
        if (zVar == null) {
            b0.a q = b0Var.q();
            q.a(a(b0Var));
            return q.a();
        }
        try {
            b0 a3 = aVar.a(zVar);
            if (a3 == null && b2 != null) {
            }
            if (b0Var != null) {
                if (a3.k() == 304) {
                    b0.a q2 = b0Var.q();
                    q2.a(a(b0Var.m(), a3.m()));
                    q2.b(a3.u());
                    q2.a(a3.s());
                    q2.a(a(b0Var));
                    q2.b(a(a3));
                    b0 a4 = q2.a();
                    a3.i().close();
                    this.f18462a.a();
                    this.f18462a.a(b0Var, a4);
                    return a4;
                }
                i.g0.c.a(b0Var.i());
            }
            b0.a q3 = a3.q();
            q3.a(a(b0Var));
            q3.b(a(a3));
            b0 a5 = q3.a();
            if (this.f18462a != null) {
                if (i.g0.g.e.b(a5) && c.a(a5, zVar)) {
                    return a(this.f18462a.a(a5), a5);
                }
                if (f.a(zVar.e())) {
                    try {
                        this.f18462a.a(zVar);
                    } catch (IOException unused) {
                    }
                }
            }
            return a5;
        } finally {
            if (b2 != null) {
                i.g0.c.a(b2.i());
            }
        }
    }

    private static b0 a(b0 b0Var) {
        if (b0Var == null || b0Var.i() == null) {
            return b0Var;
        }
        b0.a q = b0Var.q();
        q.a((c0) null);
        return q.a();
    }

    private b0 a(b bVar, b0 b0Var) {
        j.t b2;
        if (bVar == null || (b2 = bVar.b()) == null) {
            return b0Var;
        }
        C0221a c0221a = new C0221a(this, b0Var.i().l(), bVar, n.a(b2));
        String b3 = b0Var.b("Content-Type");
        long j2 = b0Var.i().j();
        b0.a q = b0Var.q();
        q.a(new h(b3, j2, n.a(c0221a)));
        return q.a();
    }

    private static r a(r rVar, r rVar2) {
        r.a aVar = new r.a();
        int b2 = rVar.b();
        for (int i2 = 0; i2 < b2; i2++) {
            String a2 = rVar.a(i2);
            String b3 = rVar.b(i2);
            if ((!"Warning".equalsIgnoreCase(a2) || !b3.startsWith("1")) && (a(a2) || !b(a2) || rVar2.a(a2) == null)) {
                i.g0.a.f18446a.a(aVar, a2, b3);
            }
        }
        int b4 = rVar2.b();
        for (int i3 = 0; i3 < b4; i3++) {
            String a3 = rVar2.a(i3);
            if (!a(a3) && b(a3)) {
                i.g0.a.f18446a.a(aVar, a3, rVar2.b(i3));
            }
        }
        return aVar.a();
    }

    static boolean a(String str) {
        return "Content-Length".equalsIgnoreCase(str) || "Content-Encoding".equalsIgnoreCase(str) || "Content-Type".equalsIgnoreCase(str);
    }
}

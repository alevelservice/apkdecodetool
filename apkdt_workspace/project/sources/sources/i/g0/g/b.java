package i.g0.g;

import i.b0;
import i.t;
import i.z;
import j.n;
import java.net.ProtocolException;

/* compiled from: CallServerInterceptor.java */
/* loaded from: classes2.dex */
public final class b implements t {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f18522a;

    /* compiled from: CallServerInterceptor.java */
    /* loaded from: classes2.dex */
    static final class a extends j.h {

        /* renamed from: f, reason: collision with root package name */
        long f18523f;

        a(j.t tVar) {
            super(tVar);
        }

        @Override // j.h, j.t
        public void a(j.c cVar, long j2) {
            super.a(cVar, j2);
            this.f18523f += j2;
        }
    }

    public b(boolean z) {
        this.f18522a = z;
    }

    @Override // i.t
    public b0 a(t.a aVar) {
        b0 a2;
        g gVar = (g) aVar;
        c g2 = gVar.g();
        i.g0.f.g h2 = gVar.h();
        i.g0.f.c cVar = (i.g0.f.c) gVar.e();
        z v = gVar.v();
        long currentTimeMillis = System.currentTimeMillis();
        gVar.f().d(gVar.d());
        g2.a(v);
        gVar.f().a(gVar.d(), v);
        b0.a aVar2 = null;
        if (f.b(v.e()) && v.a() != null) {
            if ("100-continue".equalsIgnoreCase(v.a("Expect"))) {
                g2.b();
                gVar.f().f(gVar.d());
                aVar2 = g2.a(true);
            }
            if (aVar2 == null) {
                gVar.f().c(gVar.d());
                a aVar3 = new a(g2.a(v, v.a().a()));
                j.d a3 = n.a(aVar3);
                v.a().a(a3);
                a3.close();
                gVar.f().a(gVar.d(), aVar3.f18523f);
            } else if (!cVar.c()) {
                h2.e();
            }
        }
        g2.a();
        if (aVar2 == null) {
            gVar.f().f(gVar.d());
            aVar2 = g2.a(false);
        }
        aVar2.a(v);
        aVar2.a(h2.c().b());
        aVar2.b(currentTimeMillis);
        aVar2.a(System.currentTimeMillis());
        b0 a4 = aVar2.a();
        int k2 = a4.k();
        if (k2 == 100) {
            b0.a a5 = g2.a(false);
            a5.a(v);
            a5.a(h2.c().b());
            a5.b(currentTimeMillis);
            a5.a(System.currentTimeMillis());
            a4 = a5.a();
            k2 = a4.k();
        }
        gVar.f().a(gVar.d(), a4);
        if (this.f18522a && k2 == 101) {
            b0.a q = a4.q();
            q.a(i.g0.c.f18450c);
            a2 = q.a();
        } else {
            b0.a q2 = a4.q();
            q2.a(g2.a(a4));
            a2 = q2.a();
        }
        if ("close".equalsIgnoreCase(a2.t().a("Connection")) || "close".equalsIgnoreCase(a2.b("Connection"))) {
            h2.e();
        }
        if ((k2 != 204 && k2 != 205) || a2.i().j() <= 0) {
            return a2;
        }
        throw new ProtocolException("HTTP " + k2 + " had non-zero Content-Length: " + a2.i().j());
    }
}

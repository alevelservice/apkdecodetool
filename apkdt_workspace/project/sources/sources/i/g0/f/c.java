package i.g0.f;

import i.a0;
import i.b0;
import i.d0;
import i.g0.i.g;
import i.i;
import i.j;
import i.k;
import i.p;
import i.q;
import i.s;
import i.t;
import i.w;
import i.x;
import i.z;
import io.reactivex.rxjava3.annotations.SchedulerSupport;
import j.n;
import j.u;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

/* compiled from: RealConnection.java */
/* loaded from: classes2.dex */
public final class c extends g.h implements i {

    /* renamed from: b, reason: collision with root package name */
    private final j f18486b;

    /* renamed from: c, reason: collision with root package name */
    private final d0 f18487c;

    /* renamed from: d, reason: collision with root package name */
    private Socket f18488d;

    /* renamed from: e, reason: collision with root package name */
    private Socket f18489e;

    /* renamed from: f, reason: collision with root package name */
    private q f18490f;

    /* renamed from: g, reason: collision with root package name */
    private x f18491g;

    /* renamed from: h, reason: collision with root package name */
    private i.g0.i.g f18492h;

    /* renamed from: i, reason: collision with root package name */
    private j.e f18493i;

    /* renamed from: j, reason: collision with root package name */
    private j.d f18494j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f18495k;

    /* renamed from: l, reason: collision with root package name */
    public int f18496l;
    public int m = 1;
    public final List<Reference<g>> n = new ArrayList();
    public long o = Long.MAX_VALUE;

    public c(j jVar, d0 d0Var) {
        this.f18486b = jVar;
        this.f18487c = d0Var;
    }

    private z f() {
        z.a aVar = new z.a();
        aVar.a(this.f18487c.a().k());
        aVar.a("CONNECT", (a0) null);
        aVar.b("Host", i.g0.c.a(this.f18487c.a().k(), true));
        aVar.b("Proxy-Connection", "Keep-Alive");
        aVar.b("User-Agent", i.g0.d.a());
        z a2 = aVar.a();
        b0.a aVar2 = new b0.a();
        aVar2.a(a2);
        aVar2.a(x.HTTP_1_1);
        aVar2.a(407);
        aVar2.a("Preemptive Authenticate");
        aVar2.a(i.g0.c.f18450c);
        aVar2.b(-1L);
        aVar2.a(-1L);
        aVar2.b("Proxy-Authenticate", "OkHttp-Preemptive");
        z a3 = this.f18487c.a().g().a(this.f18487c, aVar2.a());
        return a3 != null ? a3 : a2;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00f4 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0143 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0136  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r17, int r18, int r19, int r20, boolean r21, i.e r22, i.p r23) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: i.g0.f.c.a(int, int, int, int, boolean, i.e, i.p):void");
    }

    public q b() {
        return this.f18490f;
    }

    public boolean c() {
        return this.f18492h != null;
    }

    public d0 d() {
        return this.f18487c;
    }

    public Socket e() {
        return this.f18489e;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Connection{");
        sb.append(this.f18487c.a().k().g());
        sb.append(":");
        sb.append(this.f18487c.a().k().j());
        sb.append(", proxy=");
        sb.append(this.f18487c.b());
        sb.append(" hostAddress=");
        sb.append(this.f18487c.d());
        sb.append(" cipherSuite=");
        q qVar = this.f18490f;
        sb.append(qVar != null ? qVar.a() : SchedulerSupport.NONE);
        sb.append(" protocol=");
        sb.append(this.f18491g);
        sb.append('}');
        return sb.toString();
    }

    private void a(int i2, int i3, int i4, i.e eVar, p pVar) {
        z f2 = f();
        s g2 = f2.g();
        for (int i5 = 0; i5 < 21; i5++) {
            a(i2, i3, eVar, pVar);
            f2 = a(i3, i4, f2, g2);
            if (f2 == null) {
                return;
            }
            i.g0.c.a(this.f18488d);
            this.f18488d = null;
            this.f18494j = null;
            this.f18493i = null;
            pVar.a(eVar, this.f18487c.d(), this.f18487c.b(), null);
        }
    }

    private void a(int i2, int i3, i.e eVar, p pVar) {
        Socket createSocket;
        Proxy b2 = this.f18487c.b();
        i.a a2 = this.f18487c.a();
        if (b2.type() != Proxy.Type.DIRECT && b2.type() != Proxy.Type.HTTP) {
            createSocket = new Socket(b2);
        } else {
            createSocket = a2.i().createSocket();
        }
        this.f18488d = createSocket;
        pVar.a(eVar, this.f18487c.d(), b2);
        this.f18488d.setSoTimeout(i3);
        try {
            okhttp3.internal.platform.e.c().a(this.f18488d, this.f18487c.d(), i2);
            try {
                this.f18493i = n.a(n.b(this.f18488d));
                this.f18494j = n.a(n.a(this.f18488d));
            } catch (NullPointerException e2) {
                if ("throw with null exception".equals(e2.getMessage())) {
                    throw new IOException(e2);
                }
            }
        } catch (ConnectException e3) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f18487c.d());
            connectException.initCause(e3);
            throw connectException;
        }
    }

    private void a(b bVar, int i2, i.e eVar, p pVar) {
        if (this.f18487c.a().j() == null) {
            if (this.f18487c.a().e().contains(x.H2_PRIOR_KNOWLEDGE)) {
                this.f18489e = this.f18488d;
                this.f18491g = x.H2_PRIOR_KNOWLEDGE;
                a(i2);
                return;
            } else {
                this.f18489e = this.f18488d;
                this.f18491g = x.HTTP_1_1;
                return;
            }
        }
        pVar.g(eVar);
        a(bVar);
        pVar.a(eVar, this.f18490f);
        if (this.f18491g == x.HTTP_2) {
            a(i2);
        }
    }

    private void a(int i2) {
        this.f18489e.setSoTimeout(0);
        g.C0223g c0223g = new g.C0223g(true);
        c0223g.a(this.f18489e, this.f18487c.a().k().g(), this.f18493i, this.f18494j);
        c0223g.a(this);
        c0223g.a(i2);
        this.f18492h = c0223g.a();
        this.f18492h.k();
    }

    private void a(b bVar) {
        SSLSocket sSLSocket;
        x xVar;
        i.a a2 = this.f18487c.a();
        try {
            try {
                sSLSocket = (SSLSocket) a2.j().createSocket(this.f18488d, a2.k().g(), a2.k().j(), true);
            } catch (AssertionError e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
            sSLSocket = null;
        }
        try {
            k a3 = bVar.a(sSLSocket);
            if (a3.c()) {
                okhttp3.internal.platform.e.c().a(sSLSocket, a2.k().g(), a2.e());
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            q a4 = q.a(session);
            if (!a2.d().verify(a2.k().g(), session)) {
                List<Certificate> b2 = a4.b();
                if (!b2.isEmpty()) {
                    X509Certificate x509Certificate = (X509Certificate) b2.get(0);
                    throw new SSLPeerUnverifiedException("Hostname " + a2.k().g() + " not verified:\n    certificate: " + i.g.a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + i.g0.k.d.a(x509Certificate));
                }
                throw new SSLPeerUnverifiedException("Hostname " + a2.k().g() + " not verified (no certificates)");
            }
            a2.a().a(a2.k().g(), a4.b());
            String b3 = a3.c() ? okhttp3.internal.platform.e.c().b(sSLSocket) : null;
            this.f18489e = sSLSocket;
            this.f18493i = n.a(n.b(this.f18489e));
            this.f18494j = n.a(n.a(this.f18489e));
            this.f18490f = a4;
            if (b3 != null) {
                xVar = x.get(b3);
            } else {
                xVar = x.HTTP_1_1;
            }
            this.f18491g = xVar;
            if (sSLSocket != null) {
                okhttp3.internal.platform.e.c().a(sSLSocket);
            }
        } catch (AssertionError e3) {
            e = e3;
            if (!i.g0.c.a(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th2) {
            th = th2;
            if (sSLSocket != null) {
                okhttp3.internal.platform.e.c().a(sSLSocket);
            }
            i.g0.c.a((Socket) sSLSocket);
            throw th;
        }
    }

    private z a(int i2, int i3, z zVar, s sVar) {
        String str = "CONNECT " + i.g0.c.a(sVar, true) + " HTTP/1.1";
        while (true) {
            i.g0.h.a aVar = new i.g0.h.a(null, null, this.f18493i, this.f18494j);
            this.f18493i.timeout().a(i2, TimeUnit.MILLISECONDS);
            this.f18494j.timeout().a(i3, TimeUnit.MILLISECONDS);
            aVar.a(zVar.c(), str);
            aVar.a();
            b0.a a2 = aVar.a(false);
            a2.a(zVar);
            b0 a3 = a2.a();
            long a4 = i.g0.g.e.a(a3);
            if (a4 == -1) {
                a4 = 0;
            }
            u b2 = aVar.b(a4);
            i.g0.c.b(b2, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
            b2.close();
            int k2 = a3.k();
            if (k2 == 200) {
                if (this.f18493i.a().d() && this.f18494j.a().d()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
            if (k2 == 407) {
                z a5 = this.f18487c.a().g().a(this.f18487c, a3);
                if (a5 != null) {
                    if ("close".equalsIgnoreCase(a3.b("Connection"))) {
                        return a5;
                    }
                    zVar = a5;
                } else {
                    throw new IOException("Failed to authenticate with proxy");
                }
            } else {
                throw new IOException("Unexpected response code for CONNECT: " + a3.k());
            }
        }
    }

    public boolean a(i.a aVar, @Nullable d0 d0Var) {
        if (this.n.size() >= this.m || this.f18495k || !i.g0.a.f18446a.a(this.f18487c.a(), aVar)) {
            return false;
        }
        if (aVar.k().g().equals(d().a().k().g())) {
            return true;
        }
        if (this.f18492h == null || d0Var == null || d0Var.b().type() != Proxy.Type.DIRECT || this.f18487c.b().type() != Proxy.Type.DIRECT || !this.f18487c.d().equals(d0Var.d()) || d0Var.a().d() != i.g0.k.d.f18717a || !a(aVar.k())) {
            return false;
        }
        try {
            aVar.a().a(aVar.k().g(), b().b());
            return true;
        } catch (SSLPeerUnverifiedException unused) {
            return false;
        }
    }

    public boolean a(s sVar) {
        if (sVar.j() != this.f18487c.a().k().j()) {
            return false;
        }
        if (sVar.g().equals(this.f18487c.a().k().g())) {
            return true;
        }
        return this.f18490f != null && i.g0.k.d.f18717a.a(sVar.g(), (X509Certificate) this.f18490f.b().get(0));
    }

    public i.g0.g.c a(w wVar, t.a aVar, g gVar) {
        i.g0.i.g gVar2 = this.f18492h;
        if (gVar2 != null) {
            return new i.g0.i.f(wVar, aVar, gVar, gVar2);
        }
        this.f18489e.setSoTimeout(aVar.a());
        this.f18493i.timeout().a(aVar.a(), TimeUnit.MILLISECONDS);
        this.f18494j.timeout().a(aVar.b(), TimeUnit.MILLISECONDS);
        return new i.g0.h.a(wVar, gVar, this.f18493i, this.f18494j);
    }

    public void a() {
        i.g0.c.a(this.f18488d);
    }

    public boolean a(boolean z) {
        if (this.f18489e.isClosed() || this.f18489e.isInputShutdown() || this.f18489e.isOutputShutdown()) {
            return false;
        }
        if (this.f18492h != null) {
            return !r0.i();
        }
        if (z) {
            try {
                int soTimeout = this.f18489e.getSoTimeout();
                try {
                    this.f18489e.setSoTimeout(1);
                    return !this.f18493i.d();
                } finally {
                    this.f18489e.setSoTimeout(soTimeout);
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    @Override // i.g0.i.g.h
    public void a(i.g0.i.i iVar) {
        iVar.a(i.g0.i.b.REFUSED_STREAM);
    }

    @Override // i.g0.i.g.h
    public void a(i.g0.i.g gVar) {
        synchronized (this.f18486b) {
            this.m = gVar.j();
        }
    }
}

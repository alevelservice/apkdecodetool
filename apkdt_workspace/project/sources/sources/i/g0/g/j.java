package i.g0.g;

import i.a0;
import i.b0;
import i.c0;
import i.d0;
import i.p;
import i.s;
import i.t;
import i.w;
import i.z;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: RetryAndFollowUpInterceptor.java */
/* loaded from: classes2.dex */
public final class j implements t {

    /* renamed from: a, reason: collision with root package name */
    private final w f18542a;

    /* renamed from: b, reason: collision with root package name */
    private volatile i.g0.f.g f18543b;

    /* renamed from: c, reason: collision with root package name */
    private Object f18544c;

    /* renamed from: d, reason: collision with root package name */
    private volatile boolean f18545d;

    public j(w wVar, boolean z) {
        this.f18542a = wVar;
    }

    public void a() {
        this.f18545d = true;
        i.g0.f.g gVar = this.f18543b;
        if (gVar != null) {
            gVar.a();
        }
    }

    public boolean b() {
        return this.f18545d;
    }

    public void a(Object obj) {
        this.f18544c = obj;
    }

    @Override // i.t
    public b0 a(t.a aVar) {
        b0 a2;
        z a3;
        z v = aVar.v();
        g gVar = (g) aVar;
        i.e d2 = gVar.d();
        p f2 = gVar.f();
        i.g0.f.g gVar2 = new i.g0.f.g(this.f18542a.e(), a(v.g()), d2, f2, this.f18544c);
        this.f18543b = gVar2;
        b0 b0Var = null;
        int i2 = 0;
        while (!this.f18545d) {
            try {
                try {
                    a2 = gVar.a(v, gVar2, null, null);
                    if (b0Var != null) {
                        b0.a q = a2.q();
                        b0.a q2 = b0Var.q();
                        q2.a((c0) null);
                        q.c(q2.a());
                        a2 = q.a();
                    }
                    try {
                        a3 = a(a2, gVar2.g());
                    } catch (IOException e2) {
                        gVar2.f();
                        throw e2;
                    }
                } catch (Throwable th) {
                    gVar2.a((IOException) null);
                    gVar2.f();
                    throw th;
                }
            } catch (i.g0.f.e e3) {
                if (!a(e3.getLastConnectException(), gVar2, false, v)) {
                    throw e3.getFirstConnectException();
                }
            } catch (IOException e4) {
                if (!a(e4, gVar2, !(e4 instanceof i.g0.i.a), v)) {
                    throw e4;
                }
            }
            if (a3 == null) {
                gVar2.f();
                return a2;
            }
            i.g0.c.a(a2.i());
            int i3 = i2 + 1;
            if (i3 <= 20) {
                a3.a();
                if (!a(a2, a3.g())) {
                    gVar2.f();
                    gVar2 = new i.g0.f.g(this.f18542a.e(), a(a3.g()), d2, f2, this.f18544c);
                    this.f18543b = gVar2;
                } else if (gVar2.b() != null) {
                    throw new IllegalStateException("Closing the body of " + a2 + " didn't close its backing stream. Bad interceptor?");
                }
                b0Var = a2;
                v = a3;
                i2 = i3;
            } else {
                gVar2.f();
                throw new ProtocolException("Too many follow-up requests: " + i3);
            }
        }
        gVar2.f();
        throw new IOException("Canceled");
    }

    private i.a a(s sVar) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        i.g gVar;
        if (sVar.h()) {
            SSLSocketFactory M = this.f18542a.M();
            hostnameVerifier = this.f18542a.z();
            sSLSocketFactory = M;
            gVar = this.f18542a.c();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            gVar = null;
        }
        return new i.a(sVar.g(), sVar.j(), this.f18542a.n(), this.f18542a.L(), sSLSocketFactory, hostnameVerifier, gVar, this.f18542a.H(), this.f18542a.G(), this.f18542a.F(), this.f18542a.f(), this.f18542a.I());
    }

    private boolean a(IOException iOException, i.g0.f.g gVar, boolean z, z zVar) {
        gVar.a(iOException);
        if (!this.f18542a.K()) {
            return false;
        }
        if (z) {
            zVar.a();
        }
        return a(iOException, z) && gVar.d();
    }

    private boolean a(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private z a(b0 b0Var, d0 d0Var) {
        String b2;
        s b3;
        if (b0Var != null) {
            int k2 = b0Var.k();
            String e2 = b0Var.t().e();
            if (k2 == 307 || k2 == 308) {
                if (!e2.equals("GET") && !e2.equals("HEAD")) {
                    return null;
                }
            } else {
                if (k2 == 401) {
                    return this.f18542a.a().a(d0Var, b0Var);
                }
                if (k2 == 503) {
                    if ((b0Var.r() == null || b0Var.r().k() != 503) && a(b0Var, Integer.MAX_VALUE) == 0) {
                        return b0Var.t();
                    }
                    return null;
                }
                if (k2 == 407) {
                    if (d0Var.b().type() == Proxy.Type.HTTP) {
                        return this.f18542a.H().a(d0Var, b0Var);
                    }
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                if (k2 == 408) {
                    if (!this.f18542a.K()) {
                        return null;
                    }
                    b0Var.t().a();
                    if ((b0Var.r() == null || b0Var.r().k() != 408) && a(b0Var, 0) <= 0) {
                        return b0Var.t();
                    }
                    return null;
                }
                switch (k2) {
                    case 300:
                    case 301:
                    case 302:
                    case 303:
                        break;
                    default:
                        return null;
                }
            }
            if (!this.f18542a.x() || (b2 = b0Var.b("Location")) == null || (b3 = b0Var.t().g().b(b2)) == null) {
                return null;
            }
            if (!b3.n().equals(b0Var.t().g().n()) && !this.f18542a.y()) {
                return null;
            }
            z.a f2 = b0Var.t().f();
            if (f.b(e2)) {
                boolean d2 = f.d(e2);
                if (f.c(e2)) {
                    f2.a("GET", (a0) null);
                } else {
                    f2.a(e2, d2 ? b0Var.t().a() : null);
                }
                if (!d2) {
                    f2.a("Transfer-Encoding");
                    f2.a("Content-Length");
                    f2.a("Content-Type");
                }
            }
            if (!a(b0Var, b3)) {
                f2.a("Authorization");
            }
            f2.a(b3);
            return f2.a();
        }
        throw new IllegalStateException();
    }

    private int a(b0 b0Var, int i2) {
        String b2 = b0Var.b("Retry-After");
        if (b2 == null) {
            return i2;
        }
        if (b2.matches("\\d+")) {
            return Integer.valueOf(b2).intValue();
        }
        return Integer.MAX_VALUE;
    }

    private boolean a(b0 b0Var, s sVar) {
        s g2 = b0Var.t().g();
        return g2.g().equals(sVar.g()) && g2.j() == sVar.j() && g2.n().equals(sVar.n());
    }
}

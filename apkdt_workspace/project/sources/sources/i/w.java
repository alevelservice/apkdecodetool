package i;

import i.b0;
import i.e;
import i.p;
import i.r;
import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* compiled from: OkHttpClient.java */
/* loaded from: classes2.dex */
public class w implements Cloneable, e.a, f0 {
    static final List<x> G = i.g0.c.a(x.HTTP_2, x.HTTP_1_1);
    static final List<k> H = i.g0.c.a(k.f18740g, k.f18742i);
    final boolean A;
    final int B;
    final int C;
    final int D;
    final int E;
    final int F;

    /* renamed from: e, reason: collision with root package name */
    final n f18816e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    final Proxy f18817f;

    /* renamed from: g, reason: collision with root package name */
    final List<x> f18818g;

    /* renamed from: h, reason: collision with root package name */
    final List<k> f18819h;

    /* renamed from: i, reason: collision with root package name */
    final List<t> f18820i;

    /* renamed from: j, reason: collision with root package name */
    final List<t> f18821j;

    /* renamed from: k, reason: collision with root package name */
    final p.c f18822k;

    /* renamed from: l, reason: collision with root package name */
    final ProxySelector f18823l;
    final m m;

    @Nullable
    final c n;

    @Nullable
    final i.g0.e.d o;
    final SocketFactory p;
    final SSLSocketFactory q;
    final i.g0.k.c r;
    final HostnameVerifier s;
    final g t;
    final i.b u;
    final i.b v;
    final j w;
    final o x;
    final boolean y;
    final boolean z;

    /* compiled from: OkHttpClient.java */
    /* loaded from: classes2.dex */
    class a extends i.g0.a {
        a() {
        }

        @Override // i.g0.a
        public void a(r.a aVar, String str) {
            aVar.a(str);
        }

        @Override // i.g0.a
        public void b(j jVar, i.g0.f.c cVar) {
            jVar.b(cVar);
        }

        @Override // i.g0.a
        public void a(r.a aVar, String str, String str2) {
            aVar.b(str, str2);
        }

        @Override // i.g0.a
        public boolean a(j jVar, i.g0.f.c cVar) {
            return jVar.a(cVar);
        }

        @Override // i.g0.a
        public i.g0.f.c a(j jVar, i.a aVar, i.g0.f.g gVar, d0 d0Var) {
            return jVar.a(aVar, gVar, d0Var);
        }

        @Override // i.g0.a
        public boolean a(i.a aVar, i.a aVar2) {
            return aVar.a(aVar2);
        }

        @Override // i.g0.a
        public Socket a(j jVar, i.a aVar, i.g0.f.g gVar) {
            return jVar.a(aVar, gVar);
        }

        @Override // i.g0.a
        public i.g0.f.d a(j jVar) {
            return jVar.f18735e;
        }

        @Override // i.g0.a
        public int a(b0.a aVar) {
            return aVar.f18400c;
        }

        @Override // i.g0.a
        public void a(k kVar, SSLSocket sSLSocket, boolean z) {
            kVar.a(sSLSocket, z);
        }

        @Override // i.g0.a
        @Nullable
        public IOException a(e eVar, @Nullable IOException iOException) {
            return ((y) eVar).a(iOException);
        }
    }

    /* compiled from: OkHttpClient.java */
    /* loaded from: classes2.dex */
    public static final class b {
        int A;
        int B;

        /* renamed from: a, reason: collision with root package name */
        n f18824a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        Proxy f18825b;

        /* renamed from: c, reason: collision with root package name */
        List<x> f18826c;

        /* renamed from: d, reason: collision with root package name */
        List<k> f18827d;

        /* renamed from: e, reason: collision with root package name */
        final List<t> f18828e;

        /* renamed from: f, reason: collision with root package name */
        final List<t> f18829f;

        /* renamed from: g, reason: collision with root package name */
        p.c f18830g;

        /* renamed from: h, reason: collision with root package name */
        ProxySelector f18831h;

        /* renamed from: i, reason: collision with root package name */
        m f18832i;

        /* renamed from: j, reason: collision with root package name */
        @Nullable
        c f18833j;

        /* renamed from: k, reason: collision with root package name */
        @Nullable
        i.g0.e.d f18834k;

        /* renamed from: l, reason: collision with root package name */
        SocketFactory f18835l;

        @Nullable
        SSLSocketFactory m;

        @Nullable
        i.g0.k.c n;
        HostnameVerifier o;
        g p;
        i.b q;
        i.b r;
        j s;
        o t;
        boolean u;
        boolean v;
        boolean w;
        int x;
        int y;
        int z;

        public b() {
            this.f18828e = new ArrayList();
            this.f18829f = new ArrayList();
            this.f18824a = new n();
            this.f18826c = w.G;
            this.f18827d = w.H;
            this.f18830g = p.a(p.f18772a);
            this.f18831h = ProxySelector.getDefault();
            if (this.f18831h == null) {
                this.f18831h = new i.g0.j.a();
            }
            this.f18832i = m.f18763a;
            this.f18835l = SocketFactory.getDefault();
            this.o = i.g0.k.d.f18717a;
            this.p = g.f18438c;
            i.b bVar = i.b.f18389a;
            this.q = bVar;
            this.r = bVar;
            this.s = new j();
            this.t = o.f18771a;
            this.u = true;
            this.v = true;
            this.w = true;
            this.x = 0;
            this.y = e.b.b.a.a.a.c.DEBUG_INT;
            this.z = e.b.b.a.a.a.c.DEBUG_INT;
            this.A = e.b.b.a.a.a.c.DEBUG_INT;
            this.B = 0;
        }

        public b a(long j2, TimeUnit timeUnit) {
            this.x = i.g0.c.a("timeout", j2, timeUnit);
            return this;
        }

        public b b(long j2, TimeUnit timeUnit) {
            this.y = i.g0.c.a("timeout", j2, timeUnit);
            return this;
        }

        public b c(long j2, TimeUnit timeUnit) {
            this.z = i.g0.c.a("timeout", j2, timeUnit);
            return this;
        }

        public b d(long j2, TimeUnit timeUnit) {
            this.A = i.g0.c.a("timeout", j2, timeUnit);
            return this;
        }

        public b a(SSLSocketFactory sSLSocketFactory, X509TrustManager x509TrustManager) {
            if (sSLSocketFactory == null) {
                throw new NullPointerException("sslSocketFactory == null");
            }
            if (x509TrustManager != null) {
                this.m = sSLSocketFactory;
                this.n = i.g0.k.c.a(x509TrustManager);
                return this;
            }
            throw new NullPointerException("trustManager == null");
        }

        public b a(HostnameVerifier hostnameVerifier) {
            if (hostnameVerifier != null) {
                this.o = hostnameVerifier;
                return this;
            }
            throw new NullPointerException("hostnameVerifier == null");
        }

        public b a(g gVar) {
            if (gVar != null) {
                this.p = gVar;
                return this;
            }
            throw new NullPointerException("certificatePinner == null");
        }

        public b a(boolean z) {
            this.w = z;
            return this;
        }

        public b a(n nVar) {
            if (nVar != null) {
                this.f18824a = nVar;
                return this;
            }
            throw new IllegalArgumentException("dispatcher == null");
        }

        public b a(List<k> list) {
            this.f18827d = i.g0.c.a(list);
            return this;
        }

        public b a(t tVar) {
            if (tVar != null) {
                this.f18828e.add(tVar);
                return this;
            }
            throw new IllegalArgumentException("interceptor == null");
        }

        public w a() {
            return new w(this);
        }

        b(w wVar) {
            this.f18828e = new ArrayList();
            this.f18829f = new ArrayList();
            this.f18824a = wVar.f18816e;
            this.f18825b = wVar.f18817f;
            this.f18826c = wVar.f18818g;
            this.f18827d = wVar.f18819h;
            this.f18828e.addAll(wVar.f18820i);
            this.f18829f.addAll(wVar.f18821j);
            this.f18830g = wVar.f18822k;
            this.f18831h = wVar.f18823l;
            this.f18832i = wVar.m;
            this.f18834k = wVar.o;
            this.f18833j = wVar.n;
            this.f18835l = wVar.p;
            this.m = wVar.q;
            this.n = wVar.r;
            this.o = wVar.s;
            this.p = wVar.t;
            this.q = wVar.u;
            this.r = wVar.v;
            this.s = wVar.w;
            this.t = wVar.x;
            this.u = wVar.y;
            this.v = wVar.z;
            this.w = wVar.A;
            this.x = wVar.B;
            this.y = wVar.C;
            this.z = wVar.D;
            this.A = wVar.E;
            this.B = wVar.F;
        }
    }

    static {
        i.g0.a.f18446a = new a();
    }

    public w() {
        this(new b());
    }

    private static SSLSocketFactory a(X509TrustManager x509TrustManager) {
        try {
            SSLContext a2 = okhttp3.internal.platform.e.c().a();
            a2.init(null, new TrustManager[]{x509TrustManager}, null);
            return a2.getSocketFactory();
        } catch (GeneralSecurityException e2) {
            throw i.g0.c.a("No System TLS", (Exception) e2);
        }
    }

    public List<t> A() {
        return this.f18820i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i.g0.e.d B() {
        c cVar = this.n;
        return cVar != null ? cVar.f18410e : this.o;
    }

    public List<t> C() {
        return this.f18821j;
    }

    public b D() {
        return new b(this);
    }

    public int E() {
        return this.F;
    }

    public List<x> F() {
        return this.f18818g;
    }

    @Nullable
    public Proxy G() {
        return this.f18817f;
    }

    public i.b H() {
        return this.u;
    }

    public ProxySelector I() {
        return this.f18823l;
    }

    public int J() {
        return this.D;
    }

    public boolean K() {
        return this.A;
    }

    public SocketFactory L() {
        return this.p;
    }

    public SSLSocketFactory M() {
        return this.q;
    }

    public int N() {
        return this.E;
    }

    public int b() {
        return this.B;
    }

    public g c() {
        return this.t;
    }

    public int d() {
        return this.C;
    }

    public j e() {
        return this.w;
    }

    public List<k> f() {
        return this.f18819h;
    }

    public m g() {
        return this.m;
    }

    public n h() {
        return this.f18816e;
    }

    public o n() {
        return this.x;
    }

    public p.c w() {
        return this.f18822k;
    }

    public boolean x() {
        return this.z;
    }

    public boolean y() {
        return this.y;
    }

    public HostnameVerifier z() {
        return this.s;
    }

    w(b bVar) {
        boolean z;
        this.f18816e = bVar.f18824a;
        this.f18817f = bVar.f18825b;
        this.f18818g = bVar.f18826c;
        this.f18819h = bVar.f18827d;
        this.f18820i = i.g0.c.a(bVar.f18828e);
        this.f18821j = i.g0.c.a(bVar.f18829f);
        this.f18822k = bVar.f18830g;
        this.f18823l = bVar.f18831h;
        this.m = bVar.f18832i;
        this.n = bVar.f18833j;
        this.o = bVar.f18834k;
        this.p = bVar.f18835l;
        Iterator<k> it = this.f18819h.iterator();
        loop0: while (true) {
            while (it.hasNext()) {
                z = z || it.next().b();
            }
        }
        if (bVar.m == null && z) {
            X509TrustManager a2 = i.g0.c.a();
            this.q = a(a2);
            this.r = i.g0.k.c.a(a2);
        } else {
            this.q = bVar.m;
            this.r = bVar.n;
        }
        if (this.q != null) {
            okhttp3.internal.platform.e.c().a(this.q);
        }
        this.s = bVar.o;
        this.t = bVar.p.a(this.r);
        this.u = bVar.q;
        this.v = bVar.r;
        this.w = bVar.s;
        this.x = bVar.t;
        this.y = bVar.u;
        this.z = bVar.v;
        this.A = bVar.w;
        this.B = bVar.x;
        this.C = bVar.y;
        this.D = bVar.z;
        this.E = bVar.A;
        this.F = bVar.B;
        if (!this.f18820i.contains(null)) {
            if (this.f18821j.contains(null)) {
                throw new IllegalStateException("Null network interceptor: " + this.f18821j);
            }
            return;
        }
        throw new IllegalStateException("Null interceptor: " + this.f18820i);
    }

    public i.b a() {
        return this.v;
    }

    public e a(z zVar) {
        return y.a(this, zVar, false);
    }
}

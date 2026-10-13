package i;

import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;

/* compiled from: ConnectionSpec.java */
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: e, reason: collision with root package name */
    private static final h[] f18738e = {h.q, h.r, h.s, h.t, h.u, h.f18727k, h.m, h.f18728l, h.n, h.p, h.o};

    /* renamed from: f, reason: collision with root package name */
    private static final h[] f18739f = {h.q, h.r, h.s, h.t, h.u, h.f18727k, h.m, h.f18728l, h.n, h.p, h.o, h.f18725i, h.f18726j, h.f18723g, h.f18724h, h.f18721e, h.f18722f, h.f18720d};

    /* renamed from: g, reason: collision with root package name */
    public static final k f18740g;

    /* renamed from: h, reason: collision with root package name */
    public static final k f18741h;

    /* renamed from: i, reason: collision with root package name */
    public static final k f18742i;

    /* renamed from: a, reason: collision with root package name */
    final boolean f18743a;

    /* renamed from: b, reason: collision with root package name */
    final boolean f18744b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    final String[] f18745c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    final String[] f18746d;

    static {
        a aVar = new a(true);
        aVar.a(f18738e);
        aVar.a(e0.TLS_1_3, e0.TLS_1_2);
        aVar.a(true);
        aVar.a();
        a aVar2 = new a(true);
        aVar2.a(f18739f);
        aVar2.a(e0.TLS_1_3, e0.TLS_1_2, e0.TLS_1_1, e0.TLS_1_0);
        aVar2.a(true);
        f18740g = aVar2.a();
        a aVar3 = new a(true);
        aVar3.a(f18739f);
        aVar3.a(e0.TLS_1_0);
        aVar3.a(true);
        f18741h = aVar3.a();
        f18742i = new a(false).a();
    }

    k(a aVar) {
        this.f18743a = aVar.f18747a;
        this.f18745c = aVar.f18748b;
        this.f18746d = aVar.f18749c;
        this.f18744b = aVar.f18750d;
    }

    @Nullable
    public List<h> a() {
        String[] strArr = this.f18745c;
        if (strArr != null) {
            return h.a(strArr);
        }
        return null;
    }

    public boolean b() {
        return this.f18743a;
    }

    public boolean c() {
        return this.f18744b;
    }

    @Nullable
    public List<e0> d() {
        String[] strArr = this.f18746d;
        if (strArr != null) {
            return e0.forJavaNames(strArr);
        }
        return null;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        k kVar = (k) obj;
        boolean z = this.f18743a;
        if (z != kVar.f18743a) {
            return false;
        }
        return !z || (Arrays.equals(this.f18745c, kVar.f18745c) && Arrays.equals(this.f18746d, kVar.f18746d) && this.f18744b == kVar.f18744b);
    }

    public int hashCode() {
        if (this.f18743a) {
            return ((((527 + Arrays.hashCode(this.f18745c)) * 31) + Arrays.hashCode(this.f18746d)) * 31) + (!this.f18744b ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        if (!this.f18743a) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + (this.f18745c != null ? a().toString() : "[all enabled]") + ", tlsVersions=" + (this.f18746d != null ? d().toString() : "[all enabled]") + ", supportsTlsExtensions=" + this.f18744b + ")";
    }

    /* compiled from: ConnectionSpec.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        boolean f18747a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        String[] f18748b;

        /* renamed from: c, reason: collision with root package name */
        @Nullable
        String[] f18749c;

        /* renamed from: d, reason: collision with root package name */
        boolean f18750d;

        a(boolean z) {
            this.f18747a = z;
        }

        public a a(h... hVarArr) {
            if (this.f18747a) {
                String[] strArr = new String[hVarArr.length];
                for (int i2 = 0; i2 < hVarArr.length; i2++) {
                    strArr[i2] = hVarArr[i2].f18729a;
                }
                a(strArr);
                return this;
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        public a b(String... strArr) {
            if (this.f18747a) {
                if (strArr.length != 0) {
                    this.f18749c = (String[]) strArr.clone();
                    return this;
                }
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        public a(k kVar) {
            this.f18747a = kVar.f18743a;
            this.f18748b = kVar.f18745c;
            this.f18749c = kVar.f18746d;
            this.f18750d = kVar.f18744b;
        }

        public a a(String... strArr) {
            if (this.f18747a) {
                if (strArr.length != 0) {
                    this.f18748b = (String[]) strArr.clone();
                    return this;
                }
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        public a a(e0... e0VarArr) {
            if (this.f18747a) {
                String[] strArr = new String[e0VarArr.length];
                for (int i2 = 0; i2 < e0VarArr.length; i2++) {
                    strArr[i2] = e0VarArr[i2].javaName;
                }
                b(strArr);
                return this;
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        public a a(boolean z) {
            if (this.f18747a) {
                this.f18750d = z;
                return this;
            }
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }

        public k a() {
            return new k(this);
        }
    }

    private k b(SSLSocket sSLSocket, boolean z) {
        String[] enabledCipherSuites;
        String[] enabledProtocols;
        if (this.f18745c != null) {
            enabledCipherSuites = i.g0.c.a(h.f18718b, sSLSocket.getEnabledCipherSuites(), this.f18745c);
        } else {
            enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        }
        if (this.f18746d != null) {
            enabledProtocols = i.g0.c.a(i.g0.c.o, sSLSocket.getEnabledProtocols(), this.f18746d);
        } else {
            enabledProtocols = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int a2 = i.g0.c.a(h.f18718b, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z && a2 != -1) {
            enabledCipherSuites = i.g0.c.a(enabledCipherSuites, supportedCipherSuites[a2]);
        }
        a aVar = new a(this);
        aVar.a(enabledCipherSuites);
        aVar.b(enabledProtocols);
        return aVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(SSLSocket sSLSocket, boolean z) {
        k b2 = b(sSLSocket, z);
        String[] strArr = b2.f18746d;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = b2.f18745c;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    public boolean a(SSLSocket sSLSocket) {
        if (!this.f18743a) {
            return false;
        }
        String[] strArr = this.f18746d;
        if (strArr != null && !i.g0.c.b(i.g0.c.o, strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.f18745c;
        return strArr2 == null || i.g0.c.b(h.f18718b, strArr2, sSLSocket.getEnabledCipherSuites());
    }
}

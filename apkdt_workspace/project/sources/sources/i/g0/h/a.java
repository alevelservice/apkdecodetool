package i.g0.h;

import i.b0;
import i.c0;
import i.g0.g.h;
import i.g0.g.i;
import i.g0.g.k;
import i.r;
import i.s;
import i.w;
import i.z;
import j.j;
import j.n;
import j.t;
import j.u;
import j.v;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

/* compiled from: Http1Codec.java */
/* loaded from: classes2.dex */
public final class a implements i.g0.g.c {

    /* renamed from: a, reason: collision with root package name */
    final w f18549a;

    /* renamed from: b, reason: collision with root package name */
    final i.g0.f.g f18550b;

    /* renamed from: c, reason: collision with root package name */
    final j.e f18551c;

    /* renamed from: d, reason: collision with root package name */
    final j.d f18552d;

    /* renamed from: e, reason: collision with root package name */
    int f18553e = 0;

    /* renamed from: f, reason: collision with root package name */
    private long f18554f = 262144;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http1Codec.java */
    /* loaded from: classes2.dex */
    public abstract class b implements u {

        /* renamed from: e, reason: collision with root package name */
        protected final j f18555e;

        /* renamed from: f, reason: collision with root package name */
        protected boolean f18556f;

        /* renamed from: g, reason: collision with root package name */
        protected long f18557g;

        private b() {
            this.f18555e = new j(a.this.f18551c.timeout());
            this.f18557g = 0L;
        }

        protected final void a(boolean z, IOException iOException) {
            a aVar = a.this;
            int i2 = aVar.f18553e;
            if (i2 == 6) {
                return;
            }
            if (i2 == 5) {
                aVar.a(this.f18555e);
                a aVar2 = a.this;
                aVar2.f18553e = 6;
                i.g0.f.g gVar = aVar2.f18550b;
                if (gVar != null) {
                    gVar.a(!z, aVar2, this.f18557g, iOException);
                    return;
                }
                return;
            }
            throw new IllegalStateException("state: " + a.this.f18553e);
        }

        @Override // j.u
        public long b(j.c cVar, long j2) {
            try {
                long b2 = a.this.f18551c.b(cVar, j2);
                if (b2 > 0) {
                    this.f18557g += b2;
                }
                return b2;
            } catch (IOException e2) {
                a(false, e2);
                throw e2;
            }
        }

        @Override // j.u
        public v timeout() {
            return this.f18555e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http1Codec.java */
    /* loaded from: classes2.dex */
    public final class c implements t {

        /* renamed from: e, reason: collision with root package name */
        private final j f18559e;

        /* renamed from: f, reason: collision with root package name */
        private boolean f18560f;

        c() {
            this.f18559e = new j(a.this.f18552d.timeout());
        }

        @Override // j.t
        public void a(j.c cVar, long j2) {
            if (this.f18560f) {
                throw new IllegalStateException("closed");
            }
            if (j2 == 0) {
                return;
            }
            a.this.f18552d.a(j2);
            a.this.f18552d.a("\r\n");
            a.this.f18552d.a(cVar, j2);
            a.this.f18552d.a("\r\n");
        }

        @Override // j.t, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            if (this.f18560f) {
                return;
            }
            this.f18560f = true;
            a.this.f18552d.a("0\r\n\r\n");
            a.this.a(this.f18559e);
            a.this.f18553e = 3;
        }

        @Override // j.t, java.io.Flushable
        public synchronized void flush() {
            if (this.f18560f) {
                return;
            }
            a.this.f18552d.flush();
        }

        @Override // j.t
        public v timeout() {
            return this.f18559e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http1Codec.java */
    /* loaded from: classes2.dex */
    public final class e implements t {

        /* renamed from: e, reason: collision with root package name */
        private final j f18566e;

        /* renamed from: f, reason: collision with root package name */
        private boolean f18567f;

        /* renamed from: g, reason: collision with root package name */
        private long f18568g;

        e(long j2) {
            this.f18566e = new j(a.this.f18552d.timeout());
            this.f18568g = j2;
        }

        @Override // j.t
        public void a(j.c cVar, long j2) {
            if (!this.f18567f) {
                i.g0.c.a(cVar.z(), 0L, j2);
                if (j2 <= this.f18568g) {
                    a.this.f18552d.a(cVar, j2);
                    this.f18568g -= j2;
                    return;
                }
                throw new ProtocolException("expected " + this.f18568g + " bytes but received " + j2);
            }
            throw new IllegalStateException("closed");
        }

        @Override // j.t, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f18567f) {
                return;
            }
            this.f18567f = true;
            if (this.f18568g <= 0) {
                a.this.a(this.f18566e);
                a.this.f18553e = 3;
                return;
            }
            throw new ProtocolException("unexpected end of stream");
        }

        @Override // j.t, java.io.Flushable
        public void flush() {
            if (this.f18567f) {
                return;
            }
            a.this.f18552d.flush();
        }

        @Override // j.t
        public v timeout() {
            return this.f18566e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http1Codec.java */
    /* loaded from: classes2.dex */
    public class f extends b {

        /* renamed from: i, reason: collision with root package name */
        private long f18570i;

        f(a aVar, long j2) {
            super();
            this.f18570i = j2;
            if (this.f18570i == 0) {
                a(true, null);
            }
        }

        @Override // i.g0.h.a.b, j.u
        public long b(j.c cVar, long j2) {
            if (j2 >= 0) {
                if (!this.f18556f) {
                    long j3 = this.f18570i;
                    if (j3 == 0) {
                        return -1L;
                    }
                    long b2 = super.b(cVar, Math.min(j3, j2));
                    if (b2 != -1) {
                        this.f18570i -= b2;
                        if (this.f18570i == 0) {
                            a(true, null);
                        }
                        return b2;
                    }
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    a(false, protocolException);
                    throw protocolException;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        }

        @Override // j.u, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f18556f) {
                return;
            }
            if (this.f18570i != 0 && !i.g0.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                a(false, null);
            }
            this.f18556f = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http1Codec.java */
    /* loaded from: classes2.dex */
    public class g extends b {

        /* renamed from: i, reason: collision with root package name */
        private boolean f18571i;

        g(a aVar) {
            super();
        }

        @Override // i.g0.h.a.b, j.u
        public long b(j.c cVar, long j2) {
            if (j2 >= 0) {
                if (!this.f18556f) {
                    if (this.f18571i) {
                        return -1L;
                    }
                    long b2 = super.b(cVar, j2);
                    if (b2 != -1) {
                        return b2;
                    }
                    this.f18571i = true;
                    a(true, null);
                    return -1L;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        }

        @Override // j.u, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f18556f) {
                return;
            }
            if (!this.f18571i) {
                a(false, null);
            }
            this.f18556f = true;
        }
    }

    public a(w wVar, i.g0.f.g gVar, j.e eVar, j.d dVar) {
        this.f18549a = wVar;
        this.f18550b = gVar;
        this.f18551c = eVar;
        this.f18552d = dVar;
    }

    private String f() {
        String d2 = this.f18551c.d(this.f18554f);
        this.f18554f -= d2.length();
        return d2;
    }

    @Override // i.g0.g.c
    public t a(z zVar, long j2) {
        if ("chunked".equalsIgnoreCase(zVar.a("Transfer-Encoding"))) {
            return c();
        }
        if (j2 != -1) {
            return a(j2);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // i.g0.g.c
    public void b() {
        this.f18552d.flush();
    }

    public t c() {
        if (this.f18553e == 1) {
            this.f18553e = 2;
            return new c();
        }
        throw new IllegalStateException("state: " + this.f18553e);
    }

    @Override // i.g0.g.c
    public void cancel() {
        i.g0.f.c c2 = this.f18550b.c();
        if (c2 != null) {
            c2.a();
        }
    }

    public u d() {
        if (this.f18553e == 4) {
            i.g0.f.g gVar = this.f18550b;
            if (gVar != null) {
                this.f18553e = 5;
                gVar.e();
                return new g(this);
            }
            throw new IllegalStateException("streamAllocation == null");
        }
        throw new IllegalStateException("state: " + this.f18553e);
    }

    public r e() {
        r.a aVar = new r.a();
        while (true) {
            String f2 = f();
            if (f2.length() != 0) {
                i.g0.a.f18446a.a(aVar, f2);
            } else {
                return aVar.a();
            }
        }
    }

    public u b(long j2) {
        if (this.f18553e == 4) {
            this.f18553e = 5;
            return new f(this, j2);
        }
        throw new IllegalStateException("state: " + this.f18553e);
    }

    @Override // i.g0.g.c
    public void a(z zVar) {
        a(zVar.c(), i.a(zVar, this.f18550b.c().d().b().type()));
    }

    @Override // i.g0.g.c
    public c0 a(b0 b0Var) {
        i.g0.f.g gVar = this.f18550b;
        gVar.f18513f.e(gVar.f18512e);
        String b2 = b0Var.b("Content-Type");
        if (!i.g0.g.e.b(b0Var)) {
            return new h(b2, 0L, n.a(b(0L)));
        }
        if ("chunked".equalsIgnoreCase(b0Var.b("Transfer-Encoding"))) {
            return new h(b2, -1L, n.a(a(b0Var.t().g())));
        }
        long a2 = i.g0.g.e.a(b0Var);
        if (a2 != -1) {
            return new h(b2, a2, n.a(b(a2)));
        }
        return new h(b2, -1L, n.a(d()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http1Codec.java */
    /* loaded from: classes2.dex */
    public class d extends b {

        /* renamed from: i, reason: collision with root package name */
        private final s f18562i;

        /* renamed from: j, reason: collision with root package name */
        private long f18563j;

        /* renamed from: k, reason: collision with root package name */
        private boolean f18564k;

        d(s sVar) {
            super();
            this.f18563j = -1L;
            this.f18564k = true;
            this.f18562i = sVar;
        }

        @Override // i.g0.h.a.b, j.u
        public long b(j.c cVar, long j2) {
            if (j2 >= 0) {
                if (!this.f18556f) {
                    if (!this.f18564k) {
                        return -1L;
                    }
                    long j3 = this.f18563j;
                    if (j3 == 0 || j3 == -1) {
                        b();
                        if (!this.f18564k) {
                            return -1L;
                        }
                    }
                    long b2 = super.b(cVar, Math.min(j2, this.f18563j));
                    if (b2 != -1) {
                        this.f18563j -= b2;
                        return b2;
                    }
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    a(false, protocolException);
                    throw protocolException;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        }

        @Override // j.u, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f18556f) {
                return;
            }
            if (this.f18564k && !i.g0.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                a(false, null);
            }
            this.f18556f = true;
        }

        private void b() {
            if (this.f18563j != -1) {
                a.this.f18551c.e();
            }
            try {
                this.f18563j = a.this.f18551c.h();
                String trim = a.this.f18551c.e().trim();
                if (this.f18563j < 0 || !(trim.isEmpty() || trim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f18563j + trim + "\"");
                }
                if (this.f18563j == 0) {
                    this.f18564k = false;
                    i.g0.g.e.a(a.this.f18549a.g(), this.f18562i, a.this.e());
                    a(true, null);
                }
            } catch (NumberFormatException e2) {
                throw new ProtocolException(e2.getMessage());
            }
        }
    }

    @Override // i.g0.g.c
    public void a() {
        this.f18552d.flush();
    }

    public void a(r rVar, String str) {
        if (this.f18553e == 0) {
            this.f18552d.a(str).a("\r\n");
            int b2 = rVar.b();
            for (int i2 = 0; i2 < b2; i2++) {
                this.f18552d.a(rVar.a(i2)).a(": ").a(rVar.b(i2)).a("\r\n");
            }
            this.f18552d.a("\r\n");
            this.f18553e = 1;
            return;
        }
        throw new IllegalStateException("state: " + this.f18553e);
    }

    @Override // i.g0.g.c
    public b0.a a(boolean z) {
        int i2 = this.f18553e;
        if (i2 != 1 && i2 != 3) {
            throw new IllegalStateException("state: " + this.f18553e);
        }
        try {
            k a2 = k.a(f());
            b0.a aVar = new b0.a();
            aVar.a(a2.f18546a);
            aVar.a(a2.f18547b);
            aVar.a(a2.f18548c);
            aVar.a(e());
            if (z && a2.f18547b == 100) {
                return null;
            }
            if (a2.f18547b == 100) {
                this.f18553e = 3;
                return aVar;
            }
            this.f18553e = 4;
            return aVar;
        } catch (EOFException e2) {
            IOException iOException = new IOException("unexpected end of stream on " + this.f18550b);
            iOException.initCause(e2);
            throw iOException;
        }
    }

    public t a(long j2) {
        if (this.f18553e == 1) {
            this.f18553e = 2;
            return new e(j2);
        }
        throw new IllegalStateException("state: " + this.f18553e);
    }

    public u a(s sVar) {
        if (this.f18553e == 4) {
            this.f18553e = 5;
            return new d(sVar);
        }
        throw new IllegalStateException("state: " + this.f18553e);
    }

    void a(j jVar) {
        v g2 = jVar.g();
        jVar.a(v.f19682d);
        g2.a();
        g2.b();
    }
}

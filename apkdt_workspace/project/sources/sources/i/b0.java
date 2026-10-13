package i;

import i.r;
import java.io.Closeable;
import javax.annotation.Nullable;

/* compiled from: Response.java */
/* loaded from: classes2.dex */
public final class b0 implements Closeable {

    /* renamed from: e, reason: collision with root package name */
    final z f18390e;

    /* renamed from: f, reason: collision with root package name */
    final x f18391f;

    /* renamed from: g, reason: collision with root package name */
    final int f18392g;

    /* renamed from: h, reason: collision with root package name */
    final String f18393h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    final q f18394i;

    /* renamed from: j, reason: collision with root package name */
    final r f18395j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    final c0 f18396k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    final b0 f18397l;

    @Nullable
    final b0 m;

    @Nullable
    final b0 n;
    final long o;
    final long p;

    @Nullable
    private volatile d q;

    /* compiled from: Response.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        z f18398a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        x f18399b;

        /* renamed from: c, reason: collision with root package name */
        int f18400c;

        /* renamed from: d, reason: collision with root package name */
        String f18401d;

        /* renamed from: e, reason: collision with root package name */
        @Nullable
        q f18402e;

        /* renamed from: f, reason: collision with root package name */
        r.a f18403f;

        /* renamed from: g, reason: collision with root package name */
        @Nullable
        c0 f18404g;

        /* renamed from: h, reason: collision with root package name */
        @Nullable
        b0 f18405h;

        /* renamed from: i, reason: collision with root package name */
        @Nullable
        b0 f18406i;

        /* renamed from: j, reason: collision with root package name */
        @Nullable
        b0 f18407j;

        /* renamed from: k, reason: collision with root package name */
        long f18408k;

        /* renamed from: l, reason: collision with root package name */
        long f18409l;

        public a() {
            this.f18400c = -1;
            this.f18403f = new r.a();
        }

        private void d(b0 b0Var) {
            if (b0Var.f18396k != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        public a a(z zVar) {
            this.f18398a = zVar;
            return this;
        }

        public a b(String str, String str2) {
            this.f18403f.d(str, str2);
            return this;
        }

        public a c(@Nullable b0 b0Var) {
            if (b0Var != null) {
                d(b0Var);
            }
            this.f18407j = b0Var;
            return this;
        }

        public a a(x xVar) {
            this.f18399b = xVar;
            return this;
        }

        public a b(@Nullable b0 b0Var) {
            if (b0Var != null) {
                a("networkResponse", b0Var);
            }
            this.f18405h = b0Var;
            return this;
        }

        public a a(int i2) {
            this.f18400c = i2;
            return this;
        }

        a(b0 b0Var) {
            this.f18400c = -1;
            this.f18398a = b0Var.f18390e;
            this.f18399b = b0Var.f18391f;
            this.f18400c = b0Var.f18392g;
            this.f18401d = b0Var.f18393h;
            this.f18402e = b0Var.f18394i;
            this.f18403f = b0Var.f18395j.a();
            this.f18404g = b0Var.f18396k;
            this.f18405h = b0Var.f18397l;
            this.f18406i = b0Var.m;
            this.f18407j = b0Var.n;
            this.f18408k = b0Var.o;
            this.f18409l = b0Var.p;
        }

        public a a(String str) {
            this.f18401d = str;
            return this;
        }

        public a b(long j2) {
            this.f18408k = j2;
            return this;
        }

        public a a(@Nullable q qVar) {
            this.f18402e = qVar;
            return this;
        }

        public a a(String str, String str2) {
            this.f18403f.a(str, str2);
            return this;
        }

        public a a(r rVar) {
            this.f18403f = rVar.a();
            return this;
        }

        public a a(@Nullable c0 c0Var) {
            this.f18404g = c0Var;
            return this;
        }

        public a a(@Nullable b0 b0Var) {
            if (b0Var != null) {
                a("cacheResponse", b0Var);
            }
            this.f18406i = b0Var;
            return this;
        }

        private void a(String str, b0 b0Var) {
            if (b0Var.f18396k == null) {
                if (b0Var.f18397l == null) {
                    if (b0Var.m == null) {
                        if (b0Var.n == null) {
                            return;
                        }
                        throw new IllegalArgumentException(str + ".priorResponse != null");
                    }
                    throw new IllegalArgumentException(str + ".cacheResponse != null");
                }
                throw new IllegalArgumentException(str + ".networkResponse != null");
            }
            throw new IllegalArgumentException(str + ".body != null");
        }

        public a a(long j2) {
            this.f18409l = j2;
            return this;
        }

        public b0 a() {
            if (this.f18398a != null) {
                if (this.f18399b != null) {
                    if (this.f18400c >= 0) {
                        if (this.f18401d != null) {
                            return new b0(this);
                        }
                        throw new IllegalStateException("message == null");
                    }
                    throw new IllegalStateException("code < 0: " + this.f18400c);
                }
                throw new IllegalStateException("protocol == null");
            }
            throw new IllegalStateException("request == null");
        }
    }

    b0(a aVar) {
        this.f18390e = aVar.f18398a;
        this.f18391f = aVar.f18399b;
        this.f18392g = aVar.f18400c;
        this.f18393h = aVar.f18401d;
        this.f18394i = aVar.f18402e;
        this.f18395j = aVar.f18403f.a();
        this.f18396k = aVar.f18404g;
        this.f18397l = aVar.f18405h;
        this.m = aVar.f18406i;
        this.n = aVar.f18407j;
        this.o = aVar.f18408k;
        this.p = aVar.f18409l;
    }

    @Nullable
    public String a(String str, @Nullable String str2) {
        String a2 = this.f18395j.a(str);
        return a2 != null ? a2 : str2;
    }

    @Nullable
    public String b(String str) {
        return a(str, null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        c0 c0Var = this.f18396k;
        if (c0Var != null) {
            c0Var.close();
            return;
        }
        throw new IllegalStateException("response is not eligible for a body and must not be closed");
    }

    @Nullable
    public c0 i() {
        return this.f18396k;
    }

    public d j() {
        d dVar = this.q;
        if (dVar != null) {
            return dVar;
        }
        d a2 = d.a(this.f18395j);
        this.q = a2;
        return a2;
    }

    public int k() {
        return this.f18392g;
    }

    @Nullable
    public q l() {
        return this.f18394i;
    }

    public r m() {
        return this.f18395j;
    }

    public boolean o() {
        int i2 = this.f18392g;
        return i2 >= 200 && i2 < 300;
    }

    public String p() {
        return this.f18393h;
    }

    public a q() {
        return new a(this);
    }

    @Nullable
    public b0 r() {
        return this.n;
    }

    public long s() {
        return this.p;
    }

    public z t() {
        return this.f18390e;
    }

    public String toString() {
        return "Response{protocol=" + this.f18391f + ", code=" + this.f18392g + ", message=" + this.f18393h + ", url=" + this.f18390e.g() + '}';
    }

    public long u() {
        return this.o;
    }
}

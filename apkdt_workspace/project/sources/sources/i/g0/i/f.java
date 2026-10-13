package i.g0.i;

import i.b0;
import i.c0;
import i.r;
import i.t;
import i.w;
import i.x;
import i.z;
import j.u;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* compiled from: Http2Codec.java */
/* loaded from: classes2.dex */
public final class f implements i.g0.g.c {

    /* renamed from: f, reason: collision with root package name */
    private static final List<String> f18605f = i.g0.c.a("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");

    /* renamed from: g, reason: collision with root package name */
    private static final List<String> f18606g = i.g0.c.a("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");

    /* renamed from: a, reason: collision with root package name */
    private final t.a f18607a;

    /* renamed from: b, reason: collision with root package name */
    final i.g0.f.g f18608b;

    /* renamed from: c, reason: collision with root package name */
    private final g f18609c;

    /* renamed from: d, reason: collision with root package name */
    private i f18610d;

    /* renamed from: e, reason: collision with root package name */
    private final x f18611e;

    /* compiled from: Http2Codec.java */
    /* loaded from: classes2.dex */
    class a extends j.i {

        /* renamed from: f, reason: collision with root package name */
        boolean f18612f;

        /* renamed from: g, reason: collision with root package name */
        long f18613g;

        a(u uVar) {
            super(uVar);
            this.f18612f = false;
            this.f18613g = 0L;
        }

        private void a(IOException iOException) {
            if (this.f18612f) {
                return;
            }
            this.f18612f = true;
            f fVar = f.this;
            fVar.f18608b.a(false, fVar, this.f18613g, iOException);
        }

        @Override // j.u
        public long b(j.c cVar, long j2) {
            try {
                long b2 = b().b(cVar, j2);
                if (b2 > 0) {
                    this.f18613g += b2;
                }
                return b2;
            } catch (IOException e2) {
                a(e2);
                throw e2;
            }
        }

        @Override // j.i, j.u, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            super.close();
            a(null);
        }
    }

    public f(w wVar, t.a aVar, i.g0.f.g gVar, g gVar2) {
        x xVar;
        this.f18607a = aVar;
        this.f18608b = gVar;
        this.f18609c = gVar2;
        if (wVar.F().contains(x.H2_PRIOR_KNOWLEDGE)) {
            xVar = x.H2_PRIOR_KNOWLEDGE;
        } else {
            xVar = x.HTTP_2;
        }
        this.f18611e = xVar;
    }

    @Override // i.g0.g.c
    public j.t a(z zVar, long j2) {
        return this.f18610d.d();
    }

    @Override // i.g0.g.c
    public void b() {
        this.f18609c.flush();
    }

    @Override // i.g0.g.c
    public void cancel() {
        i iVar = this.f18610d;
        if (iVar != null) {
            iVar.b(b.CANCEL);
        }
    }

    public static List<c> b(z zVar) {
        r c2 = zVar.c();
        ArrayList arrayList = new ArrayList(c2.b() + 4);
        arrayList.add(new c(c.f18575f, zVar.e()));
        arrayList.add(new c(c.f18576g, i.g0.g.i.a(zVar.g())));
        String a2 = zVar.a("Host");
        if (a2 != null) {
            arrayList.add(new c(c.f18578i, a2));
        }
        arrayList.add(new c(c.f18577h, zVar.g().n()));
        int b2 = c2.b();
        for (int i2 = 0; i2 < b2; i2++) {
            j.f encodeUtf8 = j.f.encodeUtf8(c2.a(i2).toLowerCase(Locale.US));
            if (!f18605f.contains(encodeUtf8.utf8())) {
                arrayList.add(new c(encodeUtf8, c2.b(i2)));
            }
        }
        return arrayList;
    }

    @Override // i.g0.g.c
    public void a(z zVar) {
        if (this.f18610d != null) {
            return;
        }
        this.f18610d = this.f18609c.a(b(zVar), zVar.a() != null);
        this.f18610d.h().a(this.f18607a.a(), TimeUnit.MILLISECONDS);
        this.f18610d.l().a(this.f18607a.b(), TimeUnit.MILLISECONDS);
    }

    @Override // i.g0.g.c
    public void a() {
        this.f18610d.d().close();
    }

    @Override // i.g0.g.c
    public b0.a a(boolean z) {
        b0.a a2 = a(this.f18610d.j(), this.f18611e);
        if (z && i.g0.a.f18446a.a(a2) == 100) {
            return null;
        }
        return a2;
    }

    public static b0.a a(r rVar, x xVar) {
        r.a aVar = new r.a();
        int b2 = rVar.b();
        i.g0.g.k kVar = null;
        for (int i2 = 0; i2 < b2; i2++) {
            String a2 = rVar.a(i2);
            String b3 = rVar.b(i2);
            if (a2.equals(":status")) {
                kVar = i.g0.g.k.a("HTTP/1.1 " + b3);
            } else if (!f18606g.contains(a2)) {
                i.g0.a.f18446a.a(aVar, a2, b3);
            }
        }
        if (kVar != null) {
            b0.a aVar2 = new b0.a();
            aVar2.a(xVar);
            aVar2.a(kVar.f18547b);
            aVar2.a(kVar.f18548c);
            aVar2.a(aVar.a());
            return aVar2;
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    @Override // i.g0.g.c
    public c0 a(b0 b0Var) {
        i.g0.f.g gVar = this.f18608b;
        gVar.f18513f.e(gVar.f18512e);
        return new i.g0.g.h(b0Var.b("Content-Type"), i.g0.g.e.a(b0Var), j.n.a(new a(this.f18610d.e())));
    }
}

package i.g0.g;

import i.a0;
import i.b0;
import i.l;
import i.m;
import i.r;
import i.t;
import i.u;
import i.z;
import j.n;
import java.util.List;

/* compiled from: BridgeInterceptor.java */
/* loaded from: classes2.dex */
public final class a implements t {

    /* renamed from: a, reason: collision with root package name */
    private final m f18521a;

    public a(m mVar) {
        this.f18521a = mVar;
    }

    @Override // i.t
    public b0 a(t.a aVar) {
        z v = aVar.v();
        z.a f2 = v.f();
        a0 a2 = v.a();
        if (a2 != null) {
            u b2 = a2.b();
            if (b2 != null) {
                f2.b("Content-Type", b2.toString());
            }
            long a3 = a2.a();
            if (a3 != -1) {
                f2.b("Content-Length", Long.toString(a3));
                f2.a("Transfer-Encoding");
            } else {
                f2.b("Transfer-Encoding", "chunked");
                f2.a("Content-Length");
            }
        }
        boolean z = false;
        if (v.a("Host") == null) {
            f2.b("Host", i.g0.c.a(v.g(), false));
        }
        if (v.a("Connection") == null) {
            f2.b("Connection", "Keep-Alive");
        }
        if (v.a("Accept-Encoding") == null && v.a("Range") == null) {
            z = true;
            f2.b("Accept-Encoding", "gzip");
        }
        List<l> a4 = this.f18521a.a(v.g());
        if (!a4.isEmpty()) {
            f2.b("Cookie", a(a4));
        }
        if (v.a("User-Agent") == null) {
            f2.b("User-Agent", i.g0.d.a());
        }
        b0 a5 = aVar.a(f2.a());
        e.a(this.f18521a, v.g(), a5.m());
        b0.a q = a5.q();
        q.a(v);
        if (z && "gzip".equalsIgnoreCase(a5.b("Content-Encoding")) && e.b(a5)) {
            j.l lVar = new j.l(a5.i().l());
            r.a a6 = a5.m().a();
            a6.b("Content-Encoding");
            a6.b("Content-Length");
            q.a(a6.a());
            q.a(new h(a5.b("Content-Type"), -1L, n.a(lVar)));
        }
        return q.a();
    }

    private String a(List<l> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                sb.append("; ");
            }
            l lVar = list.get(i2);
            sb.append(lVar.a());
            sb.append('=');
            sb.append(lVar.b());
        }
        return sb.toString();
    }
}

package i.g0.g;

import i.b0;
import i.p;
import i.t;
import i.z;
import java.util.List;

/* compiled from: RealInterceptorChain.java */
/* loaded from: classes2.dex */
public final class g implements t.a {

    /* renamed from: a, reason: collision with root package name */
    private final List<t> f18527a;

    /* renamed from: b, reason: collision with root package name */
    private final i.g0.f.g f18528b;

    /* renamed from: c, reason: collision with root package name */
    private final c f18529c;

    /* renamed from: d, reason: collision with root package name */
    private final i.g0.f.c f18530d;

    /* renamed from: e, reason: collision with root package name */
    private final int f18531e;

    /* renamed from: f, reason: collision with root package name */
    private final z f18532f;

    /* renamed from: g, reason: collision with root package name */
    private final i.e f18533g;

    /* renamed from: h, reason: collision with root package name */
    private final p f18534h;

    /* renamed from: i, reason: collision with root package name */
    private final int f18535i;

    /* renamed from: j, reason: collision with root package name */
    private final int f18536j;

    /* renamed from: k, reason: collision with root package name */
    private final int f18537k;

    /* renamed from: l, reason: collision with root package name */
    private int f18538l;

    public g(List<t> list, i.g0.f.g gVar, c cVar, i.g0.f.c cVar2, int i2, z zVar, i.e eVar, p pVar, int i3, int i4, int i5) {
        this.f18527a = list;
        this.f18530d = cVar2;
        this.f18528b = gVar;
        this.f18529c = cVar;
        this.f18531e = i2;
        this.f18532f = zVar;
        this.f18533g = eVar;
        this.f18534h = pVar;
        this.f18535i = i3;
        this.f18536j = i4;
        this.f18537k = i5;
    }

    @Override // i.t.a
    public int a() {
        return this.f18536j;
    }

    @Override // i.t.a
    public int b() {
        return this.f18537k;
    }

    @Override // i.t.a
    public int c() {
        return this.f18535i;
    }

    public i.e d() {
        return this.f18533g;
    }

    public i.i e() {
        return this.f18530d;
    }

    public p f() {
        return this.f18534h;
    }

    public c g() {
        return this.f18529c;
    }

    public i.g0.f.g h() {
        return this.f18528b;
    }

    @Override // i.t.a
    public z v() {
        return this.f18532f;
    }

    @Override // i.t.a
    public b0 a(z zVar) {
        return a(zVar, this.f18528b, this.f18529c, this.f18530d);
    }

    public b0 a(z zVar, i.g0.f.g gVar, c cVar, i.g0.f.c cVar2) {
        if (this.f18531e < this.f18527a.size()) {
            this.f18538l++;
            if (this.f18529c != null && !this.f18530d.a(zVar.g())) {
                throw new IllegalStateException("network interceptor " + this.f18527a.get(this.f18531e - 1) + " must retain the same host and port");
            }
            if (this.f18529c != null && this.f18538l > 1) {
                throw new IllegalStateException("network interceptor " + this.f18527a.get(this.f18531e - 1) + " must call proceed() exactly once");
            }
            g gVar2 = new g(this.f18527a, gVar, cVar, cVar2, this.f18531e + 1, zVar, this.f18533g, this.f18534h, this.f18535i, this.f18536j, this.f18537k);
            t tVar = this.f18527a.get(this.f18531e);
            b0 a2 = tVar.a(gVar2);
            if (cVar != null && this.f18531e + 1 < this.f18527a.size() && gVar2.f18538l != 1) {
                throw new IllegalStateException("network interceptor " + tVar + " must call proceed() exactly once");
            }
            if (a2 != null) {
                if (a2.i() != null) {
                    return a2;
                }
                throw new IllegalStateException("interceptor " + tVar + " returned a response with no body");
            }
            throw new NullPointerException("interceptor " + tVar + " returned null");
        }
        throw new AssertionError();
    }
}

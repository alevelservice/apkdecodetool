package i.g0.f;

import i.d0;
import i.g0.f.f;
import i.g0.i.n;
import i.j;
import i.p;
import i.t;
import i.w;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.List;

/* compiled from: StreamAllocation.java */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final i.a f18508a;

    /* renamed from: b, reason: collision with root package name */
    private f.a f18509b;

    /* renamed from: c, reason: collision with root package name */
    private d0 f18510c;

    /* renamed from: d, reason: collision with root package name */
    private final j f18511d;

    /* renamed from: e, reason: collision with root package name */
    public final i.e f18512e;

    /* renamed from: f, reason: collision with root package name */
    public final p f18513f;

    /* renamed from: g, reason: collision with root package name */
    private final Object f18514g;

    /* renamed from: h, reason: collision with root package name */
    private final f f18515h;

    /* renamed from: i, reason: collision with root package name */
    private int f18516i;

    /* renamed from: j, reason: collision with root package name */
    private c f18517j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f18518k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f18519l;
    private boolean m;
    private i.g0.g.c n;

    /* compiled from: StreamAllocation.java */
    /* loaded from: classes2.dex */
    public static final class a extends WeakReference<g> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f18520a;

        a(g gVar, Object obj) {
            super(gVar);
            this.f18520a = obj;
        }
    }

    public g(j jVar, i.a aVar, i.e eVar, p pVar, Object obj) {
        this.f18511d = jVar;
        this.f18508a = aVar;
        this.f18512e = eVar;
        this.f18513f = pVar;
        this.f18515h = new f(aVar, i(), eVar, pVar);
        this.f18514g = obj;
    }

    private Socket h() {
        c cVar = this.f18517j;
        if (cVar == null || !cVar.f18495k) {
            return null;
        }
        return a(false, false, true);
    }

    private d i() {
        return i.g0.a.f18446a.a(this.f18511d);
    }

    public i.g0.g.c a(w wVar, t.a aVar, boolean z) {
        try {
            i.g0.g.c a2 = a(aVar.c(), aVar.a(), aVar.b(), wVar.E(), wVar.K(), z).a(wVar, aVar, this);
            synchronized (this.f18511d) {
                this.n = a2;
            }
            return a2;
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    public i.g0.g.c b() {
        i.g0.g.c cVar;
        synchronized (this.f18511d) {
            cVar = this.n;
        }
        return cVar;
    }

    public synchronized c c() {
        return this.f18517j;
    }

    public boolean d() {
        f.a aVar;
        return this.f18510c != null || ((aVar = this.f18509b) != null && aVar.b()) || this.f18515h.a();
    }

    public void e() {
        c cVar;
        Socket a2;
        synchronized (this.f18511d) {
            cVar = this.f18517j;
            a2 = a(true, false, false);
            if (this.f18517j != null) {
                cVar = null;
            }
        }
        i.g0.c.a(a2);
        if (cVar != null) {
            this.f18513f.b(this.f18512e, cVar);
        }
    }

    public void f() {
        c cVar;
        Socket a2;
        synchronized (this.f18511d) {
            cVar = this.f18517j;
            a2 = a(false, true, false);
            if (this.f18517j != null) {
                cVar = null;
            }
        }
        i.g0.c.a(a2);
        if (cVar != null) {
            i.g0.a.f18446a.a(this.f18512e, (IOException) null);
            this.f18513f.b(this.f18512e, cVar);
            this.f18513f.a(this.f18512e);
        }
    }

    public d0 g() {
        return this.f18510c;
    }

    public String toString() {
        c c2 = c();
        return c2 != null ? c2.toString() : this.f18508a.toString();
    }

    private void b(c cVar) {
        int size = cVar.n.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (cVar.n.get(i2).get() == this) {
                cVar.n.remove(i2);
                return;
            }
        }
        throw new IllegalStateException();
    }

    private c a(int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        while (true) {
            c a2 = a(i2, i3, i4, i5, z);
            synchronized (this.f18511d) {
                if (a2.f18496l == 0) {
                    return a2;
                }
                if (a2.a(z2)) {
                    return a2;
                }
                e();
            }
        }
    }

    private c a(int i2, int i3, int i4, int i5, boolean z) {
        Socket h2;
        Socket socket;
        c cVar;
        c cVar2;
        c cVar3;
        d0 d0Var;
        boolean z2;
        boolean z3;
        f.a aVar;
        synchronized (this.f18511d) {
            if (!this.f18519l) {
                if (this.n == null) {
                    if (!this.m) {
                        c cVar4 = this.f18517j;
                        h2 = h();
                        socket = null;
                        if (this.f18517j != null) {
                            cVar2 = this.f18517j;
                            cVar = null;
                        } else {
                            cVar = cVar4;
                            cVar2 = null;
                        }
                        if (!this.f18518k) {
                            cVar = null;
                        }
                        if (cVar2 == null) {
                            i.g0.a.f18446a.a(this.f18511d, this.f18508a, this, null);
                            if (this.f18517j != null) {
                                cVar3 = this.f18517j;
                                d0Var = null;
                                z2 = true;
                            } else {
                                d0Var = this.f18510c;
                                cVar3 = cVar2;
                            }
                        } else {
                            cVar3 = cVar2;
                            d0Var = null;
                        }
                        z2 = false;
                    } else {
                        throw new IOException("Canceled");
                    }
                } else {
                    throw new IllegalStateException("codec != null");
                }
            } else {
                throw new IllegalStateException("released");
            }
        }
        i.g0.c.a(h2);
        if (cVar != null) {
            this.f18513f.b(this.f18512e, cVar);
        }
        if (z2) {
            this.f18513f.a(this.f18512e, cVar3);
        }
        if (cVar3 != null) {
            this.f18510c = this.f18517j.d();
            return cVar3;
        }
        if (d0Var != null || ((aVar = this.f18509b) != null && aVar.b())) {
            z3 = false;
        } else {
            this.f18509b = this.f18515h.b();
            z3 = true;
        }
        synchronized (this.f18511d) {
            if (this.m) {
                throw new IOException("Canceled");
            }
            if (z3) {
                List<d0> a2 = this.f18509b.a();
                int size = a2.size();
                int i6 = 0;
                while (true) {
                    if (i6 >= size) {
                        break;
                    }
                    d0 d0Var2 = a2.get(i6);
                    i.g0.a.f18446a.a(this.f18511d, this.f18508a, this, d0Var2);
                    if (this.f18517j != null) {
                        cVar3 = this.f18517j;
                        this.f18510c = d0Var2;
                        z2 = true;
                        break;
                    }
                    i6++;
                }
            }
            if (!z2) {
                if (d0Var == null) {
                    d0Var = this.f18509b.c();
                }
                this.f18510c = d0Var;
                this.f18516i = 0;
                cVar3 = new c(this.f18511d, d0Var);
                a(cVar3, false);
            }
        }
        if (z2) {
            this.f18513f.a(this.f18512e, cVar3);
            return cVar3;
        }
        cVar3.a(i2, i3, i4, i5, z, this.f18512e, this.f18513f);
        i().a(cVar3.d());
        synchronized (this.f18511d) {
            this.f18518k = true;
            i.g0.a.f18446a.b(this.f18511d, cVar3);
            if (cVar3.c()) {
                socket = i.g0.a.f18446a.a(this.f18511d, this.f18508a, this);
                cVar3 = this.f18517j;
            }
        }
        i.g0.c.a(socket);
        this.f18513f.a(this.f18512e, cVar3);
        return cVar3;
    }

    public void a(boolean z, i.g0.g.c cVar, long j2, IOException iOException) {
        c cVar2;
        Socket a2;
        boolean z2;
        this.f18513f.b(this.f18512e, j2);
        synchronized (this.f18511d) {
            if (cVar != null) {
                if (cVar == this.n) {
                    if (!z) {
                        this.f18517j.f18496l++;
                    }
                    cVar2 = this.f18517j;
                    a2 = a(z, false, true);
                    if (this.f18517j != null) {
                        cVar2 = null;
                    }
                    z2 = this.f18519l;
                }
            }
            throw new IllegalStateException("expected " + this.n + " but was " + cVar);
        }
        i.g0.c.a(a2);
        if (cVar2 != null) {
            this.f18513f.b(this.f18512e, cVar2);
        }
        if (iOException != null) {
            this.f18513f.a(this.f18512e, i.g0.a.f18446a.a(this.f18512e, iOException));
        } else if (z2) {
            i.g0.a.f18446a.a(this.f18512e, (IOException) null);
            this.f18513f.a(this.f18512e);
        }
    }

    private Socket a(boolean z, boolean z2, boolean z3) {
        Socket socket;
        if (z3) {
            this.n = null;
        }
        if (z2) {
            this.f18519l = true;
        }
        c cVar = this.f18517j;
        if (cVar != null) {
            if (z) {
                cVar.f18495k = true;
            }
            if (this.n == null && (this.f18519l || this.f18517j.f18495k)) {
                b(this.f18517j);
                if (this.f18517j.n.isEmpty()) {
                    this.f18517j.o = System.nanoTime();
                    if (i.g0.a.f18446a.a(this.f18511d, this.f18517j)) {
                        socket = this.f18517j.e();
                        this.f18517j = null;
                        return socket;
                    }
                }
                socket = null;
                this.f18517j = null;
                return socket;
            }
        }
        return null;
    }

    public void a() {
        i.g0.g.c cVar;
        c cVar2;
        synchronized (this.f18511d) {
            this.m = true;
            cVar = this.n;
            cVar2 = this.f18517j;
        }
        if (cVar != null) {
            cVar.cancel();
        } else if (cVar2 != null) {
            cVar2.a();
        }
    }

    public void a(IOException iOException) {
        boolean z;
        c cVar;
        Socket a2;
        synchronized (this.f18511d) {
            if (iOException instanceof n) {
                i.g0.i.b bVar = ((n) iOException).errorCode;
                if (bVar == i.g0.i.b.REFUSED_STREAM) {
                    this.f18516i++;
                    if (this.f18516i > 1) {
                        this.f18510c = null;
                        z = true;
                    }
                    z = false;
                } else {
                    if (bVar != i.g0.i.b.CANCEL) {
                        this.f18510c = null;
                        z = true;
                    }
                    z = false;
                }
            } else {
                if (this.f18517j != null && (!this.f18517j.c() || (iOException instanceof i.g0.i.a))) {
                    if (this.f18517j.f18496l == 0) {
                        if (this.f18510c != null && iOException != null) {
                            this.f18515h.a(this.f18510c, iOException);
                        }
                        this.f18510c = null;
                    }
                    z = true;
                }
                z = false;
            }
            cVar = this.f18517j;
            a2 = a(z, false, true);
            if (this.f18517j != null || !this.f18518k) {
                cVar = null;
            }
        }
        i.g0.c.a(a2);
        if (cVar != null) {
            this.f18513f.b(this.f18512e, cVar);
        }
    }

    public void a(c cVar, boolean z) {
        if (this.f18517j == null) {
            this.f18517j = cVar;
            this.f18518k = z;
            cVar.n.add(new a(this, this.f18514g));
            return;
        }
        throw new IllegalStateException();
    }

    public Socket a(c cVar) {
        if (this.n == null && this.f18517j.n.size() == 1) {
            Reference<g> reference = this.f18517j.n.get(0);
            Socket a2 = a(true, false, false);
            this.f18517j = cVar;
            cVar.n.add(reference);
            return a2;
        }
        throw new IllegalStateException();
    }
}

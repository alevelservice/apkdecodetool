package com.facebook.imagepipeline.core;

import android.content.Context;
import android.os.Build;
import com.facebook.imagepipeline.producers.r0;
import e.f.i.c.o;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;

/* compiled from: ImagePipelineFactory.java */
@NotThreadSafe
/* loaded from: classes.dex */
public class j {
    private static final Class<?> s = j.class;
    private static j t;

    /* renamed from: a, reason: collision with root package name */
    private final r0 f3741a;

    /* renamed from: b, reason: collision with root package name */
    private final h f3742b;

    /* renamed from: c, reason: collision with root package name */
    private e.f.i.c.h<e.f.b.a.d, e.f.i.g.c> f3743c;

    /* renamed from: d, reason: collision with root package name */
    private o<e.f.b.a.d, e.f.i.g.c> f3744d;

    /* renamed from: e, reason: collision with root package name */
    private e.f.i.c.h<e.f.b.a.d, e.f.c.f.g> f3745e;

    /* renamed from: f, reason: collision with root package name */
    private o<e.f.b.a.d, e.f.c.f.g> f3746f;

    /* renamed from: g, reason: collision with root package name */
    private e.f.i.c.e f3747g;

    /* renamed from: h, reason: collision with root package name */
    private com.facebook.cache.disk.h f3748h;

    /* renamed from: i, reason: collision with root package name */
    private e.f.i.e.c f3749i;

    /* renamed from: j, reason: collision with root package name */
    private g f3750j;

    /* renamed from: k, reason: collision with root package name */
    private com.facebook.imagepipeline.transcoder.d f3751k;

    /* renamed from: l, reason: collision with root package name */
    private l f3752l;
    private m m;
    private e.f.i.c.e n;
    private com.facebook.cache.disk.h o;
    private e.f.i.b.f p;
    private com.facebook.imagepipeline.platform.f q;
    private e.f.i.a.b.a r;

    public j(h hVar) {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("ImagePipelineConfig()");
        }
        com.facebook.common.internal.h.a(hVar);
        this.f3742b = hVar;
        this.f3741a = new r0(hVar.g().b());
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
    }

    public static synchronized void a(h hVar) {
        synchronized (j.class) {
            if (t != null) {
                e.f.c.d.a.c(s, "ImagePipelineFactory has already been initialized! `ImagePipelineFactory.initialize(...)` should only be called once to avoid unexpected behavior.");
            }
            t = new j(hVar);
        }
    }

    public static synchronized void b(Context context) {
        synchronized (j.class) {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("ImagePipelineFactory#initialize");
            }
            a(h.b(context).a());
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
    }

    @Nullable
    private e.f.i.a.b.a k() {
        if (this.r == null) {
            this.r = e.f.i.a.b.b.a(h(), this.f3742b.g(), a(), this.f3742b.h().p());
        }
        return this.r;
    }

    private e.f.i.e.c l() {
        e.f.i.e.c cVar;
        e.f.i.e.c cVar2;
        if (this.f3749i == null) {
            if (this.f3742b.k() != null) {
                this.f3749i = this.f3742b.k();
            } else {
                e.f.i.a.b.a k2 = k();
                if (k2 != null) {
                    cVar2 = k2.a(this.f3742b.a());
                    cVar = k2.b(this.f3742b.a());
                } else {
                    cVar = null;
                    cVar2 = null;
                }
                if (this.f3742b.l() == null) {
                    this.f3749i = new e.f.i.e.b(cVar2, cVar, i());
                } else {
                    i();
                    this.f3742b.l().a();
                    throw null;
                }
            }
        }
        return this.f3749i;
    }

    private com.facebook.imagepipeline.transcoder.d m() {
        if (this.f3751k == null) {
            if (this.f3742b.m() == null && this.f3742b.n() == null && this.f3742b.h().m()) {
                this.f3751k = new com.facebook.imagepipeline.transcoder.h(this.f3742b.h().d());
            } else {
                this.f3751k = new com.facebook.imagepipeline.transcoder.f(this.f3742b.h().d(), this.f3742b.h().g(), this.f3742b.m(), this.f3742b.n());
            }
        }
        return this.f3751k;
    }

    public static j n() {
        j jVar = t;
        com.facebook.common.internal.h.a(jVar, "ImagePipelineFactory was not initialized!");
        return jVar;
    }

    private l o() {
        if (this.f3752l == null) {
            this.f3752l = this.f3742b.h().e().a(this.f3742b.e(), this.f3742b.t().h(), l(), this.f3742b.u(), this.f3742b.y(), this.f3742b.z(), this.f3742b.h().j(), this.f3742b.g(), this.f3742b.t().a(this.f3742b.q()), b(), d(), f(), q(), this.f3742b.d(), h(), this.f3742b.h().c(), this.f3742b.h().b(), this.f3742b.h().a(), this.f3742b.h().d());
        }
        return this.f3752l;
    }

    private m p() {
        boolean z = Build.VERSION.SDK_INT >= 24 && this.f3742b.h().f();
        if (this.m == null) {
            this.m = new m(this.f3742b.e().getApplicationContext().getContentResolver(), o(), this.f3742b.s(), this.f3742b.z(), this.f3742b.h().o(), this.f3741a, this.f3742b.y(), z, this.f3742b.h().n(), this.f3742b.x(), m());
        }
        return this.m;
    }

    private e.f.i.c.e q() {
        if (this.n == null) {
            this.n = new e.f.i.c.e(j(), this.f3742b.t().a(this.f3742b.q()), this.f3742b.t().g(), this.f3742b.g().e(), this.f3742b.g().d(), this.f3742b.j());
        }
        return this.n;
    }

    public e.f.i.c.h<e.f.b.a.d, e.f.c.f.g> c() {
        if (this.f3745e == null) {
            this.f3745e = e.f.i.c.l.a(this.f3742b.f(), this.f3742b.r());
        }
        return this.f3745e;
    }

    public o<e.f.b.a.d, e.f.c.f.g> d() {
        if (this.f3746f == null) {
            this.f3746f = e.f.i.c.m.a(c(), this.f3742b.j());
        }
        return this.f3746f;
    }

    public g e() {
        if (this.f3750j == null) {
            this.f3750j = new g(p(), this.f3742b.v(), this.f3742b.o(), b(), d(), f(), q(), this.f3742b.d(), this.f3741a, com.facebook.common.internal.k.a(false), this.f3742b.h().l());
        }
        return this.f3750j;
    }

    public e.f.i.c.e f() {
        if (this.f3747g == null) {
            this.f3747g = new e.f.i.c.e(g(), this.f3742b.t().a(this.f3742b.q()), this.f3742b.t().g(), this.f3742b.g().e(), this.f3742b.g().d(), this.f3742b.j());
        }
        return this.f3747g;
    }

    public com.facebook.cache.disk.h g() {
        if (this.f3748h == null) {
            this.f3748h = this.f3742b.i().a(this.f3742b.p());
        }
        return this.f3748h;
    }

    public e.f.i.b.f h() {
        if (this.p == null) {
            this.p = e.f.i.b.g.a(this.f3742b.t(), i());
        }
        return this.p;
    }

    public com.facebook.imagepipeline.platform.f i() {
        if (this.q == null) {
            this.q = com.facebook.imagepipeline.platform.g.a(this.f3742b.t(), this.f3742b.h().k());
        }
        return this.q;
    }

    public com.facebook.cache.disk.h j() {
        if (this.o == null) {
            this.o = this.f3742b.i().a(this.f3742b.w());
        }
        return this.o;
    }

    @Nullable
    public e.f.i.f.a a(Context context) {
        e.f.i.a.b.a k2 = k();
        if (k2 == null) {
            return null;
        }
        return k2.a(context);
    }

    public e.f.i.c.h<e.f.b.a.d, e.f.i.g.c> a() {
        if (this.f3743c == null) {
            this.f3743c = e.f.i.c.a.a(this.f3742b.b(), this.f3742b.r(), this.f3742b.c());
        }
        return this.f3743c;
    }

    public o<e.f.b.a.d, e.f.i.g.c> b() {
        if (this.f3744d == null) {
            this.f3744d = e.f.i.c.b.a(a(), this.f3742b.j());
        }
        return this.f3744d;
    }
}

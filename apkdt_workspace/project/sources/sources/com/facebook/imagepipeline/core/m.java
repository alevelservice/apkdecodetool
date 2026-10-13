package com.facebook.imagepipeline.core;

import android.content.ContentResolver;
import android.net.Uri;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.producers.e0;
import com.facebook.imagepipeline.producers.i0;
import com.facebook.imagepipeline.producers.n;
import com.facebook.imagepipeline.producers.o;
import com.facebook.imagepipeline.producers.r0;
import com.facebook.imagepipeline.producers.u0;
import java.util.HashMap;
import java.util.Map;

/* compiled from: ProducerSequenceFactory.java */
/* loaded from: classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    private final ContentResolver f3771a;

    /* renamed from: b, reason: collision with root package name */
    private final l f3772b;

    /* renamed from: c, reason: collision with root package name */
    private final e0 f3773c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f3774d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f3775e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f3776f;

    /* renamed from: g, reason: collision with root package name */
    private final r0 f3777g;

    /* renamed from: h, reason: collision with root package name */
    private final boolean f3778h;

    /* renamed from: i, reason: collision with root package name */
    private final boolean f3779i;

    /* renamed from: j, reason: collision with root package name */
    private final boolean f3780j;

    /* renamed from: k, reason: collision with root package name */
    private final com.facebook.imagepipeline.transcoder.d f3781k;

    /* renamed from: l, reason: collision with root package name */
    @VisibleForTesting
    i0<e.f.c.g.a<e.f.i.g.c>> f3782l;
    private i0<e.f.i.g.e> m;

    @VisibleForTesting
    i0<e.f.c.g.a<e.f.i.g.c>> n;

    @VisibleForTesting
    i0<e.f.c.g.a<e.f.i.g.c>> o;

    @VisibleForTesting
    i0<e.f.c.g.a<e.f.i.g.c>> p;

    @VisibleForTesting
    i0<e.f.c.g.a<e.f.i.g.c>> q;

    @VisibleForTesting
    i0<e.f.c.g.a<e.f.i.g.c>> r;

    @VisibleForTesting
    i0<e.f.c.g.a<e.f.i.g.c>> s;

    @VisibleForTesting
    i0<e.f.c.g.a<e.f.i.g.c>> t;

    @VisibleForTesting
    Map<i0<e.f.c.g.a<e.f.i.g.c>>, i0<e.f.c.g.a<e.f.i.g.c>>> u = new HashMap();

    @VisibleForTesting
    Map<i0<e.f.c.g.a<e.f.i.g.c>>, i0<e.f.c.g.a<e.f.i.g.c>>> v;

    public m(ContentResolver contentResolver, l lVar, e0 e0Var, boolean z, boolean z2, r0 r0Var, boolean z3, boolean z4, boolean z5, boolean z6, com.facebook.imagepipeline.transcoder.d dVar) {
        this.f3771a = contentResolver;
        this.f3772b = lVar;
        this.f3773c = e0Var;
        this.f3774d = z;
        this.f3775e = z2;
        new HashMap();
        this.v = new HashMap();
        this.f3777g = r0Var;
        this.f3778h = z3;
        this.f3779i = z4;
        this.f3776f = z5;
        this.f3780j = z6;
        this.f3781k = dVar;
    }

    private i0<e.f.c.g.a<e.f.i.g.c>> b(e.f.i.i.b bVar) {
        try {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("ProducerSequenceFactory#getBasicDecodedImageSequence");
            }
            com.facebook.common.internal.h.a(bVar);
            Uri p = bVar.p();
            com.facebook.common.internal.h.a(p, "Uri is null.");
            int q = bVar.q();
            if (q != 0) {
                switch (q) {
                    case 2:
                        i0<e.f.c.g.a<e.f.i.g.c>> g2 = g();
                        if (e.f.i.j.b.c()) {
                            e.f.i.j.b.a();
                        }
                        return g2;
                    case 3:
                        i0<e.f.c.g.a<e.f.i.g.c>> e2 = e();
                        if (e.f.i.j.b.c()) {
                            e.f.i.j.b.a();
                        }
                        return e2;
                    case 4:
                        if (e.f.c.e.a.c(this.f3771a.getType(p))) {
                            i0<e.f.c.g.a<e.f.i.g.c>> g3 = g();
                            if (e.f.i.j.b.c()) {
                                e.f.i.j.b.a();
                            }
                            return g3;
                        }
                        i0<e.f.c.g.a<e.f.i.g.c>> d2 = d();
                        if (e.f.i.j.b.c()) {
                            e.f.i.j.b.a();
                        }
                        return d2;
                    case 5:
                        i0<e.f.c.g.a<e.f.i.g.c>> c2 = c();
                        if (e.f.i.j.b.c()) {
                            e.f.i.j.b.a();
                        }
                        return c2;
                    case 6:
                        i0<e.f.c.g.a<e.f.i.g.c>> f2 = f();
                        if (e.f.i.j.b.c()) {
                            e.f.i.j.b.a();
                        }
                        return f2;
                    case 7:
                        i0<e.f.c.g.a<e.f.i.g.c>> b2 = b();
                        if (e.f.i.j.b.c()) {
                            e.f.i.j.b.a();
                        }
                        return b2;
                    case 8:
                        return i();
                    default:
                        throw new IllegalArgumentException("Unsupported uri scheme! Uri is: " + a(p));
                }
            }
            i0<e.f.c.g.a<e.f.i.g.c>> h2 = h();
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
            return h2;
        } finally {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
    }

    private synchronized i0<e.f.c.g.a<e.f.i.g.c>> c() {
        if (this.r == null) {
            this.r = e(this.f3772b.b());
        }
        return this.r;
    }

    private synchronized i0<e.f.c.g.a<e.f.i.g.c>> d() {
        if (this.p == null) {
            this.p = a(this.f3772b.c(), new u0[]{this.f3772b.d(), this.f3772b.e()});
        }
        return this.p;
    }

    private synchronized i0<e.f.c.g.a<e.f.i.g.c>> e() {
        if (this.n == null) {
            this.n = e(this.f3772b.f());
        }
        return this.n;
    }

    private synchronized i0<e.f.c.g.a<e.f.i.g.c>> f() {
        if (this.q == null) {
            this.q = e(this.f3772b.g());
        }
        return this.q;
    }

    private synchronized i0<e.f.c.g.a<e.f.i.g.c>> g() {
        if (this.o == null) {
            this.o = c(this.f3772b.h());
        }
        return this.o;
    }

    private synchronized i0<e.f.c.g.a<e.f.i.g.c>> h() {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("ProducerSequenceFactory#getNetworkFetchSequence");
        }
        if (this.f3782l == null) {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("ProducerSequenceFactory#getNetworkFetchSequence:init");
            }
            this.f3782l = d(a());
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
        return this.f3782l;
    }

    private synchronized i0<e.f.c.g.a<e.f.i.g.c>> i() {
        if (this.t == null) {
            this.t = e(this.f3772b.i());
        }
        return this.t;
    }

    public i0<e.f.c.g.a<e.f.i.g.c>> a(e.f.i.i.b bVar) {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("ProducerSequenceFactory#getDecodedImageProducerSequence");
        }
        i0<e.f.c.g.a<e.f.i.g.c>> b2 = b(bVar);
        if (bVar.f() != null) {
            b2 = b(b2);
        }
        if (this.f3779i) {
            b2 = a(b2);
        }
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
        return b2;
    }

    private i0<e.f.c.g.a<e.f.i.g.c>> c(i0<e.f.c.g.a<e.f.i.g.c>> i0Var) {
        return this.f3772b.a(this.f3772b.a(this.f3772b.b(this.f3772b.c(i0Var)), this.f3777g));
    }

    private i0<e.f.c.g.a<e.f.i.g.c>> e(i0<e.f.i.g.e> i0Var) {
        return a(i0Var, new u0[]{this.f3772b.e()});
    }

    private i0<e.f.i.g.e> f(i0<e.f.i.g.e> i0Var) {
        o g2;
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("ProducerSequenceFactory#newDiskCacheSequence");
        }
        if (this.f3776f) {
            g2 = this.f3772b.g(this.f3772b.j(i0Var));
        } else {
            g2 = this.f3772b.g(i0Var);
        }
        n f2 = this.f3772b.f(g2);
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
        return f2;
    }

    private i0<e.f.i.g.e> g(i0<e.f.i.g.e> i0Var) {
        if (e.f.c.k.c.f17194a && (!this.f3775e || e.f.c.k.c.f17195b == null)) {
            i0Var = this.f3772b.n(i0Var);
        }
        if (this.f3780j) {
            i0Var = f(i0Var);
        }
        return this.f3772b.h(this.f3772b.i(i0Var));
    }

    private i0<e.f.c.g.a<e.f.i.g.c>> d(i0<e.f.i.g.e> i0Var) {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("ProducerSequenceFactory#newBitmapCacheGetToDecodeSequence");
        }
        i0<e.f.c.g.a<e.f.i.g.c>> c2 = c(this.f3772b.e(i0Var));
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
        return c2;
    }

    private synchronized i0<e.f.i.g.e> a() {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("ProducerSequenceFactory#getCommonNetworkFetchToEncodedMemorySequence");
        }
        if (this.m == null) {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("ProducerSequenceFactory#getCommonNetworkFetchToEncodedMemorySequence:init");
            }
            this.m = l.o(g(this.f3772b.a(this.f3773c)));
            this.m = this.f3772b.a(this.m, this.f3774d && !this.f3778h, this.f3781k);
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
        return this.m;
    }

    private i0<e.f.c.g.a<e.f.i.g.c>> a(i0<e.f.i.g.e> i0Var, u0<e.f.i.g.e>[] u0VarArr) {
        return d(b(g(i0Var), u0VarArr));
    }

    private i0<e.f.i.g.e> a(u0<e.f.i.g.e>[] u0VarArr) {
        return this.f3772b.a(this.f3772b.a(u0VarArr), true, this.f3781k);
    }

    private synchronized i0<e.f.c.g.a<e.f.i.g.c>> a(i0<e.f.c.g.a<e.f.i.g.c>> i0Var) {
        i0<e.f.c.g.a<e.f.i.g.c>> i0Var2;
        i0Var2 = this.v.get(i0Var);
        if (i0Var2 == null) {
            i0Var2 = this.f3772b.d(i0Var);
            this.v.put(i0Var, i0Var2);
        }
        return i0Var2;
    }

    private static String a(Uri uri) {
        String valueOf = String.valueOf(uri);
        if (valueOf.length() <= 30) {
            return valueOf;
        }
        return valueOf.substring(0, 30) + "...";
    }

    private synchronized i0<e.f.c.g.a<e.f.i.g.c>> b() {
        if (this.s == null) {
            i0<e.f.i.g.e> a2 = this.f3772b.a();
            if (e.f.c.k.c.f17194a && (!this.f3775e || e.f.c.k.c.f17195b == null)) {
                a2 = this.f3772b.n(a2);
            }
            this.s = d(this.f3772b.a(l.o(a2), true, this.f3781k));
        }
        return this.s;
    }

    private i0<e.f.i.g.e> b(i0<e.f.i.g.e> i0Var, u0<e.f.i.g.e>[] u0VarArr) {
        return l.a(a(u0VarArr), this.f3772b.m(this.f3772b.a(l.o(i0Var), true, this.f3781k)));
    }

    private synchronized i0<e.f.c.g.a<e.f.i.g.c>> b(i0<e.f.c.g.a<e.f.i.g.c>> i0Var) {
        if (!this.u.containsKey(i0Var)) {
            this.u.put(i0Var, this.f3772b.k(this.f3772b.l(i0Var)));
        }
        return this.u.get(i0Var);
    }
}

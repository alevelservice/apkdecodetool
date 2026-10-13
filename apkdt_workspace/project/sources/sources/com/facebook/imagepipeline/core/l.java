package com.facebook.imagepipeline.core;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import com.facebook.imagepipeline.producers.a0;
import com.facebook.imagepipeline.producers.b0;
import com.facebook.imagepipeline.producers.d0;
import com.facebook.imagepipeline.producers.e0;
import com.facebook.imagepipeline.producers.f0;
import com.facebook.imagepipeline.producers.g0;
import com.facebook.imagepipeline.producers.h0;
import com.facebook.imagepipeline.producers.i0;
import com.facebook.imagepipeline.producers.m0;
import com.facebook.imagepipeline.producers.n;
import com.facebook.imagepipeline.producers.n0;
import com.facebook.imagepipeline.producers.o;
import com.facebook.imagepipeline.producers.q;
import com.facebook.imagepipeline.producers.q0;
import com.facebook.imagepipeline.producers.r0;
import com.facebook.imagepipeline.producers.s0;
import com.facebook.imagepipeline.producers.t0;
import com.facebook.imagepipeline.producers.u;
import com.facebook.imagepipeline.producers.u0;
import com.facebook.imagepipeline.producers.v;
import com.facebook.imagepipeline.producers.w;
import com.facebook.imagepipeline.producers.w0;
import com.facebook.imagepipeline.producers.x;
import com.facebook.imagepipeline.producers.z;
import e.f.i.c.p;

/* compiled from: ProducerFactory.java */
/* loaded from: classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    private ContentResolver f3759a;

    /* renamed from: b, reason: collision with root package name */
    private Resources f3760b;

    /* renamed from: c, reason: collision with root package name */
    private AssetManager f3761c;

    /* renamed from: d, reason: collision with root package name */
    private final e.f.c.f.a f3762d;

    /* renamed from: e, reason: collision with root package name */
    private final e.f.i.e.c f3763e;

    /* renamed from: f, reason: collision with root package name */
    private final e.f.i.e.e f3764f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f3765g;

    /* renamed from: h, reason: collision with root package name */
    private final boolean f3766h;

    /* renamed from: i, reason: collision with root package name */
    private final boolean f3767i;

    /* renamed from: j, reason: collision with root package name */
    private final e f3768j;

    /* renamed from: k, reason: collision with root package name */
    private final e.f.c.f.h f3769k;

    /* renamed from: l, reason: collision with root package name */
    private final e.f.i.c.e f3770l;
    private final e.f.i.c.e m;
    private final p<e.f.b.a.d, e.f.c.f.g> n;
    private final p<e.f.b.a.d, e.f.i.g.c> o;
    private final e.f.i.c.f p;
    private final e.f.i.b.f q;
    private final int r;
    private final int s;
    private boolean t;
    private final int u;

    public l(Context context, e.f.c.f.a aVar, e.f.i.e.c cVar, e.f.i.e.e eVar, boolean z, boolean z2, boolean z3, e eVar2, e.f.c.f.h hVar, p<e.f.b.a.d, e.f.i.g.c> pVar, p<e.f.b.a.d, e.f.c.f.g> pVar2, e.f.i.c.e eVar3, e.f.i.c.e eVar4, e.f.i.c.f fVar, e.f.i.b.f fVar2, int i2, int i3, boolean z4, int i4) {
        this.f3759a = context.getApplicationContext().getContentResolver();
        this.f3760b = context.getApplicationContext().getResources();
        this.f3761c = context.getApplicationContext().getAssets();
        this.f3762d = aVar;
        this.f3763e = cVar;
        this.f3764f = eVar;
        this.f3765g = z;
        this.f3766h = z2;
        this.f3767i = z3;
        this.f3768j = eVar2;
        this.f3769k = hVar;
        this.o = pVar;
        this.n = pVar2;
        this.f3770l = eVar3;
        this.m = eVar4;
        this.p = fVar;
        this.q = fVar2;
        this.r = i2;
        this.s = i3;
        this.t = z4;
        this.u = i4;
    }

    public static com.facebook.imagepipeline.producers.a o(i0<e.f.i.g.e> i0Var) {
        return new com.facebook.imagepipeline.producers.a(i0Var);
    }

    public com.facebook.imagepipeline.producers.f a(i0<e.f.c.g.a<e.f.i.g.c>> i0Var) {
        return new com.facebook.imagepipeline.producers.f(this.o, this.p, i0Var);
    }

    public com.facebook.imagepipeline.producers.g b(i0<e.f.c.g.a<e.f.i.g.c>> i0Var) {
        return new com.facebook.imagepipeline.producers.g(this.p, i0Var);
    }

    public com.facebook.imagepipeline.producers.h c(i0<e.f.c.g.a<e.f.i.g.c>> i0Var) {
        return new com.facebook.imagepipeline.producers.h(this.o, this.p, i0Var);
    }

    public w d() {
        return new w(this.f3768j.e(), this.f3769k, this.f3759a);
    }

    public com.facebook.imagepipeline.producers.l e(i0<e.f.i.g.e> i0Var) {
        return new com.facebook.imagepipeline.producers.l(this.f3762d, this.f3768j.a(), this.f3763e, this.f3764f, this.f3765g, this.f3766h, this.f3767i, i0Var, this.u);
    }

    public n f(i0<e.f.i.g.e> i0Var) {
        return new n(this.f3770l, this.m, this.p, i0Var);
    }

    public o g(i0<e.f.i.g.e> i0Var) {
        return new o(this.f3770l, this.m, this.p, i0Var);
    }

    public com.facebook.imagepipeline.producers.p h(i0<e.f.i.g.e> i0Var) {
        return new com.facebook.imagepipeline.producers.p(this.p, i0Var);
    }

    public q i(i0<e.f.i.g.e> i0Var) {
        return new q(this.n, this.p, i0Var);
    }

    public f0 j(i0<e.f.i.g.e> i0Var) {
        return new f0(this.f3770l, this.p, this.f3769k, this.f3762d, i0Var);
    }

    public g0 k(i0<e.f.c.g.a<e.f.i.g.c>> i0Var) {
        return new g0(this.o, this.p, i0Var);
    }

    public h0 l(i0<e.f.c.g.a<e.f.i.g.c>> i0Var) {
        return new h0(i0Var, this.q, this.f3768j.c());
    }

    public <T> s0<T> m(i0<T> i0Var) {
        return new s0<>(5, this.f3768j.b(), i0Var);
    }

    public w0 n(i0<e.f.i.g.e> i0Var) {
        return new w0(this.f3768j.c(), this.f3769k, i0Var);
    }

    public static com.facebook.imagepipeline.producers.j a(i0<e.f.i.g.e> i0Var, i0<e.f.i.g.e> i0Var2) {
        return new com.facebook.imagepipeline.producers.j(i0Var, i0Var2);
    }

    public u b() {
        return new u(this.f3768j.e(), this.f3769k, this.f3761c);
    }

    public v c() {
        return new v(this.f3768j.e(), this.f3769k, this.f3759a);
    }

    public z f() {
        return new z(this.f3768j.e(), this.f3769k);
    }

    public a0 g() {
        return new a0(this.f3768j.e(), this.f3769k, this.f3760b);
    }

    public b0 h() {
        return new b0(this.f3768j.e(), this.f3759a);
    }

    public m0 i() {
        return new m0(this.f3768j.e(), this.f3769k, this.f3759a);
    }

    public com.facebook.imagepipeline.producers.k a() {
        return new com.facebook.imagepipeline.producers.k(this.f3769k);
    }

    public com.facebook.imagepipeline.producers.i d(i0<e.f.c.g.a<e.f.i.g.c>> i0Var) {
        return new com.facebook.imagepipeline.producers.i(i0Var, this.r, this.s, this.t);
    }

    public x e() {
        return new x(this.f3768j.e(), this.f3769k, this.f3759a);
    }

    public t0 a(u0<e.f.i.g.e>[] u0VarArr) {
        return new t0(u0VarArr);
    }

    public d0 a(e0 e0Var) {
        return new d0(this.f3769k, this.f3762d, e0Var);
    }

    public n0 a(i0<e.f.i.g.e> i0Var, boolean z, com.facebook.imagepipeline.transcoder.d dVar) {
        return new n0(this.f3768j.c(), this.f3769k, i0Var, z, dVar);
    }

    public <T> q0<T> a(i0<T> i0Var, r0 r0Var) {
        return new q0<>(i0Var, r0Var);
    }
}

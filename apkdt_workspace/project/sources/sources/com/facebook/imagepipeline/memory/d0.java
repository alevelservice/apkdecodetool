package com.facebook.imagepipeline.memory;

import javax.annotation.concurrent.Immutable;

/* compiled from: PoolConfig.java */
@Immutable
/* loaded from: classes.dex */
public class d0 {

    /* renamed from: a, reason: collision with root package name */
    private final f0 f3808a;

    /* renamed from: b, reason: collision with root package name */
    private final g0 f3809b;

    /* renamed from: c, reason: collision with root package name */
    private final f0 f3810c;

    /* renamed from: d, reason: collision with root package name */
    private final e.f.c.f.c f3811d;

    /* renamed from: e, reason: collision with root package name */
    private final f0 f3812e;

    /* renamed from: f, reason: collision with root package name */
    private final g0 f3813f;

    /* renamed from: g, reason: collision with root package name */
    private final f0 f3814g;

    /* renamed from: h, reason: collision with root package name */
    private final g0 f3815h;

    /* renamed from: i, reason: collision with root package name */
    private final String f3816i;

    /* renamed from: j, reason: collision with root package name */
    private final int f3817j;

    /* renamed from: k, reason: collision with root package name */
    private final int f3818k;

    /* renamed from: l, reason: collision with root package name */
    private final boolean f3819l;

    /* compiled from: PoolConfig.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private f0 f3820a;

        /* renamed from: b, reason: collision with root package name */
        private g0 f3821b;

        /* renamed from: c, reason: collision with root package name */
        private f0 f3822c;

        /* renamed from: d, reason: collision with root package name */
        private e.f.c.f.c f3823d;

        /* renamed from: e, reason: collision with root package name */
        private f0 f3824e;

        /* renamed from: f, reason: collision with root package name */
        private g0 f3825f;

        /* renamed from: g, reason: collision with root package name */
        private f0 f3826g;

        /* renamed from: h, reason: collision with root package name */
        private g0 f3827h;

        /* renamed from: i, reason: collision with root package name */
        private String f3828i;

        /* renamed from: j, reason: collision with root package name */
        private int f3829j;

        /* renamed from: k, reason: collision with root package name */
        private int f3830k;

        /* renamed from: l, reason: collision with root package name */
        private boolean f3831l;

        private b() {
        }

        public d0 a() {
            return new d0(this);
        }
    }

    public static b m() {
        return new b();
    }

    public int a() {
        return this.f3818k;
    }

    public int b() {
        return this.f3817j;
    }

    public f0 c() {
        return this.f3808a;
    }

    public g0 d() {
        return this.f3809b;
    }

    public String e() {
        return this.f3816i;
    }

    public f0 f() {
        return this.f3810c;
    }

    public f0 g() {
        return this.f3812e;
    }

    public g0 h() {
        return this.f3813f;
    }

    public e.f.c.f.c i() {
        return this.f3811d;
    }

    public f0 j() {
        return this.f3814g;
    }

    public g0 k() {
        return this.f3815h;
    }

    public boolean l() {
        return this.f3819l;
    }

    private d0(b bVar) {
        f0 f0Var;
        g0 g0Var;
        f0 f0Var2;
        e.f.c.f.c cVar;
        f0 f0Var3;
        g0 g0Var2;
        f0 f0Var4;
        g0 g0Var3;
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("PoolConfig()");
        }
        if (bVar.f3820a != null) {
            f0Var = bVar.f3820a;
        } else {
            f0Var = k.a();
        }
        this.f3808a = f0Var;
        if (bVar.f3821b != null) {
            g0Var = bVar.f3821b;
        } else {
            g0Var = a0.c();
        }
        this.f3809b = g0Var;
        if (bVar.f3822c != null) {
            f0Var2 = bVar.f3822c;
        } else {
            f0Var2 = m.a();
        }
        this.f3810c = f0Var2;
        if (bVar.f3823d != null) {
            cVar = bVar.f3823d;
        } else {
            cVar = e.f.c.f.d.a();
        }
        this.f3811d = cVar;
        if (bVar.f3824e != null) {
            f0Var3 = bVar.f3824e;
        } else {
            f0Var3 = n.a();
        }
        this.f3812e = f0Var3;
        if (bVar.f3825f != null) {
            g0Var2 = bVar.f3825f;
        } else {
            g0Var2 = a0.c();
        }
        this.f3813f = g0Var2;
        if (bVar.f3826g != null) {
            f0Var4 = bVar.f3826g;
        } else {
            f0Var4 = l.a();
        }
        this.f3814g = f0Var4;
        if (bVar.f3827h != null) {
            g0Var3 = bVar.f3827h;
        } else {
            g0Var3 = a0.c();
        }
        this.f3815h = g0Var3;
        this.f3816i = bVar.f3828i == null ? "legacy" : bVar.f3828i;
        this.f3817j = bVar.f3829j;
        this.f3818k = bVar.f3830k > 0 ? bVar.f3830k : 4194304;
        this.f3819l = bVar.f3831l;
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
    }
}

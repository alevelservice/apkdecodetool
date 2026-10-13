package com.facebook.imagepipeline.memory;

import javax.annotation.concurrent.NotThreadSafe;

/* compiled from: PoolFactory.java */
@NotThreadSafe
/* loaded from: classes.dex */
public class e0 {

    /* renamed from: a, reason: collision with root package name */
    private final d0 f3832a;

    /* renamed from: b, reason: collision with root package name */
    private d f3833b;

    /* renamed from: c, reason: collision with root package name */
    private j f3834c;

    /* renamed from: d, reason: collision with root package name */
    private p f3835d;

    /* renamed from: e, reason: collision with root package name */
    private z f3836e;

    /* renamed from: f, reason: collision with root package name */
    private e.f.c.f.h f3837f;

    /* renamed from: g, reason: collision with root package name */
    private e.f.c.f.k f3838g;

    /* renamed from: h, reason: collision with root package name */
    private e.f.c.f.a f3839h;

    public e0(d0 d0Var) {
        com.facebook.common.internal.h.a(d0Var);
        this.f3832a = d0Var;
    }

    public d a() {
        if (this.f3833b == null) {
            String e2 = this.f3832a.e();
            char c2 = 65535;
            switch (e2.hashCode()) {
                case -1868884870:
                    if (e2.equals(BitmapPoolType.LEGACY_DEFAULT_PARAMS)) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -1106578487:
                    if (e2.equals("legacy")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -404562712:
                    if (e2.equals(BitmapPoolType.EXPERIMENTAL)) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 95945896:
                    if (e2.equals(BitmapPoolType.DUMMY)) {
                        c2 = 0;
                        break;
                    }
                    break;
            }
            if (c2 == 0) {
                this.f3833b = new o();
            } else if (c2 == 1) {
                this.f3833b = new r(this.f3832a.b(), this.f3832a.a(), a0.c(), this.f3832a.l() ? this.f3832a.i() : null);
            } else if (c2 != 2) {
                this.f3833b = new h(this.f3832a.i(), this.f3832a.c(), this.f3832a.d());
            } else {
                this.f3833b = new h(this.f3832a.i(), k.a(), this.f3832a.d());
            }
        }
        return this.f3833b;
    }

    public j b() {
        if (this.f3834c == null) {
            this.f3834c = new j(this.f3832a.i(), this.f3832a.g(), this.f3832a.h());
        }
        return this.f3834c;
    }

    public p c() {
        if (this.f3835d == null) {
            this.f3835d = new p(this.f3832a.i(), this.f3832a.f());
        }
        return this.f3835d;
    }

    public int d() {
        return this.f3832a.f().f3849e;
    }

    public z e() {
        if (this.f3836e == null) {
            this.f3836e = new z(this.f3832a.i(), this.f3832a.g(), this.f3832a.h());
        }
        return this.f3836e;
    }

    public e.f.c.f.h f() {
        return a(0);
    }

    public e.f.c.f.k g() {
        if (this.f3838g == null) {
            this.f3838g = new e.f.c.f.k(h());
        }
        return this.f3838g;
    }

    public e.f.c.f.a h() {
        if (this.f3839h == null) {
            this.f3839h = new q(this.f3832a.i(), this.f3832a.j(), this.f3832a.k());
        }
        return this.f3839h;
    }

    private u b(int i2) {
        if (i2 == 0) {
            return e();
        }
        if (i2 == 1) {
            return b();
        }
        throw new IllegalArgumentException("Invalid MemoryChunkType");
    }

    public e.f.c.f.h a(int i2) {
        if (this.f3837f == null) {
            this.f3837f = new x(b(i2), g());
        }
        return this.f3837f;
    }
}

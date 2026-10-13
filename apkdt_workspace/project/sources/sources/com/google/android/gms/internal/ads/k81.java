package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class k81 implements eb1 {

    /* renamed from: a, reason: collision with root package name */
    private final g81 f7636a;

    /* renamed from: b, reason: collision with root package name */
    private int f7637b;

    /* renamed from: c, reason: collision with root package name */
    private int f7638c;

    /* renamed from: d, reason: collision with root package name */
    private int f7639d = 0;

    private k81(g81 g81Var) {
        f91.a(g81Var, "input");
        this.f7636a = g81Var;
        this.f7636a.f6827c = this;
    }

    public static k81 a(g81 g81Var) {
        k81 k81Var = g81Var.f6827c;
        return k81Var != null ? k81Var : new k81(g81Var);
    }

    private final <T> T c(db1<T> db1Var, q81 q81Var) {
        int m = this.f7636a.m();
        g81 g81Var = this.f7636a;
        if (g81Var.f6825a < g81Var.f6826b) {
            int c2 = g81Var.c(m);
            T a2 = db1Var.a();
            this.f7636a.f6825a++;
            db1Var.a(a2, this, q81Var);
            db1Var.e(a2);
            this.f7636a.a(0);
            r5.f6825a--;
            this.f7636a.d(c2);
            return a2;
        }
        throw new o91("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final <T> T b(db1<T> db1Var, q81 q81Var) {
        a(3);
        return (T) d(db1Var, q81Var);
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final String d() {
        a(2);
        return this.f7636a.c();
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final boolean e() {
        int i2;
        if (this.f7636a.s() || (i2 = this.f7637b) == this.f7638c) {
            return false;
        }
        return this.f7636a.b(i2);
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final long f() {
        a(1);
        return this.f7636a.h();
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final int g() {
        a(5);
        return this.f7636a.i();
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final int getTag() {
        return this.f7637b;
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final boolean h() {
        a(0);
        return this.f7636a.j();
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final int i() {
        a(5);
        return this.f7636a.o();
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final String j() {
        a(2);
        return this.f7636a.k();
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final long k() {
        a(1);
        return this.f7636a.p();
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final t71 l() {
        a(2);
        return this.f7636a.l();
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final int m() {
        a(0);
        return this.f7636a.q();
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final long n() {
        a(0);
        return this.f7636a.e();
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final int o() {
        a(0);
        return this.f7636a.m();
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final long p() {
        a(0);
        return this.f7636a.r();
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final long q() {
        a(0);
        return this.f7636a.f();
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final int r() {
        a(0);
        return this.f7636a.n();
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final double readDouble() {
        a(1);
        return this.f7636a.a();
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final float readFloat() {
        a(5);
        return this.f7636a.b();
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final int s() {
        int i2 = this.f7639d;
        if (i2 != 0) {
            this.f7637b = i2;
            this.f7639d = 0;
        } else {
            this.f7637b = this.f7636a.d();
        }
        int i3 = this.f7637b;
        if (i3 == 0 || i3 == this.f7638c) {
            return Integer.MAX_VALUE;
        }
        return i3 >>> 3;
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final int t() {
        a(0);
        return this.f7636a.g();
    }

    private final void a(int i2) {
        if ((this.f7637b & 7) != i2) {
            throw o91.zzbac();
        }
    }

    private final <T> T d(db1<T> db1Var, q81 q81Var) {
        int i2 = this.f7638c;
        this.f7638c = ((this.f7637b >>> 3) << 3) | 4;
        try {
            T a2 = db1Var.a();
            db1Var.a(a2, this, q81Var);
            db1Var.e(a2);
            if (this.f7637b == this.f7638c) {
                return a2;
            }
            throw o91.zzbad();
        } finally {
            this.f7638c = i2;
        }
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final void b(List<Integer> list) {
        int d2;
        int d3;
        if (list instanceof g91) {
            g91 g91Var = (g91) list;
            int i2 = this.f7637b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int t = this.f7636a.t() + this.f7636a.m();
                    do {
                        g91Var.h(this.f7636a.g());
                    } while (this.f7636a.t() < t);
                    d(t);
                    return;
                }
                throw o91.zzbac();
            }
            do {
                g91Var.h(this.f7636a.g());
                if (this.f7636a.s()) {
                    return;
                } else {
                    d3 = this.f7636a.d();
                }
            } while (d3 == this.f7637b);
            this.f7639d = d3;
            return;
        }
        int i3 = this.f7637b & 7;
        if (i3 != 0) {
            if (i3 == 2) {
                int t2 = this.f7636a.t() + this.f7636a.m();
                do {
                    list.add(Integer.valueOf(this.f7636a.g()));
                } while (this.f7636a.t() < t2);
                d(t2);
                return;
            }
            throw o91.zzbac();
        }
        do {
            list.add(Integer.valueOf(this.f7636a.g()));
            if (this.f7636a.s()) {
                return;
            } else {
                d2 = this.f7636a.d();
            }
        } while (d2 == this.f7637b);
        this.f7639d = d2;
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final void e(List<Float> list) {
        int d2;
        int d3;
        if (list instanceof z81) {
            z81 z81Var = (z81) list;
            int i2 = this.f7637b & 7;
            if (i2 != 2) {
                if (i2 != 5) {
                    throw o91.zzbac();
                }
                do {
                    z81Var.a(this.f7636a.b());
                    if (this.f7636a.s()) {
                        return;
                    } else {
                        d3 = this.f7636a.d();
                    }
                } while (d3 == this.f7637b);
                this.f7639d = d3;
                return;
            }
            int m = this.f7636a.m();
            c(m);
            int t = this.f7636a.t() + m;
            do {
                z81Var.a(this.f7636a.b());
            } while (this.f7636a.t() < t);
            return;
        }
        int i3 = this.f7637b & 7;
        if (i3 != 2) {
            if (i3 != 5) {
                throw o91.zzbac();
            }
            do {
                list.add(Float.valueOf(this.f7636a.b()));
                if (this.f7636a.s()) {
                    return;
                } else {
                    d2 = this.f7636a.d();
                }
            } while (d2 == this.f7637b);
            this.f7639d = d2;
            return;
        }
        int m2 = this.f7636a.m();
        c(m2);
        int t2 = this.f7636a.t() + m2;
        do {
            list.add(Float.valueOf(this.f7636a.b()));
        } while (this.f7636a.t() < t2);
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final void f(List<t71> list) {
        int d2;
        if ((this.f7637b & 7) != 2) {
            throw o91.zzbac();
        }
        do {
            list.add(l());
            if (this.f7636a.s()) {
                return;
            } else {
                d2 = this.f7636a.d();
            }
        } while (d2 == this.f7637b);
        this.f7639d = d2;
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final void g(List<Double> list) {
        int d2;
        int d3;
        if (list instanceof p81) {
            p81 p81Var = (p81) list;
            int i2 = this.f7637b & 7;
            if (i2 != 1) {
                if (i2 == 2) {
                    int m = this.f7636a.m();
                    b(m);
                    int t = this.f7636a.t() + m;
                    do {
                        p81Var.a(this.f7636a.a());
                    } while (this.f7636a.t() < t);
                    return;
                }
                throw o91.zzbac();
            }
            do {
                p81Var.a(this.f7636a.a());
                if (this.f7636a.s()) {
                    return;
                } else {
                    d3 = this.f7636a.d();
                }
            } while (d3 == this.f7637b);
            this.f7639d = d3;
            return;
        }
        int i3 = this.f7637b & 7;
        if (i3 != 1) {
            if (i3 == 2) {
                int m2 = this.f7636a.m();
                b(m2);
                int t2 = this.f7636a.t() + m2;
                do {
                    list.add(Double.valueOf(this.f7636a.a()));
                } while (this.f7636a.t() < t2);
                return;
            }
            throw o91.zzbac();
        }
        do {
            list.add(Double.valueOf(this.f7636a.a()));
            if (this.f7636a.s()) {
                return;
            } else {
                d2 = this.f7636a.d();
            }
        } while (d2 == this.f7637b);
        this.f7639d = d2;
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final void h(List<String> list) {
        a(list, true);
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final void i(List<String> list) {
        a(list, false);
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final void j(List<Long> list) {
        int d2;
        int d3;
        if (list instanceof ca1) {
            ca1 ca1Var = (ca1) list;
            int i2 = this.f7637b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int t = this.f7636a.t() + this.f7636a.m();
                    do {
                        ca1Var.a(this.f7636a.f());
                    } while (this.f7636a.t() < t);
                    d(t);
                    return;
                }
                throw o91.zzbac();
            }
            do {
                ca1Var.a(this.f7636a.f());
                if (this.f7636a.s()) {
                    return;
                } else {
                    d3 = this.f7636a.d();
                }
            } while (d3 == this.f7637b);
            this.f7639d = d3;
            return;
        }
        int i3 = this.f7637b & 7;
        if (i3 != 0) {
            if (i3 == 2) {
                int t2 = this.f7636a.t() + this.f7636a.m();
                do {
                    list.add(Long.valueOf(this.f7636a.f()));
                } while (this.f7636a.t() < t2);
                d(t2);
                return;
            }
            throw o91.zzbac();
        }
        do {
            list.add(Long.valueOf(this.f7636a.f()));
            if (this.f7636a.s()) {
                return;
            } else {
                d2 = this.f7636a.d();
            }
        } while (d2 == this.f7637b);
        this.f7639d = d2;
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final void k(List<Long> list) {
        int d2;
        int d3;
        if (list instanceof ca1) {
            ca1 ca1Var = (ca1) list;
            int i2 = this.f7637b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int t = this.f7636a.t() + this.f7636a.m();
                    do {
                        ca1Var.a(this.f7636a.e());
                    } while (this.f7636a.t() < t);
                    d(t);
                    return;
                }
                throw o91.zzbac();
            }
            do {
                ca1Var.a(this.f7636a.e());
                if (this.f7636a.s()) {
                    return;
                } else {
                    d3 = this.f7636a.d();
                }
            } while (d3 == this.f7637b);
            this.f7639d = d3;
            return;
        }
        int i3 = this.f7637b & 7;
        if (i3 != 0) {
            if (i3 == 2) {
                int t2 = this.f7636a.t() + this.f7636a.m();
                do {
                    list.add(Long.valueOf(this.f7636a.e()));
                } while (this.f7636a.t() < t2);
                d(t2);
                return;
            }
            throw o91.zzbac();
        }
        do {
            list.add(Long.valueOf(this.f7636a.e()));
            if (this.f7636a.s()) {
                return;
            } else {
                d2 = this.f7636a.d();
            }
        } while (d2 == this.f7637b);
        this.f7639d = d2;
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final void l(List<Integer> list) {
        int d2;
        int d3;
        if (list instanceof g91) {
            g91 g91Var = (g91) list;
            int i2 = this.f7637b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int t = this.f7636a.t() + this.f7636a.m();
                    do {
                        g91Var.h(this.f7636a.q());
                    } while (this.f7636a.t() < t);
                    d(t);
                    return;
                }
                throw o91.zzbac();
            }
            do {
                g91Var.h(this.f7636a.q());
                if (this.f7636a.s()) {
                    return;
                } else {
                    d3 = this.f7636a.d();
                }
            } while (d3 == this.f7637b);
            this.f7639d = d3;
            return;
        }
        int i3 = this.f7637b & 7;
        if (i3 != 0) {
            if (i3 == 2) {
                int t2 = this.f7636a.t() + this.f7636a.m();
                do {
                    list.add(Integer.valueOf(this.f7636a.q()));
                } while (this.f7636a.t() < t2);
                d(t2);
                return;
            }
            throw o91.zzbac();
        }
        do {
            list.add(Integer.valueOf(this.f7636a.q()));
            if (this.f7636a.s()) {
                return;
            } else {
                d2 = this.f7636a.d();
            }
        } while (d2 == this.f7637b);
        this.f7639d = d2;
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final void m(List<Long> list) {
        int d2;
        int d3;
        if (list instanceof ca1) {
            ca1 ca1Var = (ca1) list;
            int i2 = this.f7637b & 7;
            if (i2 != 1) {
                if (i2 == 2) {
                    int m = this.f7636a.m();
                    b(m);
                    int t = this.f7636a.t() + m;
                    do {
                        ca1Var.a(this.f7636a.p());
                    } while (this.f7636a.t() < t);
                    return;
                }
                throw o91.zzbac();
            }
            do {
                ca1Var.a(this.f7636a.p());
                if (this.f7636a.s()) {
                    return;
                } else {
                    d3 = this.f7636a.d();
                }
            } while (d3 == this.f7637b);
            this.f7639d = d3;
            return;
        }
        int i3 = this.f7637b & 7;
        if (i3 != 1) {
            if (i3 == 2) {
                int m2 = this.f7636a.m();
                b(m2);
                int t2 = this.f7636a.t() + m2;
                do {
                    list.add(Long.valueOf(this.f7636a.p()));
                } while (this.f7636a.t() < t2);
                return;
            }
            throw o91.zzbac();
        }
        do {
            list.add(Long.valueOf(this.f7636a.p()));
            if (this.f7636a.s()) {
                return;
            } else {
                d2 = this.f7636a.d();
            }
        } while (d2 == this.f7637b);
        this.f7639d = d2;
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final void n(List<Integer> list) {
        int d2;
        int d3;
        if (list instanceof g91) {
            g91 g91Var = (g91) list;
            int i2 = this.f7637b & 7;
            if (i2 != 2) {
                if (i2 != 5) {
                    throw o91.zzbac();
                }
                do {
                    g91Var.h(this.f7636a.o());
                    if (this.f7636a.s()) {
                        return;
                    } else {
                        d3 = this.f7636a.d();
                    }
                } while (d3 == this.f7637b);
                this.f7639d = d3;
                return;
            }
            int m = this.f7636a.m();
            c(m);
            int t = this.f7636a.t() + m;
            do {
                g91Var.h(this.f7636a.o());
            } while (this.f7636a.t() < t);
            return;
        }
        int i3 = this.f7637b & 7;
        if (i3 != 2) {
            if (i3 != 5) {
                throw o91.zzbac();
            }
            do {
                list.add(Integer.valueOf(this.f7636a.o()));
                if (this.f7636a.s()) {
                    return;
                } else {
                    d2 = this.f7636a.d();
                }
            } while (d2 == this.f7637b);
            this.f7639d = d2;
            return;
        }
        int m2 = this.f7636a.m();
        c(m2);
        int t2 = this.f7636a.t() + m2;
        do {
            list.add(Integer.valueOf(this.f7636a.o()));
        } while (this.f7636a.t() < t2);
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final void o(List<Long> list) {
        int d2;
        int d3;
        if (list instanceof ca1) {
            ca1 ca1Var = (ca1) list;
            int i2 = this.f7637b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int t = this.f7636a.t() + this.f7636a.m();
                    do {
                        ca1Var.a(this.f7636a.r());
                    } while (this.f7636a.t() < t);
                    d(t);
                    return;
                }
                throw o91.zzbac();
            }
            do {
                ca1Var.a(this.f7636a.r());
                if (this.f7636a.s()) {
                    return;
                } else {
                    d3 = this.f7636a.d();
                }
            } while (d3 == this.f7637b);
            this.f7639d = d3;
            return;
        }
        int i3 = this.f7637b & 7;
        if (i3 != 0) {
            if (i3 == 2) {
                int t2 = this.f7636a.t() + this.f7636a.m();
                do {
                    list.add(Long.valueOf(this.f7636a.r()));
                } while (this.f7636a.t() < t2);
                d(t2);
                return;
            }
            throw o91.zzbac();
        }
        do {
            list.add(Long.valueOf(this.f7636a.r()));
            if (this.f7636a.s()) {
                return;
            } else {
                d2 = this.f7636a.d();
            }
        } while (d2 == this.f7637b);
        this.f7639d = d2;
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final void p(List<Integer> list) {
        int d2;
        int d3;
        if (list instanceof g91) {
            g91 g91Var = (g91) list;
            int i2 = this.f7637b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int t = this.f7636a.t() + this.f7636a.m();
                    do {
                        g91Var.h(this.f7636a.n());
                    } while (this.f7636a.t() < t);
                    d(t);
                    return;
                }
                throw o91.zzbac();
            }
            do {
                g91Var.h(this.f7636a.n());
                if (this.f7636a.s()) {
                    return;
                } else {
                    d3 = this.f7636a.d();
                }
            } while (d3 == this.f7637b);
            this.f7639d = d3;
            return;
        }
        int i3 = this.f7637b & 7;
        if (i3 != 0) {
            if (i3 == 2) {
                int t2 = this.f7636a.t() + this.f7636a.m();
                do {
                    list.add(Integer.valueOf(this.f7636a.n()));
                } while (this.f7636a.t() < t2);
                d(t2);
                return;
            }
            throw o91.zzbac();
        }
        do {
            list.add(Integer.valueOf(this.f7636a.n()));
            if (this.f7636a.s()) {
                return;
            } else {
                d2 = this.f7636a.d();
            }
        } while (d2 == this.f7637b);
        this.f7639d = d2;
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final void q(List<Integer> list) {
        int d2;
        int d3;
        if (list instanceof g91) {
            g91 g91Var = (g91) list;
            int i2 = this.f7637b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int t = this.f7636a.t() + this.f7636a.m();
                    do {
                        g91Var.h(this.f7636a.m());
                    } while (this.f7636a.t() < t);
                    d(t);
                    return;
                }
                throw o91.zzbac();
            }
            do {
                g91Var.h(this.f7636a.m());
                if (this.f7636a.s()) {
                    return;
                } else {
                    d3 = this.f7636a.d();
                }
            } while (d3 == this.f7637b);
            this.f7639d = d3;
            return;
        }
        int i3 = this.f7637b & 7;
        if (i3 != 0) {
            if (i3 == 2) {
                int t2 = this.f7636a.t() + this.f7636a.m();
                do {
                    list.add(Integer.valueOf(this.f7636a.m()));
                } while (this.f7636a.t() < t2);
                d(t2);
                return;
            }
            throw o91.zzbac();
        }
        do {
            list.add(Integer.valueOf(this.f7636a.m()));
            if (this.f7636a.s()) {
                return;
            } else {
                d2 = this.f7636a.d();
            }
        } while (d2 == this.f7637b);
        this.f7639d = d2;
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final <T> T a(db1<T> db1Var, q81 q81Var) {
        a(2);
        return (T) c(db1Var, q81Var);
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final void a(List<Long> list) {
        int d2;
        int d3;
        if (list instanceof ca1) {
            ca1 ca1Var = (ca1) list;
            int i2 = this.f7637b & 7;
            if (i2 != 1) {
                if (i2 == 2) {
                    int m = this.f7636a.m();
                    b(m);
                    int t = this.f7636a.t() + m;
                    do {
                        ca1Var.a(this.f7636a.h());
                    } while (this.f7636a.t() < t);
                    return;
                }
                throw o91.zzbac();
            }
            do {
                ca1Var.a(this.f7636a.h());
                if (this.f7636a.s()) {
                    return;
                } else {
                    d3 = this.f7636a.d();
                }
            } while (d3 == this.f7637b);
            this.f7639d = d3;
            return;
        }
        int i3 = this.f7637b & 7;
        if (i3 != 1) {
            if (i3 == 2) {
                int m2 = this.f7636a.m();
                b(m2);
                int t2 = this.f7636a.t() + m2;
                do {
                    list.add(Long.valueOf(this.f7636a.h()));
                } while (this.f7636a.t() < t2);
                return;
            }
            throw o91.zzbac();
        }
        do {
            list.add(Long.valueOf(this.f7636a.h()));
            if (this.f7636a.s()) {
                return;
            } else {
                d2 = this.f7636a.d();
            }
        } while (d2 == this.f7637b);
        this.f7639d = d2;
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final void c(List<Boolean> list) {
        int d2;
        int d3;
        if (list instanceof r71) {
            r71 r71Var = (r71) list;
            int i2 = this.f7637b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int t = this.f7636a.t() + this.f7636a.m();
                    do {
                        r71Var.a(this.f7636a.j());
                    } while (this.f7636a.t() < t);
                    d(t);
                    return;
                }
                throw o91.zzbac();
            }
            do {
                r71Var.a(this.f7636a.j());
                if (this.f7636a.s()) {
                    return;
                } else {
                    d3 = this.f7636a.d();
                }
            } while (d3 == this.f7637b);
            this.f7639d = d3;
            return;
        }
        int i3 = this.f7637b & 7;
        if (i3 != 0) {
            if (i3 == 2) {
                int t2 = this.f7636a.t() + this.f7636a.m();
                do {
                    list.add(Boolean.valueOf(this.f7636a.j()));
                } while (this.f7636a.t() < t2);
                d(t2);
                return;
            }
            throw o91.zzbac();
        }
        do {
            list.add(Boolean.valueOf(this.f7636a.j()));
            if (this.f7636a.s()) {
                return;
            } else {
                d2 = this.f7636a.d();
            }
        } while (d2 == this.f7637b);
        this.f7639d = d2;
    }

    @Override // com.google.android.gms.internal.ads.eb1
    public final void d(List<Integer> list) {
        int d2;
        int d3;
        if (list instanceof g91) {
            g91 g91Var = (g91) list;
            int i2 = this.f7637b & 7;
            if (i2 != 2) {
                if (i2 != 5) {
                    throw o91.zzbac();
                }
                do {
                    g91Var.h(this.f7636a.i());
                    if (this.f7636a.s()) {
                        return;
                    } else {
                        d3 = this.f7636a.d();
                    }
                } while (d3 == this.f7637b);
                this.f7639d = d3;
                return;
            }
            int m = this.f7636a.m();
            c(m);
            int t = this.f7636a.t() + m;
            do {
                g91Var.h(this.f7636a.i());
            } while (this.f7636a.t() < t);
            return;
        }
        int i3 = this.f7637b & 7;
        if (i3 != 2) {
            if (i3 != 5) {
                throw o91.zzbac();
            }
            do {
                list.add(Integer.valueOf(this.f7636a.i()));
                if (this.f7636a.s()) {
                    return;
                } else {
                    d2 = this.f7636a.d();
                }
            } while (d2 == this.f7637b);
            this.f7639d = d2;
            return;
        }
        int m2 = this.f7636a.m();
        c(m2);
        int t2 = this.f7636a.t() + m2;
        do {
            list.add(Integer.valueOf(this.f7636a.i()));
        } while (this.f7636a.t() < t2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.eb1
    public final <T> void b(List<T> list, db1<T> db1Var, q81 q81Var) {
        int d2;
        int i2 = this.f7637b;
        if ((i2 & 7) != 2) {
            throw o91.zzbac();
        }
        do {
            list.add(c(db1Var, q81Var));
            if (this.f7636a.s() || this.f7639d != 0) {
                return;
            } else {
                d2 = this.f7636a.d();
            }
        } while (d2 == i2);
        this.f7639d = d2;
    }

    private final void a(List<String> list, boolean z) {
        int d2;
        int d3;
        if ((this.f7637b & 7) == 2) {
            if ((list instanceof v91) && !z) {
                v91 v91Var = (v91) list;
                do {
                    v91Var.a(l());
                    if (this.f7636a.s()) {
                        return;
                    } else {
                        d3 = this.f7636a.d();
                    }
                } while (d3 == this.f7637b);
                this.f7639d = d3;
                return;
            }
            do {
                list.add(z ? j() : d());
                if (this.f7636a.s()) {
                    return;
                } else {
                    d2 = this.f7636a.d();
                }
            } while (d2 == this.f7637b);
            this.f7639d = d2;
            return;
        }
        throw o91.zzbac();
    }

    private static void b(int i2) {
        if ((i2 & 7) != 0) {
            throw o91.zzbad();
        }
    }

    private static void c(int i2) {
        if ((i2 & 3) != 0) {
            throw o91.zzbad();
        }
    }

    private final void d(int i2) {
        if (this.f7636a.t() != i2) {
            throw o91.zzazx();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.eb1
    public final <T> void a(List<T> list, db1<T> db1Var, q81 q81Var) {
        int d2;
        int i2 = this.f7637b;
        if ((i2 & 7) != 3) {
            throw o91.zzbac();
        }
        do {
            list.add(d(db1Var, q81Var));
            if (this.f7636a.s() || this.f7639d != 0) {
                return;
            } else {
                d2 = this.f7636a.d();
            }
        } while (d2 == i2);
        this.f7639d = d2;
    }
}

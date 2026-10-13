package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g3 implements z5 {

    /* renamed from: a, reason: collision with root package name */
    private final f3 f11868a;

    /* renamed from: b, reason: collision with root package name */
    private int f11869b;

    /* renamed from: c, reason: collision with root package name */
    private int f11870c;

    /* renamed from: d, reason: collision with root package name */
    private int f11871d = 0;

    private g3(f3 f3Var) {
        c4.a(f3Var, "input");
        this.f11868a = f3Var;
        this.f11868a.f11851c = this;
    }

    public static g3 a(f3 f3Var) {
        g3 g3Var = f3Var.f11851c;
        return g3Var != null ? g3Var : new g3(f3Var);
    }

    private final <T> T c(y5<T> y5Var, o3 o3Var) {
        int m = this.f11868a.m();
        f3 f3Var = this.f11868a;
        if (f3Var.f11849a < f3Var.f11850b) {
            int d2 = f3Var.d(m);
            T a2 = y5Var.a();
            this.f11868a.f11849a++;
            y5Var.a(a2, this, o3Var);
            y5Var.d(a2);
            this.f11868a.a(0);
            r5.f11849a--;
            this.f11868a.e(d2);
            return a2;
        }
        throw l4.zzuz();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final boolean b() {
        a(0);
        return this.f11868a.j();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final String d() {
        a(2);
        return this.f11868a.c();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final int e() {
        int i2 = this.f11871d;
        if (i2 != 0) {
            this.f11869b = i2;
            this.f11871d = 0;
        } else {
            this.f11869b = this.f11868a.d();
        }
        int i3 = this.f11869b;
        if (i3 == 0 || i3 == this.f11870c) {
            return Integer.MAX_VALUE;
        }
        return i3 >>> 3;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final long f() {
        a(0);
        return this.f11868a.e();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final int g() {
        a(0);
        return this.f11868a.q();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final int getTag() {
        return this.f11869b;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final long h() {
        a(0);
        return this.f11868a.r();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final long i() {
        a(1);
        return this.f11868a.p();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final int j() {
        a(0);
        return this.f11868a.g();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final boolean k() {
        int i2;
        if (this.f11868a.s() || (i2 = this.f11869b) == this.f11870c) {
            return false;
        }
        return this.f11868a.b(i2);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final t2 l() {
        a(2);
        return this.f11868a.l();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final String m() {
        a(2);
        return this.f11868a.k();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void n(List<Float> list) {
        int d2;
        int d3;
        if (list instanceof x3) {
            x3 x3Var = (x3) list;
            int i2 = this.f11869b & 7;
            if (i2 != 2) {
                if (i2 != 5) {
                    throw l4.zzuy();
                }
                do {
                    x3Var.a(this.f11868a.b());
                    if (this.f11868a.s()) {
                        return;
                    } else {
                        d3 = this.f11868a.d();
                    }
                } while (d3 == this.f11869b);
                this.f11871d = d3;
                return;
            }
            int m = this.f11868a.m();
            c(m);
            int t = this.f11868a.t() + m;
            do {
                x3Var.a(this.f11868a.b());
            } while (this.f11868a.t() < t);
            return;
        }
        int i3 = this.f11869b & 7;
        if (i3 != 2) {
            if (i3 != 5) {
                throw l4.zzuy();
            }
            do {
                list.add(Float.valueOf(this.f11868a.b()));
                if (this.f11868a.s()) {
                    return;
                } else {
                    d2 = this.f11868a.d();
                }
            } while (d2 == this.f11869b);
            this.f11871d = d2;
            return;
        }
        int m2 = this.f11868a.m();
        c(m2);
        int t2 = this.f11868a.t() + m2;
        do {
            list.add(Float.valueOf(this.f11868a.b()));
        } while (this.f11868a.t() < t2);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void o(List<Long> list) {
        int d2;
        int d3;
        if (list instanceof z4) {
            z4 z4Var = (z4) list;
            int i2 = this.f11869b & 7;
            if (i2 != 1) {
                if (i2 == 2) {
                    int m = this.f11868a.m();
                    b(m);
                    int t = this.f11868a.t() + m;
                    do {
                        z4Var.h(this.f11868a.h());
                    } while (this.f11868a.t() < t);
                    return;
                }
                throw l4.zzuy();
            }
            do {
                z4Var.h(this.f11868a.h());
                if (this.f11868a.s()) {
                    return;
                } else {
                    d3 = this.f11868a.d();
                }
            } while (d3 == this.f11869b);
            this.f11871d = d3;
            return;
        }
        int i3 = this.f11869b & 7;
        if (i3 != 1) {
            if (i3 == 2) {
                int m2 = this.f11868a.m();
                b(m2);
                int t2 = this.f11868a.t() + m2;
                do {
                    list.add(Long.valueOf(this.f11868a.h()));
                } while (this.f11868a.t() < t2);
                return;
            }
            throw l4.zzuy();
        }
        do {
            list.add(Long.valueOf(this.f11868a.h()));
            if (this.f11868a.s()) {
                return;
            } else {
                d2 = this.f11868a.d();
            }
        } while (d2 == this.f11869b);
        this.f11871d = d2;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void p(List<Integer> list) {
        int d2;
        int d3;
        if (list instanceof d4) {
            d4 d4Var = (d4) list;
            int i2 = this.f11869b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int t = this.f11868a.t() + this.f11868a.m();
                    do {
                        d4Var.b(this.f11868a.g());
                    } while (this.f11868a.t() < t);
                    d(t);
                    return;
                }
                throw l4.zzuy();
            }
            do {
                d4Var.b(this.f11868a.g());
                if (this.f11868a.s()) {
                    return;
                } else {
                    d3 = this.f11868a.d();
                }
            } while (d3 == this.f11869b);
            this.f11871d = d3;
            return;
        }
        int i3 = this.f11869b & 7;
        if (i3 != 0) {
            if (i3 == 2) {
                int t2 = this.f11868a.t() + this.f11868a.m();
                do {
                    list.add(Integer.valueOf(this.f11868a.g()));
                } while (this.f11868a.t() < t2);
                d(t2);
                return;
            }
            throw l4.zzuy();
        }
        do {
            list.add(Integer.valueOf(this.f11868a.g()));
            if (this.f11868a.s()) {
                return;
            } else {
                d2 = this.f11868a.d();
            }
        } while (d2 == this.f11869b);
        this.f11871d = d2;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void q(List<Double> list) {
        int d2;
        int d3;
        if (list instanceof k3) {
            k3 k3Var = (k3) list;
            int i2 = this.f11869b & 7;
            if (i2 != 1) {
                if (i2 == 2) {
                    int m = this.f11868a.m();
                    b(m);
                    int t = this.f11868a.t() + m;
                    do {
                        k3Var.a(this.f11868a.a());
                    } while (this.f11868a.t() < t);
                    return;
                }
                throw l4.zzuy();
            }
            do {
                k3Var.a(this.f11868a.a());
                if (this.f11868a.s()) {
                    return;
                } else {
                    d3 = this.f11868a.d();
                }
            } while (d3 == this.f11869b);
            this.f11871d = d3;
            return;
        }
        int i3 = this.f11869b & 7;
        if (i3 != 1) {
            if (i3 == 2) {
                int m2 = this.f11868a.m();
                b(m2);
                int t2 = this.f11868a.t() + m2;
                do {
                    list.add(Double.valueOf(this.f11868a.a()));
                } while (this.f11868a.t() < t2);
                return;
            }
            throw l4.zzuy();
        }
        do {
            list.add(Double.valueOf(this.f11868a.a()));
            if (this.f11868a.s()) {
                return;
            } else {
                d2 = this.f11868a.d();
            }
        } while (d2 == this.f11869b);
        this.f11871d = d2;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final double readDouble() {
        a(1);
        return this.f11868a.a();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final float readFloat() {
        a(5);
        return this.f11868a.b();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final long zzsk() {
        a(1);
        return this.f11868a.h();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final int zzsl() {
        a(5);
        return this.f11868a.i();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final int zzsq() {
        a(0);
        return this.f11868a.n();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final int zzsr() {
        a(5);
        return this.f11868a.o();
    }

    private final void a(int i2) {
        if ((this.f11869b & 7) != i2) {
            throw l4.zzuy();
        }
    }

    private final <T> T d(y5<T> y5Var, o3 o3Var) {
        int i2 = this.f11870c;
        this.f11870c = ((this.f11869b >>> 3) << 3) | 4;
        try {
            T a2 = y5Var.a();
            y5Var.a(a2, this, o3Var);
            y5Var.d(a2);
            if (this.f11869b == this.f11870c) {
                return a2;
            }
            throw l4.zzva();
        } finally {
            this.f11870c = i2;
        }
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final <T> T b(y5<T> y5Var, o3 o3Var) {
        a(2);
        return (T) c(y5Var, o3Var);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void f(List<Long> list) {
        int d2;
        int d3;
        if (list instanceof z4) {
            z4 z4Var = (z4) list;
            int i2 = this.f11869b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int t = this.f11868a.t() + this.f11868a.m();
                    do {
                        z4Var.h(this.f11868a.r());
                    } while (this.f11868a.t() < t);
                    d(t);
                    return;
                }
                throw l4.zzuy();
            }
            do {
                z4Var.h(this.f11868a.r());
                if (this.f11868a.s()) {
                    return;
                } else {
                    d3 = this.f11868a.d();
                }
            } while (d3 == this.f11869b);
            this.f11871d = d3;
            return;
        }
        int i3 = this.f11869b & 7;
        if (i3 != 0) {
            if (i3 == 2) {
                int t2 = this.f11868a.t() + this.f11868a.m();
                do {
                    list.add(Long.valueOf(this.f11868a.r()));
                } while (this.f11868a.t() < t2);
                d(t2);
                return;
            }
            throw l4.zzuy();
        }
        do {
            list.add(Long.valueOf(this.f11868a.r()));
            if (this.f11868a.s()) {
                return;
            } else {
                d2 = this.f11868a.d();
            }
        } while (d2 == this.f11869b);
        this.f11871d = d2;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void g(List<Integer> list) {
        int d2;
        int d3;
        if (list instanceof d4) {
            d4 d4Var = (d4) list;
            int i2 = this.f11869b & 7;
            if (i2 != 2) {
                if (i2 != 5) {
                    throw l4.zzuy();
                }
                do {
                    d4Var.b(this.f11868a.i());
                    if (this.f11868a.s()) {
                        return;
                    } else {
                        d3 = this.f11868a.d();
                    }
                } while (d3 == this.f11869b);
                this.f11871d = d3;
                return;
            }
            int m = this.f11868a.m();
            c(m);
            int t = this.f11868a.t() + m;
            do {
                d4Var.b(this.f11868a.i());
            } while (this.f11868a.t() < t);
            return;
        }
        int i3 = this.f11869b & 7;
        if (i3 != 2) {
            if (i3 != 5) {
                throw l4.zzuy();
            }
            do {
                list.add(Integer.valueOf(this.f11868a.i()));
                if (this.f11868a.s()) {
                    return;
                } else {
                    d2 = this.f11868a.d();
                }
            } while (d2 == this.f11869b);
            this.f11871d = d2;
            return;
        }
        int m2 = this.f11868a.m();
        c(m2);
        int t2 = this.f11868a.t() + m2;
        do {
            list.add(Integer.valueOf(this.f11868a.i()));
        } while (this.f11868a.t() < t2);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void h(List<Integer> list) {
        int d2;
        int d3;
        if (list instanceof d4) {
            d4 d4Var = (d4) list;
            int i2 = this.f11869b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int t = this.f11868a.t() + this.f11868a.m();
                    do {
                        d4Var.b(this.f11868a.q());
                    } while (this.f11868a.t() < t);
                    d(t);
                    return;
                }
                throw l4.zzuy();
            }
            do {
                d4Var.b(this.f11868a.q());
                if (this.f11868a.s()) {
                    return;
                } else {
                    d3 = this.f11868a.d();
                }
            } while (d3 == this.f11869b);
            this.f11871d = d3;
            return;
        }
        int i3 = this.f11869b & 7;
        if (i3 != 0) {
            if (i3 == 2) {
                int t2 = this.f11868a.t() + this.f11868a.m();
                do {
                    list.add(Integer.valueOf(this.f11868a.q()));
                } while (this.f11868a.t() < t2);
                d(t2);
                return;
            }
            throw l4.zzuy();
        }
        do {
            list.add(Integer.valueOf(this.f11868a.q()));
            if (this.f11868a.s()) {
                return;
            } else {
                d2 = this.f11868a.d();
            }
        } while (d2 == this.f11869b);
        this.f11871d = d2;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void i(List<String> list) {
        a(list, false);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void j(List<t2> list) {
        int d2;
        if ((this.f11869b & 7) != 2) {
            throw l4.zzuy();
        }
        do {
            list.add(l());
            if (this.f11868a.s()) {
                return;
            } else {
                d2 = this.f11868a.d();
            }
        } while (d2 == this.f11869b);
        this.f11871d = d2;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void k(List<String> list) {
        a(list, true);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void l(List<Long> list) {
        int d2;
        int d3;
        if (list instanceof z4) {
            z4 z4Var = (z4) list;
            int i2 = this.f11869b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int t = this.f11868a.t() + this.f11868a.m();
                    do {
                        z4Var.h(this.f11868a.f());
                    } while (this.f11868a.t() < t);
                    d(t);
                    return;
                }
                throw l4.zzuy();
            }
            do {
                z4Var.h(this.f11868a.f());
                if (this.f11868a.s()) {
                    return;
                } else {
                    d3 = this.f11868a.d();
                }
            } while (d3 == this.f11869b);
            this.f11871d = d3;
            return;
        }
        int i3 = this.f11869b & 7;
        if (i3 != 0) {
            if (i3 == 2) {
                int t2 = this.f11868a.t() + this.f11868a.m();
                do {
                    list.add(Long.valueOf(this.f11868a.f()));
                } while (this.f11868a.t() < t2);
                d(t2);
                return;
            }
            throw l4.zzuy();
        }
        do {
            list.add(Long.valueOf(this.f11868a.f()));
            if (this.f11868a.s()) {
                return;
            } else {
                d2 = this.f11868a.d();
            }
        } while (d2 == this.f11869b);
        this.f11871d = d2;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void m(List<Long> list) {
        int d2;
        int d3;
        if (list instanceof z4) {
            z4 z4Var = (z4) list;
            int i2 = this.f11869b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int t = this.f11868a.t() + this.f11868a.m();
                    do {
                        z4Var.h(this.f11868a.e());
                    } while (this.f11868a.t() < t);
                    d(t);
                    return;
                }
                throw l4.zzuy();
            }
            do {
                z4Var.h(this.f11868a.e());
                if (this.f11868a.s()) {
                    return;
                } else {
                    d3 = this.f11868a.d();
                }
            } while (d3 == this.f11869b);
            this.f11871d = d3;
            return;
        }
        int i3 = this.f11869b & 7;
        if (i3 != 0) {
            if (i3 == 2) {
                int t2 = this.f11868a.t() + this.f11868a.m();
                do {
                    list.add(Long.valueOf(this.f11868a.e()));
                } while (this.f11868a.t() < t2);
                d(t2);
                return;
            }
            throw l4.zzuy();
        }
        do {
            list.add(Long.valueOf(this.f11868a.e()));
            if (this.f11868a.s()) {
                return;
            } else {
                d2 = this.f11868a.d();
            }
        } while (d2 == this.f11869b);
        this.f11871d = d2;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final long a() {
        a(0);
        return this.f11868a.f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.z5
    public final <T> void b(List<T> list, y5<T> y5Var, o3 o3Var) {
        int d2;
        int i2 = this.f11869b;
        if ((i2 & 7) != 3) {
            throw l4.zzuy();
        }
        do {
            list.add(d(y5Var, o3Var));
            if (this.f11868a.s() || this.f11871d != 0) {
                return;
            } else {
                d2 = this.f11868a.d();
            }
        } while (d2 == i2);
        this.f11871d = d2;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void e(List<Boolean> list) {
        int d2;
        int d3;
        if (list instanceof r2) {
            r2 r2Var = (r2) list;
            int i2 = this.f11869b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int t = this.f11868a.t() + this.f11868a.m();
                    do {
                        r2Var.a(this.f11868a.j());
                    } while (this.f11868a.t() < t);
                    d(t);
                    return;
                }
                throw l4.zzuy();
            }
            do {
                r2Var.a(this.f11868a.j());
                if (this.f11868a.s()) {
                    return;
                } else {
                    d3 = this.f11868a.d();
                }
            } while (d3 == this.f11869b);
            this.f11871d = d3;
            return;
        }
        int i3 = this.f11869b & 7;
        if (i3 != 0) {
            if (i3 == 2) {
                int t2 = this.f11868a.t() + this.f11868a.m();
                do {
                    list.add(Boolean.valueOf(this.f11868a.j()));
                } while (this.f11868a.t() < t2);
                d(t2);
                return;
            }
            throw l4.zzuy();
        }
        do {
            list.add(Boolean.valueOf(this.f11868a.j()));
            if (this.f11868a.s()) {
                return;
            } else {
                d2 = this.f11868a.d();
            }
        } while (d2 == this.f11869b);
        this.f11871d = d2;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final <T> T a(y5<T> y5Var, o3 o3Var) {
        a(3);
        return (T) d(y5Var, o3Var);
    }

    private final void a(List<String> list, boolean z) {
        int d2;
        int d3;
        if ((this.f11869b & 7) == 2) {
            if ((list instanceof s4) && !z) {
                s4 s4Var = (s4) list;
                do {
                    s4Var.a(l());
                    if (this.f11868a.s()) {
                        return;
                    } else {
                        d3 = this.f11868a.d();
                    }
                } while (d3 == this.f11869b);
                this.f11871d = d3;
                return;
            }
            do {
                list.add(z ? m() : d());
                if (this.f11868a.s()) {
                    return;
                } else {
                    d2 = this.f11868a.d();
                }
            } while (d2 == this.f11869b);
            this.f11871d = d2;
            return;
        }
        throw l4.zzuy();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void b(List<Integer> list) {
        int d2;
        int d3;
        if (list instanceof d4) {
            d4 d4Var = (d4) list;
            int i2 = this.f11869b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int t = this.f11868a.t() + this.f11868a.m();
                    do {
                        d4Var.b(this.f11868a.m());
                    } while (this.f11868a.t() < t);
                    d(t);
                    return;
                }
                throw l4.zzuy();
            }
            do {
                d4Var.b(this.f11868a.m());
                if (this.f11868a.s()) {
                    return;
                } else {
                    d3 = this.f11868a.d();
                }
            } while (d3 == this.f11869b);
            this.f11871d = d3;
            return;
        }
        int i3 = this.f11869b & 7;
        if (i3 != 0) {
            if (i3 == 2) {
                int t2 = this.f11868a.t() + this.f11868a.m();
                do {
                    list.add(Integer.valueOf(this.f11868a.m()));
                } while (this.f11868a.t() < t2);
                d(t2);
                return;
            }
            throw l4.zzuy();
        }
        do {
            list.add(Integer.valueOf(this.f11868a.m()));
            if (this.f11868a.s()) {
                return;
            } else {
                d2 = this.f11868a.d();
            }
        } while (d2 == this.f11869b);
        this.f11871d = d2;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final int c() {
        a(0);
        return this.f11868a.m();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void d(List<Integer> list) {
        int d2;
        int d3;
        if (list instanceof d4) {
            d4 d4Var = (d4) list;
            int i2 = this.f11869b & 7;
            if (i2 != 2) {
                if (i2 != 5) {
                    throw l4.zzuy();
                }
                do {
                    d4Var.b(this.f11868a.o());
                    if (this.f11868a.s()) {
                        return;
                    } else {
                        d3 = this.f11868a.d();
                    }
                } while (d3 == this.f11869b);
                this.f11871d = d3;
                return;
            }
            int m = this.f11868a.m();
            c(m);
            int t = this.f11868a.t() + m;
            do {
                d4Var.b(this.f11868a.o());
            } while (this.f11868a.t() < t);
            return;
        }
        int i3 = this.f11869b & 7;
        if (i3 != 2) {
            if (i3 != 5) {
                throw l4.zzuy();
            }
            do {
                list.add(Integer.valueOf(this.f11868a.o()));
                if (this.f11868a.s()) {
                    return;
                } else {
                    d2 = this.f11868a.d();
                }
            } while (d2 == this.f11869b);
            this.f11871d = d2;
            return;
        }
        int m2 = this.f11868a.m();
        c(m2);
        int t2 = this.f11868a.t() + m2;
        do {
            list.add(Integer.valueOf(this.f11868a.o()));
        } while (this.f11868a.t() < t2);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void c(List<Long> list) {
        int d2;
        int d3;
        if (list instanceof z4) {
            z4 z4Var = (z4) list;
            int i2 = this.f11869b & 7;
            if (i2 != 1) {
                if (i2 == 2) {
                    int m = this.f11868a.m();
                    b(m);
                    int t = this.f11868a.t() + m;
                    do {
                        z4Var.h(this.f11868a.p());
                    } while (this.f11868a.t() < t);
                    return;
                }
                throw l4.zzuy();
            }
            do {
                z4Var.h(this.f11868a.p());
                if (this.f11868a.s()) {
                    return;
                } else {
                    d3 = this.f11868a.d();
                }
            } while (d3 == this.f11869b);
            this.f11871d = d3;
            return;
        }
        int i3 = this.f11869b & 7;
        if (i3 != 1) {
            if (i3 == 2) {
                int m2 = this.f11868a.m();
                b(m2);
                int t2 = this.f11868a.t() + m2;
                do {
                    list.add(Long.valueOf(this.f11868a.p()));
                } while (this.f11868a.t() < t2);
                return;
            }
            throw l4.zzuy();
        }
        do {
            list.add(Long.valueOf(this.f11868a.p()));
            if (this.f11868a.s()) {
                return;
            } else {
                d2 = this.f11868a.d();
            }
        } while (d2 == this.f11869b);
        this.f11871d = d2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.z5
    public final <T> void a(List<T> list, y5<T> y5Var, o3 o3Var) {
        int d2;
        int i2 = this.f11869b;
        if ((i2 & 7) != 2) {
            throw l4.zzuy();
        }
        do {
            list.add(c(y5Var, o3Var));
            if (this.f11868a.s() || this.f11871d != 0) {
                return;
            } else {
                d2 = this.f11868a.d();
            }
        } while (d2 == i2);
        this.f11871d = d2;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void a(List<Integer> list) {
        int d2;
        int d3;
        if (list instanceof d4) {
            d4 d4Var = (d4) list;
            int i2 = this.f11869b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int t = this.f11868a.t() + this.f11868a.m();
                    do {
                        d4Var.b(this.f11868a.n());
                    } while (this.f11868a.t() < t);
                    d(t);
                    return;
                }
                throw l4.zzuy();
            }
            do {
                d4Var.b(this.f11868a.n());
                if (this.f11868a.s()) {
                    return;
                } else {
                    d3 = this.f11868a.d();
                }
            } while (d3 == this.f11869b);
            this.f11871d = d3;
            return;
        }
        int i3 = this.f11869b & 7;
        if (i3 != 0) {
            if (i3 == 2) {
                int t2 = this.f11868a.t() + this.f11868a.m();
                do {
                    list.add(Integer.valueOf(this.f11868a.n()));
                } while (this.f11868a.t() < t2);
                d(t2);
                return;
            }
            throw l4.zzuy();
        }
        do {
            list.add(Integer.valueOf(this.f11868a.n()));
            if (this.f11868a.s()) {
                return;
            } else {
                d2 = this.f11868a.d();
            }
        } while (d2 == this.f11869b);
        this.f11871d = d2;
    }

    private static void b(int i2) {
        if ((i2 & 7) != 0) {
            throw l4.zzva();
        }
    }

    private final void d(int i2) {
        if (this.f11868a.t() != i2) {
            throw l4.zzut();
        }
    }

    private static void c(int i2) {
        if ((i2 & 3) != 0) {
            throw l4.zzva();
        }
    }
}

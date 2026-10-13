package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;
import java.util.List;

/* loaded from: classes.dex */
public final class t0 extends b4<t0, a> implements m5 {
    private static volatile s5<t0> zzuo;
    private static final t0 zzyz = new t0();
    private j4 zzyv = b4.l();
    private j4 zzyw = b4.l();
    private i4<m0> zzyx = b4.m();
    private i4<u0> zzyy = b4.m();

    /* loaded from: classes.dex */
    public static final class a extends b4.a<t0, a> implements m5 {
        private a() {
            super(t0.zzyz);
        }

        public final a a(Iterable<? extends Long> iterable) {
            e();
            ((t0) this.f11762f).a(iterable);
            return this;
        }

        public final a b(Iterable<? extends Long> iterable) {
            e();
            ((t0) this.f11762f).b(iterable);
            return this;
        }

        public final a c(Iterable<? extends m0> iterable) {
            e();
            ((t0) this.f11762f).c(iterable);
            return this;
        }

        public final a d(Iterable<? extends u0> iterable) {
            e();
            ((t0) this.f11762f).d(iterable);
            return this;
        }

        public final a h() {
            e();
            ((t0) this.f11762f).x();
            return this;
        }

        public final a i() {
            e();
            ((t0) this.f11762f).y();
            return this;
        }

        /* synthetic */ a(k0 k0Var) {
            this();
        }

        public final a a(int i2) {
            e();
            ((t0) this.f11762f).d(i2);
            return this;
        }

        public final a b(int i2) {
            e();
            ((t0) this.f11762f).e(i2);
            return this;
        }
    }

    static {
        b4.a((Class<t0>) t0.class, zzyz);
    }

    private t0() {
    }

    private final void A() {
        if (this.zzyy.Q()) {
            return;
        }
        this.zzyy = b4.a(this.zzyy);
    }

    public static a B() {
        return zzyz.h();
    }

    public static t0 C() {
        return zzyz;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Iterable<? extends Long> iterable) {
        if (!this.zzyv.Q()) {
            this.zzyv = b4.a(this.zzyv);
        }
        j2.a(iterable, this.zzyv);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(Iterable<? extends Long> iterable) {
        if (!this.zzyw.Q()) {
            this.zzyw = b4.a(this.zzyw);
        }
        j2.a(iterable, this.zzyw);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(Iterable<? extends m0> iterable) {
        z();
        j2.a(iterable, this.zzyx);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(int i2) {
        z();
        this.zzyx.remove(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e(int i2) {
        A();
        this.zzyy.remove(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x() {
        this.zzyv = b4.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y() {
        this.zzyw = b4.l();
    }

    private final void z() {
        if (this.zzyx.Q()) {
            return;
        }
        this.zzyx = b4.a(this.zzyx);
    }

    public final List<Long> n() {
        return this.zzyv;
    }

    public final int o() {
        return this.zzyv.size();
    }

    public final List<Long> p() {
        return this.zzyw;
    }

    public final int q() {
        return this.zzyw.size();
    }

    public final List<m0> s() {
        return this.zzyx;
    }

    public final int u() {
        return this.zzyx.size();
    }

    public final List<u0> v() {
        return this.zzyy;
    }

    public final int w() {
        return this.zzyy.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(Iterable<? extends u0> iterable) {
        A();
        j2.a(iterable, this.zzyy);
    }

    public final u0 c(int i2) {
        return this.zzyy.get(i2);
    }

    public static t0 a(byte[] bArr, o3 o3Var) {
        return (t0) b4.a(zzyz, bArr, o3Var);
    }

    public final m0 b(int i2) {
        return this.zzyx.get(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.b4
    public final Object a(int i2, Object obj, Object obj2) {
        k0 k0Var = null;
        switch (k0.f11942a[i2 - 1]) {
            case 1:
                return new t0();
            case 2:
                return new a(k0Var);
            case 3:
                return b4.a(zzyz, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zzyv", "zzyw", "zzyx", m0.class, "zzyy", u0.class});
            case 4:
                return zzyz;
            case 5:
                s5<t0> s5Var = zzuo;
                if (s5Var == null) {
                    synchronized (t0.class) {
                        s5Var = zzuo;
                        if (s5Var == null) {
                            s5Var = new b4.c<>(zzyz);
                            zzuo = s5Var;
                        }
                    }
                }
                return s5Var;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}

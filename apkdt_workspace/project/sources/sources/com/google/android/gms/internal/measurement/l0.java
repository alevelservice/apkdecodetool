package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;
import com.google.android.gms.internal.measurement.t0;

/* loaded from: classes.dex */
public final class l0 extends b4<l0, a> implements m5 {
    private static volatile s5<l0> zzuo;
    private static final l0 zzwf = new l0();
    private int zzue;
    private int zzwb;
    private t0 zzwc;
    private t0 zzwd;
    private boolean zzwe;

    /* loaded from: classes.dex */
    public static final class a extends b4.a<l0, a> implements m5 {
        private a() {
            super(l0.zzwf);
        }

        public final a a(int i2) {
            e();
            ((l0) this.f11762f).b(i2);
            return this;
        }

        public final t0 h() {
            return ((l0) this.f11762f).n();
        }

        public final boolean i() {
            return ((l0) this.f11762f).o();
        }

        public final t0 j() {
            return ((l0) this.f11762f).p();
        }

        /* synthetic */ a(k0 k0Var) {
            this();
        }

        public final a a(t0.a aVar) {
            e();
            ((l0) this.f11762f).a(aVar);
            return this;
        }

        public final a a(t0 t0Var) {
            e();
            ((l0) this.f11762f).a(t0Var);
            return this;
        }

        public final a a(boolean z) {
            e();
            ((l0) this.f11762f).a(z);
            return this;
        }
    }

    static {
        b4.a((Class<l0>) l0.class, zzwf);
    }

    private l0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(t0.a aVar) {
        this.zzwc = (t0) aVar.t();
        this.zzue |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2) {
        this.zzue |= 1;
        this.zzwb = i2;
    }

    public static a w() {
        return zzwf.h();
    }

    public final t0 n() {
        t0 t0Var = this.zzwc;
        return t0Var == null ? t0.C() : t0Var;
    }

    public final boolean o() {
        return (this.zzue & 4) != 0;
    }

    public final t0 p() {
        t0 t0Var = this.zzwd;
        return t0Var == null ? t0.C() : t0Var;
    }

    public final boolean q() {
        return (this.zzue & 1) != 0;
    }

    public final int s() {
        return this.zzwb;
    }

    public final boolean u() {
        return (this.zzue & 8) != 0;
    }

    public final boolean v() {
        return this.zzwe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(t0 t0Var) {
        if (t0Var != null) {
            this.zzwd = t0Var;
            this.zzue |= 4;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(boolean z) {
        this.zzue |= 8;
        this.zzwe = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.b4
    public final Object a(int i2, Object obj, Object obj2) {
        k0 k0Var = null;
        switch (k0.f11942a[i2 - 1]) {
            case 1:
                return new l0();
            case 2:
                return new a(k0Var);
            case 3:
                return b4.a(zzwf, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0004\u0000\u0002\t\u0001\u0003\t\u0002\u0004\u0007\u0003", new Object[]{"zzue", "zzwb", "zzwc", "zzwd", "zzwe"});
            case 4:
                return zzwf;
            case 5:
                s5<l0> s5Var = zzuo;
                if (s5Var == null) {
                    synchronized (l0.class) {
                        s5Var = zzuo;
                        if (s5Var == null) {
                            s5Var = new b4.c<>(zzwf);
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

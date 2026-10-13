package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;

/* loaded from: classes.dex */
public final class p0 extends b4<p0, a> implements m5 {
    private static volatile s5<p0> zzuo;
    private static final p0 zzwu = new p0();
    private int zzue;
    private long zzwp;
    private float zzws;
    private double zzwt;
    private String zzwk = "";
    private String zzwr = "";

    /* loaded from: classes.dex */
    public static final class a extends b4.a<p0, a> implements m5 {
        private a() {
            super(p0.zzwu);
        }

        public final a a(String str) {
            e();
            ((p0) this.f11762f).a(str);
            return this;
        }

        public final a b(String str) {
            e();
            ((p0) this.f11762f).b(str);
            return this;
        }

        public final a h() {
            e();
            ((p0) this.f11762f).w();
            return this;
        }

        public final a i() {
            e();
            ((p0) this.f11762f).x();
            return this;
        }

        public final a j() {
            e();
            ((p0) this.f11762f).y();
            return this;
        }

        /* synthetic */ a(k0 k0Var) {
            this();
        }

        public final a a(long j2) {
            e();
            ((p0) this.f11762f).a(j2);
            return this;
        }

        public final a a(double d2) {
            e();
            ((p0) this.f11762f).a(d2);
            return this;
        }
    }

    static {
        b4.a((Class<p0>) p0.class, zzwu);
    }

    private p0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str != null) {
            this.zzue |= 1;
            this.zzwk = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(String str) {
        if (str != null) {
            this.zzue |= 2;
            this.zzwr = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w() {
        this.zzue &= -3;
        this.zzwr = zzwu.zzwr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x() {
        this.zzue &= -5;
        this.zzwp = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y() {
        this.zzue &= -17;
        this.zzwt = 0.0d;
    }

    public static a z() {
        return zzwu.h();
    }

    public final String n() {
        return this.zzwk;
    }

    public final boolean o() {
        return (this.zzue & 2) != 0;
    }

    public final String p() {
        return this.zzwr;
    }

    public final boolean q() {
        return (this.zzue & 4) != 0;
    }

    public final long s() {
        return this.zzwp;
    }

    public final boolean u() {
        return (this.zzue & 16) != 0;
    }

    public final double v() {
        return this.zzwt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(long j2) {
        this.zzue |= 4;
        this.zzwp = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(double d2) {
        this.zzue |= 16;
        this.zzwt = d2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.b4
    public final Object a(int i2, Object obj, Object obj2) {
        k0 k0Var = null;
        switch (k0.f11942a[i2 - 1]) {
            case 1:
                return new p0();
            case 2:
                return new a(k0Var);
            case 3:
                return b4.a(zzwu, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\b\u0000\u0002\b\u0001\u0003\u0002\u0002\u0004\u0001\u0003\u0005\u0000\u0004", new Object[]{"zzue", "zzwk", "zzwr", "zzwp", "zzws", "zzwt"});
            case 4:
                return zzwu;
            case 5:
                s5<p0> s5Var = zzuo;
                if (s5Var == null) {
                    synchronized (p0.class) {
                        s5Var = zzuo;
                        if (s5Var == null) {
                            s5Var = new b4.c<>(zzwu);
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

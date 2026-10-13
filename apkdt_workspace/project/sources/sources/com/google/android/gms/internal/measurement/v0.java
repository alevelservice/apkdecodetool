package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;

/* loaded from: classes.dex */
public final class v0 extends b4<v0, a> implements m5 {
    private static volatile s5<v0> zzuo;
    private static final v0 zzzd = new v0();
    private int zzue;
    private long zzwp;
    private float zzws;
    private double zzwt;
    private long zzzc;
    private String zzwk = "";
    private String zzwr = "";

    /* loaded from: classes.dex */
    public static final class a extends b4.a<v0, a> implements m5 {
        private a() {
            super(v0.zzzd);
        }

        public final a a(long j2) {
            e();
            ((v0) this.f11762f).b(j2);
            return this;
        }

        public final a b(String str) {
            e();
            ((v0) this.f11762f).b(str);
            return this;
        }

        public final a h() {
            e();
            ((v0) this.f11762f).y();
            return this;
        }

        public final a i() {
            e();
            ((v0) this.f11762f).z();
            return this;
        }

        public final a j() {
            e();
            ((v0) this.f11762f).A();
            return this;
        }

        /* synthetic */ a(k0 k0Var) {
            this();
        }

        public final a a(String str) {
            e();
            ((v0) this.f11762f).a(str);
            return this;
        }

        public final a b(long j2) {
            e();
            ((v0) this.f11762f).a(j2);
            return this;
        }

        public final a a(double d2) {
            e();
            ((v0) this.f11762f).a(d2);
            return this;
        }
    }

    static {
        b4.a((Class<v0>) v0.class, zzzd);
    }

    private v0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A() {
        this.zzue &= -33;
        this.zzwt = 0.0d;
    }

    public static a B() {
        return zzzd.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str != null) {
            this.zzue |= 2;
            this.zzwk = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(long j2) {
        this.zzue |= 1;
        this.zzzc = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y() {
        this.zzue &= -5;
        this.zzwr = zzzd.zzwr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z() {
        this.zzue &= -9;
        this.zzwp = 0L;
    }

    public final String n() {
        return this.zzwk;
    }

    public final boolean o() {
        return (this.zzue & 4) != 0;
    }

    public final String p() {
        return this.zzwr;
    }

    public final boolean q() {
        return (this.zzue & 8) != 0;
    }

    public final long s() {
        return this.zzwp;
    }

    public final boolean u() {
        return (this.zzue & 32) != 0;
    }

    public final double v() {
        return this.zzwt;
    }

    public final boolean w() {
        return (this.zzue & 1) != 0;
    }

    public final long x() {
        return this.zzzc;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(String str) {
        if (str != null) {
            this.zzue |= 4;
            this.zzwr = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(long j2) {
        this.zzue |= 8;
        this.zzwp = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(double d2) {
        this.zzue |= 32;
        this.zzwt = d2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.b4
    public final Object a(int i2, Object obj, Object obj2) {
        k0 k0Var = null;
        switch (k0.f11942a[i2 - 1]) {
            case 1:
                return new v0();
            case 2:
                return new a(k0Var);
            case 3:
                return b4.a(zzzd, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0002\u0000\u0002\b\u0001\u0003\b\u0002\u0004\u0002\u0003\u0005\u0001\u0004\u0006\u0000\u0005", new Object[]{"zzue", "zzzc", "zzwk", "zzwr", "zzwp", "zzws", "zzwt"});
            case 4:
                return zzzd;
            case 5:
                s5<v0> s5Var = zzuo;
                if (s5Var == null) {
                    synchronized (v0.class) {
                        s5Var = zzuo;
                        if (s5Var == null) {
                            s5Var = new b4.c<>(zzzd);
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

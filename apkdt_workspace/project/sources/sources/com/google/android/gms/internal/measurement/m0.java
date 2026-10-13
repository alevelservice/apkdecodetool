package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;

/* loaded from: classes.dex */
public final class m0 extends b4<m0, a> implements m5 {
    private static volatile s5<m0> zzuo;
    private static final m0 zzwi = new m0();
    private int zzue;
    private int zzwg;
    private long zzwh;

    /* loaded from: classes.dex */
    public static final class a extends b4.a<m0, a> implements m5 {
        private a() {
            super(m0.zzwi);
        }

        public final a a(int i2) {
            e();
            ((m0) this.f11762f).b(i2);
            return this;
        }

        /* synthetic */ a(k0 k0Var) {
            this();
        }

        public final a a(long j2) {
            e();
            ((m0) this.f11762f).a(j2);
            return this;
        }
    }

    static {
        b4.a((Class<m0>) m0.class, zzwi);
    }

    private m0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(long j2) {
        this.zzue |= 2;
        this.zzwh = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2) {
        this.zzue |= 1;
        this.zzwg = i2;
    }

    public static a s() {
        return zzwi.h();
    }

    public final int n() {
        return this.zzwg;
    }

    public final boolean o() {
        return (this.zzue & 1) != 0;
    }

    public final boolean p() {
        return (this.zzue & 2) != 0;
    }

    public final long q() {
        return this.zzwh;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.b4
    public final Object a(int i2, Object obj, Object obj2) {
        k0 k0Var = null;
        switch (k0.f11942a[i2 - 1]) {
            case 1:
                return new m0();
            case 2:
                return new a(k0Var);
            case 3:
                return b4.a(zzwi, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0002\u0001", new Object[]{"zzue", "zzwg", "zzwh"});
            case 4:
                return zzwi;
            case 5:
                s5<m0> s5Var = zzuo;
                if (s5Var == null) {
                    synchronized (m0.class) {
                        s5Var = zzuo;
                        if (s5Var == null) {
                            s5Var = new b4.c<>(zzwi);
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

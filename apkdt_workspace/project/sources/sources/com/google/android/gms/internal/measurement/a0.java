package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;

/* loaded from: classes.dex */
public final class a0 extends b4<a0, a> implements m5 {
    private static volatile s5<a0> zzuo;
    private static final a0 zzut = new a0();
    private int zzue;
    private d0 zzup;
    private b0 zzuq;
    private boolean zzur;
    private String zzus = "";

    /* loaded from: classes.dex */
    public static final class a extends b4.a<a0, a> implements m5 {
        private a() {
            super(a0.zzut);
        }

        public final a a(String str) {
            e();
            ((a0) this.f11762f).a(str);
            return this;
        }

        /* synthetic */ a(y yVar) {
            this();
        }
    }

    static {
        b4.a((Class<a0>) a0.class, zzut);
    }

    private a0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str != null) {
            this.zzue |= 8;
            this.zzus = str;
            return;
        }
        throw new NullPointerException();
    }

    public static a0 w() {
        return zzut;
    }

    public final boolean n() {
        return (this.zzue & 1) != 0;
    }

    public final d0 o() {
        d0 d0Var = this.zzup;
        return d0Var == null ? d0.x() : d0Var;
    }

    public final boolean p() {
        return (this.zzue & 2) != 0;
    }

    public final b0 q() {
        b0 b0Var = this.zzuq;
        return b0Var == null ? b0.z() : b0Var;
    }

    public final boolean s() {
        return (this.zzue & 4) != 0;
    }

    public final boolean u() {
        return this.zzur;
    }

    public final String v() {
        return this.zzus;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.b4
    public final Object a(int i2, Object obj, Object obj2) {
        y yVar = null;
        switch (y.f12209a[i2 - 1]) {
            case 1:
                return new a0();
            case 2:
                return new a(yVar);
            case 3:
                return b4.a(zzut, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\u0007\u0002\u0004\b\u0003", new Object[]{"zzue", "zzup", "zzuq", "zzur", "zzus"});
            case 4:
                return zzut;
            case 5:
                s5<a0> s5Var = zzuo;
                if (s5Var == null) {
                    synchronized (a0.class) {
                        s5Var = zzuo;
                        if (s5Var == null) {
                            s5Var = new b4.c<>(zzut);
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

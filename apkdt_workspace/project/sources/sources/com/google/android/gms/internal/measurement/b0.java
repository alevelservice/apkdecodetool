package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;

/* loaded from: classes.dex */
public final class b0 extends b4<b0, a> implements m5 {
    private static volatile s5<b0> zzuo;
    private static final b0 zzuz = new b0();
    private int zzue;
    private int zzuu;
    private boolean zzuv;
    private String zzuw = "";
    private String zzux = "";
    private String zzuy = "";

    /* loaded from: classes.dex */
    public static final class a extends b4.a<b0, a> implements m5 {
        private a() {
            super(b0.zzuz);
        }

        /* synthetic */ a(y yVar) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public enum b implements f4 {
        UNKNOWN_COMPARISON_TYPE(0),
        LESS_THAN(1),
        GREATER_THAN(2),
        EQUAL(3),
        BETWEEN(4);

        private final int value;

        static {
            new e0();
        }

        b(int i2) {
            this.value = i2;
        }

        public static b zzf(int i2) {
            if (i2 == 0) {
                return UNKNOWN_COMPARISON_TYPE;
            }
            if (i2 == 1) {
                return LESS_THAN;
            }
            if (i2 == 2) {
                return GREATER_THAN;
            }
            if (i2 == 3) {
                return EQUAL;
            }
            if (i2 != 4) {
                return null;
            }
            return BETWEEN;
        }

        public static h4 zzlh() {
            return f0.f11847a;
        }

        @Override // com.google.android.gms.internal.measurement.f4
        public final int zzlg() {
            return this.value;
        }
    }

    static {
        b4.a((Class<b0>) b0.class, zzuz);
    }

    private b0() {
    }

    public static b0 z() {
        return zzuz;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.b4
    public final Object a(int i2, Object obj, Object obj2) {
        y yVar = null;
        switch (y.f12209a[i2 - 1]) {
            case 1:
                return new b0();
            case 2:
                return new a(yVar);
            case 3:
                return b4.a(zzuz, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\f\u0000\u0002\u0007\u0001\u0003\b\u0002\u0004\b\u0003\u0005\b\u0004", new Object[]{"zzue", "zzuu", b.zzlh(), "zzuv", "zzuw", "zzux", "zzuy"});
            case 4:
                return zzuz;
            case 5:
                s5<b0> s5Var = zzuo;
                if (s5Var == null) {
                    synchronized (b0.class) {
                        s5Var = zzuo;
                        if (s5Var == null) {
                            s5Var = new b4.c<>(zzuz);
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

    public final boolean n() {
        return (this.zzue & 1) != 0;
    }

    public final b o() {
        b zzf = b.zzf(this.zzuu);
        return zzf == null ? b.UNKNOWN_COMPARISON_TYPE : zzf;
    }

    public final boolean p() {
        return (this.zzue & 2) != 0;
    }

    public final boolean q() {
        return this.zzuv;
    }

    public final boolean s() {
        return (this.zzue & 4) != 0;
    }

    public final String u() {
        return this.zzuw;
    }

    public final boolean v() {
        return (this.zzue & 8) != 0;
    }

    public final String w() {
        return this.zzux;
    }

    public final boolean x() {
        return (this.zzue & 16) != 0;
    }

    public final String y() {
        return this.zzuy;
    }
}

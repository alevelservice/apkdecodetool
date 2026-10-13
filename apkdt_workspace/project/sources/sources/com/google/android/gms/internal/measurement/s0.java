package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;

/* loaded from: classes.dex */
public final class s0 extends b4<s0, a> implements m5 {
    private static volatile s5<s0> zzuo;
    private static final s0 zzyr = new s0();
    private int zzue;
    private int zzyp = 1;
    private i4<o0> zzyq = b4.m();

    /* loaded from: classes.dex */
    public static final class a extends b4.a<s0, a> implements m5 {
        private a() {
            super(s0.zzyr);
        }

        /* synthetic */ a(k0 k0Var) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public enum b implements f4 {
        RADS(1),
        PROVISIONING(2);

        private final int value;

        static {
            new w0();
        }

        b(int i2) {
            this.value = i2;
        }

        public static b zzad(int i2) {
            if (i2 == 1) {
                return RADS;
            }
            if (i2 != 2) {
                return null;
            }
            return PROVISIONING;
        }

        public static h4 zzlh() {
            return x0.f12186a;
        }

        @Override // com.google.android.gms.internal.measurement.f4
        public final int zzlg() {
            return this.value;
        }
    }

    static {
        b4.a((Class<s0>) s0.class, zzyr);
    }

    private s0() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.b4
    public final Object a(int i2, Object obj, Object obj2) {
        k0 k0Var = null;
        switch (k0.f11942a[i2 - 1]) {
            case 1:
                return new s0();
            case 2:
                return new a(k0Var);
            case 3:
                return b4.a(zzyr, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\f\u0000\u0002\u001b", new Object[]{"zzue", "zzyp", b.zzlh(), "zzyq", o0.class});
            case 4:
                return zzyr;
            case 5:
                s5<s0> s5Var = zzuo;
                if (s5Var == null) {
                    synchronized (s0.class) {
                        s5Var = zzuo;
                        if (s5Var == null) {
                            s5Var = new b4.c<>(zzyr);
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

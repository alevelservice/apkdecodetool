package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;

/* loaded from: classes.dex */
public final class o0 extends b4<o0, a> implements m5 {
    private static volatile s5<o0> zzuo;
    private static final o0 zzwq = new o0();
    private int zzue;
    private String zzwk = "";
    private long zzwp;

    /* loaded from: classes.dex */
    public static final class a extends b4.a<o0, a> implements m5 {
        private a() {
            super(o0.zzwq);
        }

        /* synthetic */ a(k0 k0Var) {
            this();
        }
    }

    static {
        b4.a((Class<o0>) o0.class, zzwq);
    }

    private o0() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.b4
    public final Object a(int i2, Object obj, Object obj2) {
        k0 k0Var = null;
        switch (k0.f11942a[i2 - 1]) {
            case 1:
                return new o0();
            case 2:
                return new a(k0Var);
            case 3:
                return b4.a(zzwq, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\b\u0000\u0002\u0002\u0001", new Object[]{"zzue", "zzwk", "zzwp"});
            case 4:
                return zzwq;
            case 5:
                s5<o0> s5Var = zzuo;
                if (s5Var == null) {
                    synchronized (o0.class) {
                        s5Var = zzuo;
                        if (s5Var == null) {
                            s5Var = new b4.c<>(zzwq);
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

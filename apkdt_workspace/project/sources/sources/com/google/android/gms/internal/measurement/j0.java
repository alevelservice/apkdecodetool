package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;

/* loaded from: classes.dex */
public final class j0 extends b4<j0, a> implements m5 {
    private static volatile s5<j0> zzuo;
    private static final j0 zzwa = new j0();
    private int zzue;
    private String zzvy = "";
    private String zzvz = "";

    /* loaded from: classes.dex */
    public static final class a extends b4.a<j0, a> implements m5 {
        private a() {
            super(j0.zzwa);
        }

        /* synthetic */ a(i0 i0Var) {
            this();
        }
    }

    static {
        b4.a((Class<j0>) j0.class, zzwa);
    }

    private j0() {
    }

    public static s5<j0> p() {
        return (s5) zzwa.a(b4.d.f11771g, (Object) null, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.b4
    public final Object a(int i2, Object obj, Object obj2) {
        i0 i0Var = null;
        switch (i0.f11899a[i2 - 1]) {
            case 1:
                return new j0();
            case 2:
                return new a(i0Var);
            case 3:
                return b4.a(zzwa, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\b\u0000\u0002\b\u0001", new Object[]{"zzue", "zzvy", "zzvz"});
            case 4:
                return zzwa;
            case 5:
                s5<j0> s5Var = zzuo;
                if (s5Var == null) {
                    synchronized (j0.class) {
                        s5Var = zzuo;
                        if (s5Var == null) {
                            s5Var = new b4.c<>(zzwa);
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

    public final String n() {
        return this.zzvy;
    }

    public final String o() {
        return this.zzvz;
    }
}

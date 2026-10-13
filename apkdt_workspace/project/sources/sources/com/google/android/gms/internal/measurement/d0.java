package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;
import java.util.List;

/* loaded from: classes.dex */
public final class d0 extends b4<d0, b> implements m5 {
    private static volatile s5<d0> zzuo;
    private static final d0 zzvp = new d0();
    private int zzue;
    private int zzvl;
    private boolean zzvn;
    private String zzvm = "";
    private i4<String> zzvo = b4.m();

    /* loaded from: classes.dex */
    public enum a implements f4 {
        UNKNOWN_MATCH_TYPE(0),
        REGEXP(1),
        BEGINS_WITH(2),
        ENDS_WITH(3),
        PARTIAL(4),
        EXACT(5),
        IN_LIST(6);

        private final int value;

        static {
            new h0();
        }

        a(int i2) {
            this.value = i2;
        }

        public static a zzh(int i2) {
            switch (i2) {
                case 0:
                    return UNKNOWN_MATCH_TYPE;
                case 1:
                    return REGEXP;
                case 2:
                    return BEGINS_WITH;
                case 3:
                    return ENDS_WITH;
                case 4:
                    return PARTIAL;
                case 5:
                    return EXACT;
                case 6:
                    return IN_LIST;
                default:
                    return null;
            }
        }

        public static h4 zzlh() {
            return g0.f11863a;
        }

        @Override // com.google.android.gms.internal.measurement.f4
        public final int zzlg() {
            return this.value;
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends b4.a<d0, b> implements m5 {
        private b() {
            super(d0.zzvp);
        }

        /* synthetic */ b(y yVar) {
            this();
        }
    }

    static {
        b4.a((Class<d0>) d0.class, zzvp);
    }

    private d0() {
    }

    public static d0 x() {
        return zzvp;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.b4
    public final Object a(int i2, Object obj, Object obj2) {
        y yVar = null;
        switch (y.f12209a[i2 - 1]) {
            case 1:
                return new d0();
            case 2:
                return new b(yVar);
            case 3:
                return b4.a(zzvp, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\f\u0000\u0002\b\u0001\u0003\u0007\u0002\u0004\u001a", new Object[]{"zzue", "zzvl", a.zzlh(), "zzvm", "zzvn", "zzvo"});
            case 4:
                return zzvp;
            case 5:
                s5<d0> s5Var = zzuo;
                if (s5Var == null) {
                    synchronized (d0.class) {
                        s5Var = zzuo;
                        if (s5Var == null) {
                            s5Var = new b4.c<>(zzvp);
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

    public final a o() {
        a zzh = a.zzh(this.zzvl);
        return zzh == null ? a.UNKNOWN_MATCH_TYPE : zzh;
    }

    public final boolean p() {
        return (this.zzue & 2) != 0;
    }

    public final String q() {
        return this.zzvm;
    }

    public final boolean s() {
        return (this.zzue & 4) != 0;
    }

    public final boolean u() {
        return this.zzvn;
    }

    public final List<String> v() {
        return this.zzvo;
    }

    public final int w() {
        return this.zzvo.size();
    }
}

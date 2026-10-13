package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class v1 extends s4<v1, b> implements f6 {
    private static volatile l6<v1> zzbd;
    private static final v1 zznd;
    private int zzbf;
    private boolean zzmw;
    private int zzmx;
    private long zzmy;
    private long zzmz;
    private long zzna;
    private boolean zznc;
    private String zzmv = "";
    private String zznb = "";

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public enum a implements w4 {
        REASON_UNKNOWN(0),
        REASON_MISSING(1),
        REASON_UPGRADE(2),
        REASON_INVALID(3);

        private final int value;

        static {
            new i2();
        }

        a(int i2) {
            this.value = i2;
        }

        public static y4 zzah() {
            return h2.f12371a;
        }

        public static a zzs(int i2) {
            if (i2 == 0) {
                return REASON_UNKNOWN;
            }
            if (i2 == 1) {
                return REASON_MISSING;
            }
            if (i2 == 2) {
                return REASON_UPGRADE;
            }
            if (i2 != 3) {
                return null;
            }
            return REASON_INVALID;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.vision.w4
        public final int zzag() {
            return this.value;
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static final class b extends s4.a<v1, b> implements f6 {
        private b() {
            super(v1.zznd);
        }

        /* synthetic */ b(p1 p1Var) {
            this();
        }
    }

    static {
        v1 v1Var = new v1();
        zznd = v1Var;
        s4.a((Class<v1>) v1.class, v1Var);
    }

    private v1() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.vision.l6<com.google.android.gms.internal.vision.v1>, com.google.android.gms.internal.vision.s4$b] */
    @Override // com.google.android.gms.internal.vision.s4
    public final Object a(int i2, Object obj, Object obj2) {
        l6<v1> l6Var;
        p1 p1Var = null;
        switch (p1.f12475a[i2 - 1]) {
            case 1:
                return new v1();
            case 2:
                return new b(p1Var);
            case 3:
                return s4.a(zznd, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001\b\u0000\u0002\u0007\u0001\u0003\f\u0002\u0004\u0002\u0003\u0005\u0002\u0004\u0006\u0002\u0005\u0007\b\u0006\b\u0007\u0007", new Object[]{"zzbf", "zzmv", "zzmw", "zzmx", a.zzah(), "zzmy", "zzmz", "zzna", "zznb", "zznc"});
            case 4:
                return zznd;
            case 5:
                l6<v1> l6Var2 = zzbd;
                l6<v1> l6Var3 = l6Var2;
                if (l6Var2 == null) {
                    synchronized (v1.class) {
                        l6<v1> l6Var4 = zzbd;
                        l6Var = l6Var4;
                        if (l6Var4 == null) {
                            ?? bVar = new s4.b(zznd);
                            zzbd = bVar;
                            l6Var = bVar;
                        }
                    }
                    l6Var3 = l6Var;
                }
                return l6Var3;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}

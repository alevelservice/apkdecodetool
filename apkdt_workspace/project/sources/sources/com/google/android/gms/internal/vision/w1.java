package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class w1 extends s4<w1, a> implements f6 {
    private static volatile l6<w1> zzbd;
    private static final w1 zznr;
    private int zzbf;
    private int zznm;
    private long zzno;
    private long zznp;
    private String zznj = "";
    private String zznk = "";
    private z4<String> zznl = s4.l();
    private String zznn = "";
    private z4<e2> zznq = s4.l();

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static final class a extends s4.a<w1, a> implements f6 {
        private a() {
            super(w1.zznr);
        }

        /* synthetic */ a(p1 p1Var) {
            this();
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public enum b implements w4 {
        RESULT_UNKNOWN(0),
        RESULT_SUCCESS(1),
        RESULT_FAIL(2),
        RESULT_SKIPPED(3);

        private final int value;

        static {
            new j2();
        }

        b(int i2) {
            this.value = i2;
        }

        public static y4 zzah() {
            return k2.f12414a;
        }

        public static b zzt(int i2) {
            if (i2 == 0) {
                return RESULT_UNKNOWN;
            }
            if (i2 == 1) {
                return RESULT_SUCCESS;
            }
            if (i2 == 2) {
                return RESULT_FAIL;
            }
            if (i2 != 3) {
                return null;
            }
            return RESULT_SKIPPED;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + b.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.vision.w4
        public final int zzag() {
            return this.value;
        }
    }

    static {
        w1 w1Var = new w1();
        zznr = w1Var;
        s4.a((Class<w1>) w1.class, w1Var);
    }

    private w1() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.vision.l6<com.google.android.gms.internal.vision.w1>, com.google.android.gms.internal.vision.s4$b] */
    @Override // com.google.android.gms.internal.vision.s4
    public final Object a(int i2, Object obj, Object obj2) {
        l6<w1> l6Var;
        p1 p1Var = null;
        switch (p1.f12475a[i2 - 1]) {
            case 1:
                return new w1();
            case 2:
                return new a(p1Var);
            case 3:
                return s4.a(zznr, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0002\u0000\u0001\b\u0000\u0002\b\u0001\u0003\u001a\u0004\f\u0002\u0005\b\u0003\u0006\u0002\u0004\u0007\u0002\u0005\b\u001b", new Object[]{"zzbf", "zznj", "zznk", "zznl", "zznm", b.zzah(), "zznn", "zzno", "zznp", "zznq", e2.class});
            case 4:
                return zznr;
            case 5:
                l6<w1> l6Var2 = zzbd;
                l6<w1> l6Var3 = l6Var2;
                if (l6Var2 == null) {
                    synchronized (w1.class) {
                        l6<w1> l6Var4 = zzbd;
                        l6Var = l6Var4;
                        if (l6Var4 == null) {
                            ?? bVar = new s4.b(zznr);
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

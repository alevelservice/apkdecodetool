package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class x1 extends s4<x1, b> implements f6 {
    private static volatile l6<x1> zzbd;
    private static final x1 zzob;
    private int zzbf;
    private float zzjw;
    private boolean zzka;
    private int zznx;
    private int zzny;
    private int zznz;
    private boolean zzoa;

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public enum a implements w4 {
        CLASSIFICATION_UNKNOWN(0),
        CLASSIFICATION_NONE(1),
        CLASSIFICATION_ALL(2);

        private final int value;

        static {
            new m2();
        }

        a(int i2) {
            this.value = i2;
        }

        public static y4 zzah() {
            return l2.f12416a;
        }

        public static a zzu(int i2) {
            if (i2 == 0) {
                return CLASSIFICATION_UNKNOWN;
            }
            if (i2 == 1) {
                return CLASSIFICATION_NONE;
            }
            if (i2 != 2) {
                return null;
            }
            return CLASSIFICATION_ALL;
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
    public static final class b extends s4.a<x1, b> implements f6 {
        private b() {
            super(x1.zzob);
        }

        /* synthetic */ b(p1 p1Var) {
            this();
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public enum c implements w4 {
        LANDMARK_UNKNOWN(0),
        LANDMARK_NONE(1),
        LANDMARK_ALL(2),
        LANDMARK_CONTOUR(3);

        private final int value;

        static {
            new n2();
        }

        c(int i2) {
            this.value = i2;
        }

        public static y4 zzah() {
            return o2.f12458a;
        }

        public static c zzv(int i2) {
            if (i2 == 0) {
                return LANDMARK_UNKNOWN;
            }
            if (i2 == 1) {
                return LANDMARK_NONE;
            }
            if (i2 == 2) {
                return LANDMARK_ALL;
            }
            if (i2 != 3) {
                return null;
            }
            return LANDMARK_CONTOUR;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + c.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.vision.w4
        public final int zzag() {
            return this.value;
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public enum d implements w4 {
        MODE_UNKNOWN(0),
        MODE_ACCURATE(1),
        MODE_FAST(2),
        MODE_SELFIE(3);

        private final int value;

        static {
            new q2();
        }

        d(int i2) {
            this.value = i2;
        }

        public static y4 zzah() {
            return p2.f12476a;
        }

        public static d zzw(int i2) {
            if (i2 == 0) {
                return MODE_UNKNOWN;
            }
            if (i2 == 1) {
                return MODE_ACCURATE;
            }
            if (i2 == 2) {
                return MODE_FAST;
            }
            if (i2 != 3) {
                return null;
            }
            return MODE_SELFIE;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + d.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.vision.w4
        public final int zzag() {
            return this.value;
        }
    }

    static {
        x1 x1Var = new x1();
        zzob = x1Var;
        s4.a((Class<x1>) x1.class, x1Var);
    }

    private x1() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.vision.l6<com.google.android.gms.internal.vision.x1>, com.google.android.gms.internal.vision.s4$b] */
    @Override // com.google.android.gms.internal.vision.s4
    public final Object a(int i2, Object obj, Object obj2) {
        l6<x1> l6Var;
        p1 p1Var = null;
        switch (p1.f12475a[i2 - 1]) {
            case 1:
                return new x1();
            case 2:
                return new b(p1Var);
            case 3:
                return s4.a(zzob, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\f\u0000\u0002\f\u0001\u0003\f\u0002\u0004\u0007\u0003\u0005\u0007\u0004\u0006\u0001\u0005", new Object[]{"zzbf", "zznx", d.zzah(), "zzny", c.zzah(), "zznz", a.zzah(), "zzka", "zzoa", "zzjw"});
            case 4:
                return zzob;
            case 5:
                l6<x1> l6Var2 = zzbd;
                l6<x1> l6Var3 = l6Var2;
                if (l6Var2 == null) {
                    synchronized (x1.class) {
                        l6<x1> l6Var4 = zzbd;
                        l6Var = l6Var4;
                        if (l6Var4 == null) {
                            ?? bVar = new s4.b(zzob);
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

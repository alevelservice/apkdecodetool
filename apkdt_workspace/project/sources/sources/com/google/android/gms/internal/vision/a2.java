package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class a2 extends s4<a2, a> implements f6 {
    private static volatile l6<a2> zzbd;
    private static final a2 zzpf;
    private int zzbf;
    private int zzmp;
    private long zzpb;
    private long zzpc;
    private long zzpd;
    private long zzpe;

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static final class a extends s4.a<a2, a> implements f6 {
        private a() {
            super(a2.zzpf);
        }

        /* synthetic */ a(p1 p1Var) {
            this();
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public enum b implements w4 {
        FORMAT_UNKNOWN(0),
        FORMAT_LUMINANCE(1),
        FORMAT_RGB8(2),
        FORMAT_MONOCHROME(3);

        private final int value;

        static {
            new r2();
        }

        b(int i2) {
            this.value = i2;
        }

        public static y4 zzah() {
            return s2.f12502a;
        }

        public static b zzx(int i2) {
            if (i2 == 0) {
                return FORMAT_UNKNOWN;
            }
            if (i2 == 1) {
                return FORMAT_LUMINANCE;
            }
            if (i2 == 2) {
                return FORMAT_RGB8;
            }
            if (i2 != 3) {
                return null;
            }
            return FORMAT_MONOCHROME;
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
        a2 a2Var = new a2();
        zzpf = a2Var;
        s4.a((Class<a2>) a2.class, a2Var);
    }

    private a2() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.vision.s4$b, com.google.android.gms.internal.vision.l6<com.google.android.gms.internal.vision.a2>] */
    @Override // com.google.android.gms.internal.vision.s4
    public final Object a(int i2, Object obj, Object obj2) {
        l6<a2> l6Var;
        p1 p1Var = null;
        switch (p1.f12475a[i2 - 1]) {
            case 1:
                return new a2();
            case 2:
                return new a(p1Var);
            case 3:
                return s4.a(zzpf, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\f\u0000\u0002\u0002\u0001\u0003\u0002\u0002\u0004\u0002\u0004\u0005\u0002\u0003", new Object[]{"zzbf", "zzmp", b.zzah(), "zzpb", "zzpc", "zzpe", "zzpd"});
            case 4:
                return zzpf;
            case 5:
                l6<a2> l6Var2 = zzbd;
                l6<a2> l6Var3 = l6Var2;
                if (l6Var2 == null) {
                    synchronized (a2.class) {
                        l6<a2> l6Var4 = zzbd;
                        l6Var = l6Var4;
                        if (l6Var4 == null) {
                            ?? bVar = new s4.b(zzpf);
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

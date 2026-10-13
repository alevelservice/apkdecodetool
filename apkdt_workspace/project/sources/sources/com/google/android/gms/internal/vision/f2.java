package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class f2 extends s4<f2, a> implements f6 {
    private static volatile l6<f2> zzbd;
    private static final f2 zzqd;
    private int zzbf;
    private v1 zzpz;
    private b2 zzqa;
    private z1 zzqb;
    private int zzqc;

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static final class a extends s4.a<f2, a> implements f6 {
        private a() {
            super(f2.zzqd);
        }

        /* synthetic */ a(p1 p1Var) {
            this();
        }
    }

    static {
        f2 f2Var = new f2();
        zzqd = f2Var;
        s4.a((Class<f2>) f2.class, f2Var);
    }

    private f2() {
    }

    public static a m() {
        return zzqd.g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.vision.s4$b, com.google.android.gms.internal.vision.l6<com.google.android.gms.internal.vision.f2>] */
    @Override // com.google.android.gms.internal.vision.s4
    public final Object a(int i2, Object obj, Object obj2) {
        l6<f2> l6Var;
        p1 p1Var = null;
        switch (p1.f12475a[i2 - 1]) {
            case 1:
                return new f2();
            case 2:
                return new a(p1Var);
            case 3:
                return s4.a(zzqd, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002\u0004\u0004\u0003", new Object[]{"zzbf", "zzpz", "zzqa", "zzqb", "zzqc"});
            case 4:
                return zzqd;
            case 5:
                l6<f2> l6Var2 = zzbd;
                l6<f2> l6Var3 = l6Var2;
                if (l6Var2 == null) {
                    synchronized (f2.class) {
                        l6<f2> l6Var4 = zzbd;
                        l6Var = l6Var4;
                        if (l6Var4 == null) {
                            ?? bVar = new s4.b(zzqd);
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

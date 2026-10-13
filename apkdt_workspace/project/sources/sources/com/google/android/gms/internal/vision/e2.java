package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class e2 extends s4<e2, a> implements f6 {
    private static volatile l6<e2> zzbd;
    private static final e2 zzpy;
    private int zzbf;
    private u1 zzpu;
    private int zzpv;
    private y1 zzpw;
    private t1 zzpx;

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static final class a extends s4.a<e2, a> implements f6 {
        private a() {
            super(e2.zzpy);
        }

        /* synthetic */ a(p1 p1Var) {
            this();
        }
    }

    static {
        e2 e2Var = new e2();
        zzpy = e2Var;
        s4.a((Class<e2>) e2.class, e2Var);
    }

    private e2() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.vision.s4$b, com.google.android.gms.internal.vision.l6<com.google.android.gms.internal.vision.e2>] */
    @Override // com.google.android.gms.internal.vision.s4
    public final Object a(int i2, Object obj, Object obj2) {
        l6<e2> l6Var;
        p1 p1Var = null;
        switch (p1.f12475a[i2 - 1]) {
            case 1:
                return new e2();
            case 2:
                return new a(p1Var);
            case 3:
                return s4.a(zzpy, "\u0001\u0004\u0000\u0001\u0001\u0011\u0004\u0000\u0000\u0000\u0001\t\u0000\u0002\u0004\u0001\u0010\t\u0002\u0011\t\u0003", new Object[]{"zzbf", "zzpu", "zzpv", "zzpw", "zzpx"});
            case 4:
                return zzpy;
            case 5:
                l6<e2> l6Var2 = zzbd;
                l6<e2> l6Var3 = l6Var2;
                if (l6Var2 == null) {
                    synchronized (e2.class) {
                        l6<e2> l6Var4 = zzbd;
                        l6Var = l6Var4;
                        if (l6Var4 == null) {
                            ?? bVar = new s4.b(zzpy);
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

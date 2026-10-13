package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class t1 extends s4<t1, a> implements f6 {
    private static volatile l6<t1> zzbd;
    private static final t1 zzms;
    private int zzbf;
    private int zzmp = 1;
    private int zzmq = 1;
    private String zzmr = "";

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static final class a extends s4.a<t1, a> implements f6 {
        private a() {
            super(t1.zzms);
        }

        /* synthetic */ a(p1 p1Var) {
            this();
        }
    }

    static {
        t1 t1Var = new t1();
        zzms = t1Var;
        s4.a((Class<t1>) t1.class, t1Var);
    }

    private t1() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.vision.s4$b, com.google.android.gms.internal.vision.l6<com.google.android.gms.internal.vision.t1>] */
    @Override // com.google.android.gms.internal.vision.s4
    public final Object a(int i2, Object obj, Object obj2) {
        l6<t1> l6Var;
        p1 p1Var = null;
        switch (p1.f12475a[i2 - 1]) {
            case 1:
                return new t1();
            case 2:
                return new a(p1Var);
            case 3:
                return s4.a(zzms, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0000\u0002\f\u0001\u0003\b\u0002", new Object[]{"zzbf", "zzmp", t2.zzah(), "zzmq", x2.zzah(), "zzmr"});
            case 4:
                return zzms;
            case 5:
                l6<t1> l6Var2 = zzbd;
                l6<t1> l6Var3 = l6Var2;
                if (l6Var2 == null) {
                    synchronized (t1.class) {
                        l6<t1> l6Var4 = zzbd;
                        l6Var = l6Var4;
                        if (l6Var4 == null) {
                            ?? bVar = new s4.b(zzms);
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

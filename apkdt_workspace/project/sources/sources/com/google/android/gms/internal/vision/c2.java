package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class c2 extends s4<c2, a> implements f6 {
    private static volatile l6<c2> zzbd;
    private static final c2 zzpq;
    private int zzbf;
    private long zzno;
    private long zznp;

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static final class a extends s4.a<c2, a> implements f6 {
        private a() {
            super(c2.zzpq);
        }

        /* synthetic */ a(p1 p1Var) {
            this();
        }
    }

    static {
        c2 c2Var = new c2();
        zzpq = c2Var;
        s4.a((Class<c2>) c2.class, c2Var);
    }

    private c2() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.vision.s4$b, com.google.android.gms.internal.vision.l6<com.google.android.gms.internal.vision.c2>] */
    @Override // com.google.android.gms.internal.vision.s4
    public final Object a(int i2, Object obj, Object obj2) {
        l6<c2> l6Var;
        p1 p1Var = null;
        switch (p1.f12475a[i2 - 1]) {
            case 1:
                return new c2();
            case 2:
                return new a(p1Var);
            case 3:
                return s4.a(zzpq, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0000\u0002\u0002\u0001", new Object[]{"zzbf", "zzno", "zznp"});
            case 4:
                return zzpq;
            case 5:
                l6<c2> l6Var2 = zzbd;
                l6<c2> l6Var3 = l6Var2;
                if (l6Var2 == null) {
                    synchronized (c2.class) {
                        l6<c2> l6Var4 = zzbd;
                        l6Var = l6Var4;
                        if (l6Var4 == null) {
                            ?? bVar = new s4.b(zzpq);
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

package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class b2 extends s4<b2, a> implements f6 {
    private static volatile l6<b2> zzbd;
    private static final b2 zzpp;
    private int zzbf;
    private long zzpl;
    private r1 zzpm;
    private x1 zzpn;
    private s1 zzpo;
    private String zznj = "";
    private String zznb = "";

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static final class a extends s4.a<b2, a> implements f6 {
        private a() {
            super(b2.zzpp);
        }

        /* synthetic */ a(p1 p1Var) {
            this();
        }
    }

    static {
        b2 b2Var = new b2();
        zzpp = b2Var;
        s4.a((Class<b2>) b2.class, b2Var);
    }

    private b2() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.vision.s4$b, com.google.android.gms.internal.vision.l6<com.google.android.gms.internal.vision.b2>] */
    @Override // com.google.android.gms.internal.vision.s4
    public final Object a(int i2, Object obj, Object obj2) {
        l6<b2> l6Var;
        p1 p1Var = null;
        switch (p1.f12475a[i2 - 1]) {
            case 1:
                return new b2();
            case 2:
                return new a(p1Var);
            case 3:
                return s4.a(zzpp, "\u0001\u0006\u0000\u0001\u0001\u0011\u0006\u0000\u0000\u0000\u0001\b\u0000\u0002\u0002\u0001\u0003\t\u0002\u0006\b\u0003\u0010\t\u0004\u0011\t\u0005", new Object[]{"zzbf", "zznj", "zzpl", "zzpm", "zznb", "zzpn", "zzpo"});
            case 4:
                return zzpp;
            case 5:
                l6<b2> l6Var2 = zzbd;
                l6<b2> l6Var3 = l6Var2;
                if (l6Var2 == null) {
                    synchronized (b2.class) {
                        l6<b2> l6Var4 = zzbd;
                        l6Var = l6Var4;
                        if (l6Var4 == null) {
                            ?? bVar = new s4.b(zzpp);
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

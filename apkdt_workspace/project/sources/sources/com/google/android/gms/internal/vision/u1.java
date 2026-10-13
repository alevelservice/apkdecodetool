package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class u1 extends s4<u1, a> implements f6 {
    private static volatile l6<u1> zzbd;
    private static final u1 zzmu;
    private z4<d2> zzmt = s4.l();

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static final class a extends s4.a<u1, a> implements f6 {
        private a() {
            super(u1.zzmu);
        }

        /* synthetic */ a(p1 p1Var) {
            this();
        }
    }

    static {
        u1 u1Var = new u1();
        zzmu = u1Var;
        s4.a((Class<u1>) u1.class, u1Var);
    }

    private u1() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.vision.s4$b, com.google.android.gms.internal.vision.l6<com.google.android.gms.internal.vision.u1>] */
    @Override // com.google.android.gms.internal.vision.s4
    public final Object a(int i2, Object obj, Object obj2) {
        l6<u1> l6Var;
        p1 p1Var = null;
        switch (p1.f12475a[i2 - 1]) {
            case 1:
                return new u1();
            case 2:
                return new a(p1Var);
            case 3:
                return s4.a(zzmu, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzmt", d2.class});
            case 4:
                return zzmu;
            case 5:
                l6<u1> l6Var2 = zzbd;
                l6<u1> l6Var3 = l6Var2;
                if (l6Var2 == null) {
                    synchronized (u1.class) {
                        l6<u1> l6Var4 = zzbd;
                        l6Var = l6Var4;
                        if (l6Var4 == null) {
                            ?? bVar = new s4.b(zzmu);
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

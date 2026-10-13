package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class y1 extends s4<y1, a> implements f6 {
    private static volatile l6<y1> zzbd;
    private static final y1 zzow;
    private int zzbf;
    private float zzoq;
    private float zzor;
    private float zzos;
    private float zzot;
    private float zzou;
    private float zzov;

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static final class a extends s4.a<y1, a> implements f6 {
        private a() {
            super(y1.zzow);
        }

        /* synthetic */ a(p1 p1Var) {
            this();
        }
    }

    static {
        y1 y1Var = new y1();
        zzow = y1Var;
        s4.a((Class<y1>) y1.class, y1Var);
    }

    private y1() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.vision.l6<com.google.android.gms.internal.vision.y1>, com.google.android.gms.internal.vision.s4$b] */
    @Override // com.google.android.gms.internal.vision.s4
    public final Object a(int i2, Object obj, Object obj2) {
        l6<y1> l6Var;
        p1 p1Var = null;
        switch (p1.f12475a[i2 - 1]) {
            case 1:
                return new y1();
            case 2:
                return new a(p1Var);
            case 3:
                return s4.a(zzow, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0001\u0000\u0002\u0001\u0001\u0003\u0001\u0002\u0004\u0001\u0003\u0005\u0001\u0004\u0006\u0001\u0005", new Object[]{"zzbf", "zzoq", "zzor", "zzos", "zzot", "zzou", "zzov"});
            case 4:
                return zzow;
            case 5:
                l6<y1> l6Var2 = zzbd;
                l6<y1> l6Var3 = l6Var2;
                if (l6Var2 == null) {
                    synchronized (y1.class) {
                        l6<y1> l6Var4 = zzbd;
                        l6Var = l6Var4;
                        if (l6Var4 == null) {
                            ?? bVar = new s4.b(zzow);
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

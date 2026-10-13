package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.d1;

/* loaded from: classes.dex */
public final class x4 extends d1<x4, a> implements k2 {
    private static volatile s2<x4> zzbg;
    private static final x4 zztx = new x4();
    private int zzbb;
    private int zztu;
    private String zztv = "";
    private String zztw = "";

    /* loaded from: classes.dex */
    public static final class a extends d1.a<x4, a> implements k2 {
        private a() {
            super(x4.zztx);
        }

        /* synthetic */ a(a5 a5Var) {
            this();
        }
    }

    static {
        d1.a((Class<x4>) x4.class, zztx);
    }

    private x4() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.clearcut.s2<com.google.android.gms.internal.clearcut.x4>, com.google.android.gms.internal.clearcut.d1$b] */
    @Override // com.google.android.gms.internal.clearcut.d1
    public final Object a(int i2, Object obj, Object obj2) {
        s2<x4> s2Var;
        a5 a5Var = null;
        switch (a5.f11357a[i2 - 1]) {
            case 1:
                return new x4();
            case 2:
                return new a(a5Var);
            case 3:
                return d1.a(zztx, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u0004\u0000\u0002\b\u0001\u0003\b\u0002", new Object[]{"zzbb", "zztu", "zztv", "zztw"});
            case 4:
                return zztx;
            case 5:
                s2<x4> s2Var2 = zzbg;
                s2<x4> s2Var3 = s2Var2;
                if (s2Var2 == null) {
                    synchronized (x4.class) {
                        s2<x4> s2Var4 = zzbg;
                        s2Var = s2Var4;
                        if (s2Var4 == null) {
                            ?? bVar = new d1.b(zztx);
                            zzbg = bVar;
                            s2Var = bVar;
                        }
                    }
                    s2Var3 = s2Var;
                }
                return s2Var3;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}

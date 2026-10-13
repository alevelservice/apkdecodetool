package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class s1 extends s4<s1, a> implements f6 {
    private static volatile l6<s1> zzbd;
    private static final b5<Integer, t2> zzmn = new g2();
    private static final s1 zzmo;
    private x4 zzmm = s4.h();

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static final class a extends s4.a<s1, a> implements f6 {
        private a() {
            super(s1.zzmo);
        }

        /* synthetic */ a(p1 p1Var) {
            this();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.vision.g2, com.google.android.gms.internal.vision.b5<java.lang.Integer, com.google.android.gms.internal.vision.t2>] */
    static {
        s1 s1Var = new s1();
        zzmo = s1Var;
        s4.a((Class<s1>) s1.class, s1Var);
    }

    private s1() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.vision.s4$b, com.google.android.gms.internal.vision.l6<com.google.android.gms.internal.vision.s1>] */
    @Override // com.google.android.gms.internal.vision.s4
    public final Object a(int i2, Object obj, Object obj2) {
        l6<s1> l6Var;
        p1 p1Var = null;
        switch (p1.f12475a[i2 - 1]) {
            case 1:
                return new s1();
            case 2:
                return new a(p1Var);
            case 3:
                return s4.a(zzmo, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001e", new Object[]{"zzmm", t2.zzah()});
            case 4:
                return zzmo;
            case 5:
                l6<s1> l6Var2 = zzbd;
                l6<s1> l6Var3 = l6Var2;
                if (l6Var2 == null) {
                    synchronized (s1.class) {
                        l6<s1> l6Var4 = zzbd;
                        l6Var = l6Var4;
                        if (l6Var4 == null) {
                            ?? bVar = new s4.b(zzmo);
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

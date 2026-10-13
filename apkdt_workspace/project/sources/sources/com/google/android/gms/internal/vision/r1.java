package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class r1 extends s4<r1, a> implements f6 {
    private static volatile l6<r1> zzbd;
    private static final r1 zzml;
    private int zzbf;
    private String zzmj = "";
    private String zzmk = "";

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static final class a extends s4.a<r1, a> implements f6 {
        private a() {
            super(r1.zzml);
        }

        public final a a(String str) {
            if (this.f12505g) {
                e();
                this.f12505g = false;
            }
            ((r1) this.f12504f).a(str);
            return this;
        }

        public final a b(String str) {
            if (this.f12505g) {
                e();
                this.f12505g = false;
            }
            ((r1) this.f12504f).b(str);
            return this;
        }

        /* synthetic */ a(p1 p1Var) {
            this();
        }
    }

    static {
        r1 r1Var = new r1();
        zzml = r1Var;
        s4.a((Class<r1>) r1.class, r1Var);
    }

    private r1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        str.getClass();
        this.zzbf |= 1;
        this.zzmj = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(String str) {
        str.getClass();
        this.zzbf |= 2;
        this.zzmk = str;
    }

    public static a m() {
        return zzml.g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.vision.s4$b, com.google.android.gms.internal.vision.l6<com.google.android.gms.internal.vision.r1>] */
    @Override // com.google.android.gms.internal.vision.s4
    public final Object a(int i2, Object obj, Object obj2) {
        l6<r1> l6Var;
        p1 p1Var = null;
        switch (p1.f12475a[i2 - 1]) {
            case 1:
                return new r1();
            case 2:
                return new a(p1Var);
            case 3:
                return s4.a(zzml, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\b\u0000\u0002\b\u0001", new Object[]{"zzbf", "zzmj", "zzmk"});
            case 4:
                return zzml;
            case 5:
                l6<r1> l6Var2 = zzbd;
                l6<r1> l6Var3 = l6Var2;
                if (l6Var2 == null) {
                    synchronized (r1.class) {
                        l6<r1> l6Var4 = zzbd;
                        l6Var = l6Var4;
                        if (l6Var4 == null) {
                            ?? bVar = new s4.b(zzml);
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

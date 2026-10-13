package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cd1 extends e91<cd1, a> implements qa1 {
    private static volatile wa1<cd1> zzdv;
    private static final cd1 zzhsp;
    private int zzdj;
    private String zzhso = "";

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<cd1, a> implements qa1 {
        private a() {
            super(cd1.zzhsp);
        }

        public final a a(String str) {
            g();
            ((cd1) this.f6370f).a(str);
            return this;
        }

        /* synthetic */ a(kd1 kd1Var) {
            this();
        }
    }

    static {
        cd1 cd1Var = new cd1();
        zzhsp = cd1Var;
        e91.a((Class<cd1>) cd1.class, cd1Var);
    }

    private cd1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str != null) {
            this.zzdj |= 1;
            this.zzhso = str;
            return;
        }
        throw new NullPointerException();
    }

    public static a k() {
        return zzhsp.h();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        kd1 kd1Var = null;
        switch (kd1.f7673a[i2 - 1]) {
            case 1:
                return new cd1();
            case 2:
                return new a(kd1Var);
            case 3:
                return e91.a(zzhsp, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\b\u0000", new Object[]{"zzdj", "zzhso"});
            case 4:
                return zzhsp;
            case 5:
                wa1<cd1> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (cd1.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzhsp);
                            zzdv = wa1Var;
                        }
                    }
                }
                return wa1Var;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class h41 extends e91<h41, a> implements qa1 {
    private static volatile wa1<h41> zzdv;
    private static final h41 zzgwr;
    private int zzgtp;
    private k41 zzgwp;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<h41, a> implements qa1 {
        private a() {
            super(h41.zzgwr);
        }

        /* synthetic */ a(i41 i41Var) {
            this();
        }
    }

    static {
        h41 h41Var = new h41();
        zzgwr = h41Var;
        e91.a((Class<h41>) h41.class, h41Var);
    }

    private h41() {
    }

    public static h41 a(t71 t71Var) {
        return (h41) e91.a(zzgwr, t71Var);
    }

    public static h41 n() {
        return zzgwr;
    }

    public final int k() {
        return this.zzgtp;
    }

    public final k41 m() {
        k41 k41Var = this.zzgwp;
        return k41Var == null ? k41.n() : k41Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        i41 i41Var = null;
        switch (i41.f7226a[i2 - 1]) {
            case 1:
                return new h41();
            case 2:
                return new a(i41Var);
            case 3:
                return e91.a(zzgwr, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzgwp", "zzgtp"});
            case 4:
                return zzgwr;
            case 5:
                wa1<h41> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (h41.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgwr);
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

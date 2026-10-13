package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class k41 extends e91<k41, a> implements qa1 {
    private static volatile wa1<k41> zzdv;
    private static final k41 zzgwu;
    private int zzgws;
    private int zzgwt;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<k41, a> implements qa1 {
        private a() {
            super(k41.zzgwu);
        }

        /* synthetic */ a(j41 j41Var) {
            this();
        }
    }

    static {
        k41 k41Var = new k41();
        zzgwu = k41Var;
        e91.a((Class<k41>) k41.class, k41Var);
    }

    private k41() {
    }

    public static k41 n() {
        return zzgwu;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        j41 j41Var = null;
        switch (j41.f7428a[i2 - 1]) {
            case 1:
                return new k41();
            case 2:
                return new a(j41Var);
            case 3:
                return e91.a(zzgwu, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zzgws", "zzgwt"});
            case 4:
                return zzgwu;
            case 5:
                wa1<k41> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (k41.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgwu);
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

    public final e41 k() {
        e41 zzem = e41.zzem(this.zzgws);
        return zzem == null ? e41.UNRECOGNIZED : zzem;
    }

    public final int m() {
        return this.zzgwt;
    }
}

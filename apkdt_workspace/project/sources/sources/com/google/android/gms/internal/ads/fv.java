package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public final class fv extends e91<fv, a> implements qa1 {
    private static volatile wa1<fv> zzdv;
    private static final fv zzkf;
    private int zzdj;
    private long zzka;
    private int zzkb;
    private boolean zzkc;
    private j91 zzkd = e91.i();
    private long zzke;

    /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<fv, a> implements qa1 {
        private a() {
            super(fv.zzkf);
        }

        /* synthetic */ a(kw kwVar) {
            this();
        }
    }

    static {
        fv fvVar = new fv();
        zzkf = fvVar;
        e91.a((Class<fv>) fv.class, fvVar);
    }

    private fv() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        kw kwVar = null;
        switch (kw.f7774a[i2 - 1]) {
            case 1:
                return new fv();
            case 2:
                return new a(kwVar);
            case 3:
                return e91.a(zzkf, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u0002\u0000\u0002\u0004\u0001\u0003\u0007\u0002\u0004\u0016\u0005\u0003\u0003", new Object[]{"zzdj", "zzka", "zzkb", "zzkc", "zzkd", "zzke"});
            case 4:
                return zzkf;
            case 5:
                wa1<fv> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (fv.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzkf);
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

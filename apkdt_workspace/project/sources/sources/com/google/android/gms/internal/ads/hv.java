package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public final class hv extends e91<hv, a> implements qa1 {
    private static volatile wa1<hv> zzdv;
    private static final hv zzlf;
    private int zzdj;
    private long zzka;
    private String zzld = "";
    private t71 zzle = t71.zzhfn;

    /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<hv, a> implements qa1 {
        private a() {
            super(hv.zzlf);
        }

        /* synthetic */ a(kw kwVar) {
            this();
        }
    }

    static {
        hv hvVar = new hv();
        zzlf = hvVar;
        e91.a((Class<hv>) hv.class, hvVar);
    }

    private hv() {
    }

    public static hv n() {
        return zzlf;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        kw kwVar = null;
        switch (kw.f7774a[i2 - 1]) {
            case 1:
                return new hv();
            case 2:
                return new a(kwVar);
            case 3:
                return e91.a(zzlf, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001\u0002\u0000\u0003\b\u0001\u0004\n\u0002", new Object[]{"zzdj", "zzka", "zzld", "zzle"});
            case 4:
                return zzlf;
            case 5:
                wa1<hv> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (hv.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzlf);
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

    public final boolean k() {
        return (this.zzdj & 1) != 0;
    }

    public final long m() {
        return this.zzka;
    }
}

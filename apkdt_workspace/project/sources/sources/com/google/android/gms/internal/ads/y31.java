package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class y31 extends e91<y31, a> implements qa1 {
    private static volatile wa1<y31> zzdv;
    private static final y31 zzgvx;
    private int zzgtt;
    private int zzgvv;
    private t71 zzgvw = t71.zzhfn;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<y31, a> implements qa1 {
        private a() {
            super(y31.zzgvx);
        }

        /* synthetic */ a(x31 x31Var) {
            this();
        }
    }

    static {
        y31 y31Var = new y31();
        zzgvx = y31Var;
        e91.a((Class<y31>) y31.class, y31Var);
    }

    private y31() {
    }

    public static y31 o() {
        return zzgvx;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        x31 x31Var = null;
        switch (x31.f10271a[i2 - 1]) {
            case 1:
                return new y31();
            case 2:
                return new a(x31Var);
            case 3:
                return e91.a(zzgvx, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u000b\n", new Object[]{"zzgvv", "zzgtt", "zzgvw"});
            case 4:
                return zzgvx;
            case 5:
                wa1<y31> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (y31.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgvx);
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
        e41 zzem = e41.zzem(this.zzgtt);
        return zzem == null ? e41.UNRECOGNIZED : zzem;
    }

    public final z31 m() {
        z31 zzek = z31.zzek(this.zzgvv);
        return zzek == null ? z31.UNRECOGNIZED : zzek;
    }

    public final t71 n() {
        return this.zzgvw;
    }
}

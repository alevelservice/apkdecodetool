package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vs1 extends e91<vs1, a> implements qa1 {
    private static final vs1 zzbyd;
    private static volatile wa1<vs1> zzdv;
    private int zzbyb;
    private int zzbyc;
    private int zzdj;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<vs1, a> implements qa1 {
        private a() {
            super(vs1.zzbyd);
        }

        /* synthetic */ a(ys1 ys1Var) {
            this();
        }
    }

    static {
        vs1 vs1Var = new vs1();
        zzbyd = vs1Var;
        e91.a((Class<vs1>) vs1.class, vs1Var);
    }

    private vs1() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        ys1 ys1Var = null;
        switch (ys1.f10656a[i2 - 1]) {
            case 1:
                return new vs1();
            case 2:
                return new a(ys1Var);
            case 3:
                return e91.a(zzbyd, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001", new Object[]{"zzdj", "zzbyb", "zzbyc"});
            case 4:
                return zzbyd;
            case 5:
                wa1<vs1> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (vs1.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzbyd);
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

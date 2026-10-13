package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class z21 extends e91<z21, a> implements qa1 {
    private static volatile wa1<z21> zzdv;
    private static final z21 zzgud;
    private int zzgtp;
    private c31 zzgub;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<z21, a> implements qa1 {
        private a() {
            super(z21.zzgud);
        }

        /* synthetic */ a(a31 a31Var) {
            this();
        }
    }

    static {
        z21 z21Var = new z21();
        zzgud = z21Var;
        e91.a((Class<z21>) z21.class, z21Var);
    }

    private z21() {
    }

    public static z21 a(t71 t71Var) {
        return (z21) e91.a(zzgud, t71Var);
    }

    public final int k() {
        return this.zzgtp;
    }

    public final c31 m() {
        c31 c31Var = this.zzgub;
        return c31Var == null ? c31.m() : c31Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        a31 a31Var = null;
        switch (a31.f5509a[i2 - 1]) {
            case 1:
                return new z21();
            case 2:
                return new a(a31Var);
            case 3:
                return e91.a(zzgud, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzgub", "zzgtp"});
            case 4:
                return zzgud;
            case 5:
                wa1<z21> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (z21.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgud);
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

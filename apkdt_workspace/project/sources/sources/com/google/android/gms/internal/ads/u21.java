package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class u21 extends e91<u21, a> implements qa1 {
    private static volatile wa1<u21> zzdv;
    private static final u21 zzgty;
    private int zzgtp;
    private v21 zzgtw;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<u21, a> implements qa1 {
        private a() {
            super(u21.zzgty);
        }

        /* synthetic */ a(t21 t21Var) {
            this();
        }
    }

    static {
        u21 u21Var = new u21();
        zzgty = u21Var;
        e91.a((Class<u21>) u21.class, u21Var);
    }

    private u21() {
    }

    public static u21 a(t71 t71Var) {
        return (u21) e91.a(zzgty, t71Var);
    }

    public static u21 n() {
        return zzgty;
    }

    public final int k() {
        return this.zzgtp;
    }

    public final v21 m() {
        v21 v21Var = this.zzgtw;
        return v21Var == null ? v21.m() : v21Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        t21 t21Var = null;
        switch (t21.f9502a[i2 - 1]) {
            case 1:
                return new u21();
            case 2:
                return new a(t21Var);
            case 3:
                return e91.a(zzgty, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzgtw", "zzgtp"});
            case 4:
                return zzgty;
            case 5:
                wa1<u21> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (u21.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgty);
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

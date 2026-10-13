package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class f31 extends e91<f31, a> implements qa1 {
    private static volatile wa1<f31> zzdv;
    private static final f31 zzguk;
    private int zzgtp;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<f31, a> implements qa1 {
        private a() {
            super(f31.zzguk);
        }

        /* synthetic */ a(g31 g31Var) {
            this();
        }
    }

    static {
        f31 f31Var = new f31();
        zzguk = f31Var;
        e91.a((Class<f31>) f31.class, f31Var);
    }

    private f31() {
    }

    public static f31 a(t71 t71Var) {
        return (f31) e91.a(zzguk, t71Var);
    }

    public final int k() {
        return this.zzgtp;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        g31 g31Var = null;
        switch (g31.f6793a[i2 - 1]) {
            case 1:
                return new f31();
            case 2:
                return new a(g31Var);
            case 3:
                return e91.a(zzguk, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\u000b", new Object[]{"zzgtp"});
            case 4:
                return zzguk;
            case 5:
                wa1<f31> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (f31.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzguk);
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

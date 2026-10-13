package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class p31 extends e91<p31, a> implements qa1 {
    private static volatile wa1<p31> zzdv;
    private static final p31 zzgvn;
    private q31 zzgvm;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<p31, a> implements qa1 {
        private a() {
            super(p31.zzgvn);
        }

        /* synthetic */ a(o31 o31Var) {
            this();
        }
    }

    static {
        p31 p31Var = new p31();
        zzgvn = p31Var;
        e91.a((Class<p31>) p31.class, p31Var);
    }

    private p31() {
    }

    public static p31 a(t71 t71Var) {
        return (p31) e91.a(zzgvn, t71Var);
    }

    public final q31 k() {
        q31 q31Var = this.zzgvm;
        return q31Var == null ? q31.o() : q31Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        o31 o31Var = null;
        switch (o31.f8464a[i2 - 1]) {
            case 1:
                return new p31();
            case 2:
                return new a(o31Var);
            case 3:
                return e91.a(zzgvn, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t", new Object[]{"zzgvm"});
            case 4:
                return zzgvn;
            case 5:
                wa1<p31> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (p31.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgvn);
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

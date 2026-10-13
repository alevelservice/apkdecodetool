package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class q31 extends e91<q31, a> implements qa1 {
    private static volatile wa1<q31> zzdv;
    private static final q31 zzgvr;
    private y31 zzgvo;
    private m31 zzgvp;
    private int zzgvq;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<q31, a> implements qa1 {
        private a() {
            super(q31.zzgvr);
        }

        /* synthetic */ a(r31 r31Var) {
            this();
        }
    }

    static {
        q31 q31Var = new q31();
        zzgvr = q31Var;
        e91.a((Class<q31>) q31.class, q31Var);
    }

    private q31() {
    }

    public static q31 o() {
        return zzgvr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        r31 r31Var = null;
        switch (r31.f9033a[i2 - 1]) {
            case 1:
                return new q31();
            case 2:
                return new a(r31Var);
            case 3:
                return e91.a(zzgvr, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\f", new Object[]{"zzgvo", "zzgvp", "zzgvq"});
            case 4:
                return zzgvr;
            case 5:
                wa1<q31> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (q31.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgvr);
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

    public final y31 k() {
        y31 y31Var = this.zzgvo;
        return y31Var == null ? y31.o() : y31Var;
    }

    public final m31 m() {
        m31 m31Var = this.zzgvp;
        return m31Var == null ? m31.m() : m31Var;
    }

    public final k31 n() {
        k31 zzec = k31.zzec(this.zzgvq);
        return zzec == null ? k31.UNRECOGNIZED : zzec;
    }
}

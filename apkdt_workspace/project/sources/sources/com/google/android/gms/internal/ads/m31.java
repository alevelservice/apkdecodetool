package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class m31 extends e91<m31, a> implements qa1 {
    private static volatile wa1<m31> zzdv;
    private static final m31 zzgvl;
    private r41 zzgvk;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<m31, a> implements qa1 {
        private a() {
            super(m31.zzgvl);
        }

        /* synthetic */ a(n31 n31Var) {
            this();
        }
    }

    static {
        m31 m31Var = new m31();
        zzgvl = m31Var;
        e91.a((Class<m31>) m31.class, m31Var);
    }

    private m31() {
    }

    public static m31 m() {
        return zzgvl;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        n31 n31Var = null;
        switch (n31.f8269a[i2 - 1]) {
            case 1:
                return new m31();
            case 2:
                return new a(n31Var);
            case 3:
                return e91.a(zzgvl, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\t", new Object[]{"zzgvk"});
            case 4:
                return zzgvl;
            case 5:
                wa1<m31> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (m31.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgvl);
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

    public final r41 k() {
        r41 r41Var = this.zzgvk;
        return r41Var == null ? r41.n() : r41Var;
    }
}

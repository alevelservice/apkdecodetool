package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class v21 extends e91<v21, a> implements qa1 {
    private static volatile wa1<v21> zzdv;
    private static final v21 zzgua;
    private int zzgtz;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<v21, a> implements qa1 {
        private a() {
            super(v21.zzgua);
        }

        /* synthetic */ a(w21 w21Var) {
            this();
        }
    }

    static {
        v21 v21Var = new v21();
        zzgua = v21Var;
        e91.a((Class<v21>) v21.class, v21Var);
    }

    private v21() {
    }

    public static v21 m() {
        return zzgua;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        w21 w21Var = null;
        switch (w21.f10022a[i2 - 1]) {
            case 1:
                return new v21();
            case 2:
                return new a(w21Var);
            case 3:
                return e91.a(zzgua, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzgtz"});
            case 4:
                return zzgua;
            case 5:
                wa1<v21> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (v21.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgua);
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

    public final int k() {
        return this.zzgtz;
    }
}

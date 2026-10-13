package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class a41 extends e91<a41, a> implements qa1 {
    private static volatile wa1<a41> zzdv;
    private static final a41 zzgwh;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<a41, a> implements qa1 {
        private a() {
            super(a41.zzgwh);
        }

        /* synthetic */ a(c41 c41Var) {
            this();
        }
    }

    static {
        a41 a41Var = new a41();
        zzgwh = a41Var;
        e91.a((Class<a41>) a41.class, a41Var);
    }

    private a41() {
    }

    public static a41 a(t71 t71Var) {
        return (a41) e91.a(zzgwh, t71Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        c41 c41Var = null;
        switch (c41.f5921a[i2 - 1]) {
            case 1:
                return new a41();
            case 2:
                return new a(c41Var);
            case 3:
                return e91.a(zzgwh, "\u0000\u0000", (Object[]) null);
            case 4:
                return zzgwh;
            case 5:
                wa1<a41> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (a41.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgwh);
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

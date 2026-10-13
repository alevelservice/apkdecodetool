package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class f51 extends e91<f51, a> implements qa1 {
    private static volatile wa1<f51> zzdv;
    private static final f51 zzgyl;
    private String zzgyj = "";
    private r41 zzgyk;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<f51, a> implements qa1 {
        private a() {
            super(f51.zzgyl);
        }

        /* synthetic */ a(g51 g51Var) {
            this();
        }
    }

    static {
        f51 f51Var = new f51();
        zzgyl = f51Var;
        e91.a((Class<f51>) f51.class, f51Var);
    }

    private f51() {
    }

    public static f51 a(t71 t71Var) {
        return (f51) e91.a(zzgyl, t71Var);
    }

    public static f51 n() {
        return zzgyl;
    }

    public final String k() {
        return this.zzgyj;
    }

    public final r41 m() {
        r41 r41Var = this.zzgyk;
        return r41Var == null ? r41.n() : r41Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        g51 g51Var = null;
        switch (g51.f6810a[i2 - 1]) {
            case 1:
                return new f51();
            case 2:
                return new a(g51Var);
            case 3:
                return e91.a(zzgyl, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\t", new Object[]{"zzgyj", "zzgyk"});
            case 4:
                return zzgyl;
            case 5:
                wa1<f51> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (f51.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgyl);
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

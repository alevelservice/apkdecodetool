package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class r41 extends e91<r41, a> implements qa1 {
    private static volatile wa1<r41> zzdv;
    private static final r41 zzgxn;
    private String zzgwv = "";
    private t71 zzgww = t71.zzhfn;
    private int zzgxm;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<r41, a> implements qa1 {
        private a() {
            super(r41.zzgxn);
        }

        /* synthetic */ a(q41 q41Var) {
            this();
        }
    }

    static {
        r41 r41Var = new r41();
        zzgxn = r41Var;
        e91.a((Class<r41>) r41.class, r41Var);
    }

    private r41() {
    }

    public static r41 n() {
        return zzgxn;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        q41 q41Var = null;
        switch (q41.f8846a[i2 - 1]) {
            case 1:
                return new r41();
            case 2:
                return new a(q41Var);
            case 3:
                return e91.a(zzgxn, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzgwv", "zzgww", "zzgxm"});
            case 4:
                return zzgxn;
            case 5:
                wa1<r41> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (r41.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgxn);
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

    public final String k() {
        return this.zzgwv;
    }

    public final t71 m() {
        return this.zzgww;
    }
}

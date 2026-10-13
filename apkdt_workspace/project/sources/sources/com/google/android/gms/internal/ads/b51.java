package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class b51 extends e91<b51, a> implements qa1 {
    private static volatile wa1<b51> zzdv;
    private static final b51 zzgyg;
    private String zzgyf = "";

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<b51, a> implements qa1 {
        private a() {
            super(b51.zzgyg);
        }

        /* synthetic */ a(c51 c51Var) {
            this();
        }
    }

    static {
        b51 b51Var = new b51();
        zzgyg = b51Var;
        e91.a((Class<b51>) b51.class, b51Var);
    }

    private b51() {
    }

    public static b51 a(t71 t71Var) {
        return (b51) e91.a(zzgyg, t71Var);
    }

    public static b51 m() {
        return zzgyg;
    }

    public final String k() {
        return this.zzgyf;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        c51 c51Var = null;
        switch (c51.f5927a[i2 - 1]) {
            case 1:
                return new b51();
            case 2:
                return new a(c51Var);
            case 3:
                return e91.a(zzgyg, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zzgyf"});
            case 4:
                return zzgyg;
            case 5:
                wa1<b51> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (b51.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgyg);
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

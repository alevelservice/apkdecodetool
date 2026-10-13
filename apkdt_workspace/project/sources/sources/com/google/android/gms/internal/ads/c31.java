package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class c31 extends e91<c31, a> implements qa1 {
    private static volatile wa1<c31> zzdv;
    private static final c31 zzgue;
    private int zzgtz;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<c31, a> implements qa1 {
        private a() {
            super(c31.zzgue);
        }

        /* synthetic */ a(b31 b31Var) {
            this();
        }
    }

    static {
        c31 c31Var = new c31();
        zzgue = c31Var;
        e91.a((Class<c31>) c31.class, c31Var);
    }

    private c31() {
    }

    public static c31 m() {
        return zzgue;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        b31 b31Var = null;
        switch (b31.f5710a[i2 - 1]) {
            case 1:
                return new c31();
            case 2:
                return new a(b31Var);
            case 3:
                return e91.a(zzgue, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzgtz"});
            case 4:
                return zzgue;
            case 5:
                wa1<c31> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (c31.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgue);
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

package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class o21 extends e91<o21, a> implements qa1 {
    private static volatile wa1<o21> zzdv;
    private static final o21 zzgtl;
    private u21 zzgtj;
    private h41 zzgtk;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<o21, a> implements qa1 {
        private a() {
            super(o21.zzgtl);
        }

        /* synthetic */ a(p21 p21Var) {
            this();
        }
    }

    static {
        o21 o21Var = new o21();
        zzgtl = o21Var;
        e91.a((Class<o21>) o21.class, o21Var);
    }

    private o21() {
    }

    public static o21 a(t71 t71Var) {
        return (o21) e91.a(zzgtl, t71Var);
    }

    public final u21 k() {
        u21 u21Var = this.zzgtj;
        return u21Var == null ? u21.n() : u21Var;
    }

    public final h41 m() {
        h41 h41Var = this.zzgtk;
        return h41Var == null ? h41.n() : h41Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        p21 p21Var = null;
        switch (p21.f8630a[i2 - 1]) {
            case 1:
                return new o21();
            case 2:
                return new a(p21Var);
            case 3:
                return e91.a(zzgtl, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t", new Object[]{"zzgtj", "zzgtk"});
            case 4:
                return zzgtl;
            case 5:
                wa1<o21> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (o21.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgtl);
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

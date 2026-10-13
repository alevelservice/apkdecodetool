package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class j31 extends e91<j31, a> implements qa1 {
    private static volatile wa1<j31> zzdv;
    private static final j31 zzgun;
    private int zzgtf;
    private t71 zzgtn = t71.zzhfn;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<j31, a> implements qa1 {
        private a() {
            super(j31.zzgun);
        }

        public final a a(int i2) {
            g();
            ((j31) this.f6370f).b(0);
            return this;
        }

        /* synthetic */ a(i31 i31Var) {
            this();
        }

        public final a a(t71 t71Var) {
            g();
            ((j31) this.f6370f).b(t71Var);
            return this;
        }
    }

    static {
        j31 j31Var = new j31();
        zzgun = j31Var;
        e91.a((Class<j31>) j31.class, j31Var);
    }

    private j31() {
    }

    public static j31 a(t71 t71Var) {
        return (j31) e91.a(zzgun, t71Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2) {
        this.zzgtf = i2;
    }

    public static a n() {
        return zzgun.h();
    }

    public final int k() {
        return this.zzgtf;
    }

    public final t71 m() {
        return this.zzgtn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(t71 t71Var) {
        if (t71Var != null) {
            this.zzgtn = t71Var;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        i31 i31Var = null;
        switch (i31.f7219a[i2 - 1]) {
            case 1:
                return new j31();
            case 2:
                return new a(i31Var);
            case 3:
                return e91.a(zzgun, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n", new Object[]{"zzgtf", "zzgtn"});
            case 4:
                return zzgun;
            case 5:
                wa1<j31> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (j31.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgun);
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

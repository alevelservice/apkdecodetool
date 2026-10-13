package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class e31 extends e91<e31, a> implements qa1 {
    private static volatile wa1<e31> zzdv;
    private static final e31 zzguj;
    private int zzgtf;
    private t71 zzgtn = t71.zzhfn;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<e31, a> implements qa1 {
        private a() {
            super(e31.zzguj);
        }

        public final a a(int i2) {
            g();
            ((e31) this.f6370f).b(0);
            return this;
        }

        /* synthetic */ a(d31 d31Var) {
            this();
        }

        public final a a(t71 t71Var) {
            g();
            ((e31) this.f6370f).b(t71Var);
            return this;
        }
    }

    static {
        e31 e31Var = new e31();
        zzguj = e31Var;
        e91.a((Class<e31>) e31.class, e31Var);
    }

    private e31() {
    }

    public static e31 a(t71 t71Var) {
        return (e31) e91.a(zzguj, t71Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2) {
        this.zzgtf = i2;
    }

    public static a n() {
        return zzguj.h();
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
        d31 d31Var = null;
        switch (d31.f6152a[i2 - 1]) {
            case 1:
                return new e31();
            case 2:
                return new a(d31Var);
            case 3:
                return e91.a(zzguj, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzgtf", "zzgtn"});
            case 4:
                return zzguj;
            case 5:
                wa1<e31> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (e31.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzguj);
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

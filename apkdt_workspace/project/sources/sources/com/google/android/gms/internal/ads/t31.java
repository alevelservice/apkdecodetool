package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class t31 extends e91<t31, a> implements qa1 {
    private static volatile wa1<t31> zzdv;
    private static final t31 zzgvt;
    private int zzgtf;
    private t71 zzgtn = t71.zzhfn;
    private u31 zzgvs;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<t31, a> implements qa1 {
        private a() {
            super(t31.zzgvt);
        }

        public final a a(int i2) {
            g();
            ((t31) this.f6370f).b(0);
            return this;
        }

        /* synthetic */ a(s31 s31Var) {
            this();
        }

        public final a a(u31 u31Var) {
            g();
            ((t31) this.f6370f).a(u31Var);
            return this;
        }

        public final a a(t71 t71Var) {
            g();
            ((t31) this.f6370f).b(t71Var);
            return this;
        }
    }

    static {
        t31 t31Var = new t31();
        zzgvt = t31Var;
        e91.a((Class<t31>) t31.class, t31Var);
    }

    private t31() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(u31 u31Var) {
        if (u31Var != null) {
            this.zzgvs = u31Var;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2) {
        this.zzgtf = i2;
    }

    public static a o() {
        return zzgvt.h();
    }

    public final int k() {
        return this.zzgtf;
    }

    public final t71 m() {
        return this.zzgtn;
    }

    public final u31 n() {
        u31 u31Var = this.zzgvs;
        return u31Var == null ? u31.r() : u31Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(t71 t71Var) {
        if (t71Var != null) {
            this.zzgtn = t71Var;
            return;
        }
        throw new NullPointerException();
    }

    public static t31 a(t71 t71Var) {
        return (t31) e91.a(zzgvt, t71Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        s31 s31Var = null;
        switch (s31.f9268a[i2 - 1]) {
            case 1:
                return new t31();
            case 2:
                return new a(s31Var);
            case 3:
                return e91.a(zzgvt, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzgtf", "zzgvs", "zzgtn"});
            case 4:
                return zzgvt;
            case 5:
                wa1<t31> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (t31.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgvt);
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

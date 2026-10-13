package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class g41 extends e91<g41, a> implements qa1 {
    private static volatile wa1<g41> zzdv;
    private static final g41 zzgwq;
    private int zzgtf;
    private t71 zzgtn = t71.zzhfn;
    private k41 zzgwp;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<g41, a> implements qa1 {
        private a() {
            super(g41.zzgwq);
        }

        public final a a(int i2) {
            g();
            ((g41) this.f6370f).b(0);
            return this;
        }

        /* synthetic */ a(f41 f41Var) {
            this();
        }

        public final a a(k41 k41Var) {
            g();
            ((g41) this.f6370f).a(k41Var);
            return this;
        }

        public final a a(t71 t71Var) {
            g();
            ((g41) this.f6370f).b(t71Var);
            return this;
        }
    }

    static {
        g41 g41Var = new g41();
        zzgwq = g41Var;
        e91.a((Class<g41>) g41.class, g41Var);
    }

    private g41() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(k41 k41Var) {
        if (k41Var != null) {
            this.zzgwp = k41Var;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2) {
        this.zzgtf = i2;
    }

    public static a o() {
        return zzgwq.h();
    }

    public static g41 q() {
        return zzgwq;
    }

    public final int k() {
        return this.zzgtf;
    }

    public final t71 m() {
        return this.zzgtn;
    }

    public final k41 n() {
        k41 k41Var = this.zzgwp;
        return k41Var == null ? k41.n() : k41Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(t71 t71Var) {
        if (t71Var != null) {
            this.zzgtn = t71Var;
            return;
        }
        throw new NullPointerException();
    }

    public static g41 a(t71 t71Var) {
        return (g41) e91.a(zzgwq, t71Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        f41 f41Var = null;
        switch (f41.f6562a[i2 - 1]) {
            case 1:
                return new g41();
            case 2:
                return new a(f41Var);
            case 3:
                return e91.a(zzgwq, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzgtf", "zzgwp", "zzgtn"});
            case 4:
                return zzgwq;
            case 5:
                wa1<g41> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (g41.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgwq);
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

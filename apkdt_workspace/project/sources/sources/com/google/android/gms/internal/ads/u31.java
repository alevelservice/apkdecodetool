package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class u31 extends e91<u31, a> implements qa1 {
    private static volatile wa1<u31> zzdv;
    private static final u31 zzgvu;
    private int zzgtf;
    private t71 zzgvc;
    private t71 zzgvd;
    private q31 zzgvm;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<u31, a> implements qa1 {
        private a() {
            super(u31.zzgvu);
        }

        public final a a(int i2) {
            g();
            ((u31) this.f6370f).b(0);
            return this;
        }

        public final a b(t71 t71Var) {
            g();
            ((u31) this.f6370f).b(t71Var);
            return this;
        }

        /* synthetic */ a(v31 v31Var) {
            this();
        }

        public final a a(q31 q31Var) {
            g();
            ((u31) this.f6370f).a(q31Var);
            return this;
        }

        public final a a(t71 t71Var) {
            g();
            ((u31) this.f6370f).a(t71Var);
            return this;
        }
    }

    static {
        u31 u31Var = new u31();
        zzgvu = u31Var;
        e91.a((Class<u31>) u31.class, u31Var);
    }

    private u31() {
        t71 t71Var = t71.zzhfn;
        this.zzgvc = t71Var;
        this.zzgvd = t71Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(q31 q31Var) {
        if (q31Var != null) {
            this.zzgvm = q31Var;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2) {
        this.zzgtf = i2;
    }

    public static u31 c(t71 t71Var) {
        return (u31) e91.a(zzgvu, t71Var);
    }

    public static a q() {
        return zzgvu.h();
    }

    public static u31 r() {
        return zzgvu;
    }

    public final int k() {
        return this.zzgtf;
    }

    public final t71 m() {
        return this.zzgvc;
    }

    public final t71 n() {
        return this.zzgvd;
    }

    public final q31 o() {
        q31 q31Var = this.zzgvm;
        return q31Var == null ? q31.o() : q31Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(t71 t71Var) {
        if (t71Var != null) {
            this.zzgvd = t71Var;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(t71 t71Var) {
        if (t71Var != null) {
            this.zzgvc = t71Var;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        v31 v31Var = null;
        switch (v31.f9855a[i2 - 1]) {
            case 1:
                return new u31();
            case 2:
                return new a(v31Var);
            case 3:
                return e91.a(zzgvu, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zzgtf", "zzgvm", "zzgvc", "zzgvd"});
            case 4:
                return zzgvu;
            case 5:
                wa1<u31> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (u31.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgvu);
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

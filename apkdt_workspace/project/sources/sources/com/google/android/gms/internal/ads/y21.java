package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class y21 extends e91<y21, a> implements qa1 {
    private static volatile wa1<y21> zzdv;
    private static final y21 zzguc;
    private int zzgtf;
    private t71 zzgtn = t71.zzhfn;
    private c31 zzgub;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<y21, a> implements qa1 {
        private a() {
            super(y21.zzguc);
        }

        public final a a(int i2) {
            g();
            ((y21) this.f6370f).b(0);
            return this;
        }

        /* synthetic */ a(x21 x21Var) {
            this();
        }

        public final a a(c31 c31Var) {
            g();
            ((y21) this.f6370f).a(c31Var);
            return this;
        }

        public final a a(t71 t71Var) {
            g();
            ((y21) this.f6370f).b(t71Var);
            return this;
        }
    }

    static {
        y21 y21Var = new y21();
        zzguc = y21Var;
        e91.a((Class<y21>) y21.class, y21Var);
    }

    private y21() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(c31 c31Var) {
        if (c31Var != null) {
            this.zzgub = c31Var;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2) {
        this.zzgtf = i2;
    }

    public static a o() {
        return zzguc.h();
    }

    public final int k() {
        return this.zzgtf;
    }

    public final t71 m() {
        return this.zzgtn;
    }

    public final c31 n() {
        c31 c31Var = this.zzgub;
        return c31Var == null ? c31.m() : c31Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(t71 t71Var) {
        if (t71Var != null) {
            this.zzgtn = t71Var;
            return;
        }
        throw new NullPointerException();
    }

    public static y21 a(t71 t71Var) {
        return (y21) e91.a(zzguc, t71Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        x21 x21Var = null;
        switch (x21.f10260a[i2 - 1]) {
            case 1:
                return new y21();
            case 2:
                return new a(x21Var);
            case 3:
                return e91.a(zzguc, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzgtf", "zzgub", "zzgtn"});
            case 4:
                return zzguc;
            case 5:
                wa1<y21> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (y21.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzguc);
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

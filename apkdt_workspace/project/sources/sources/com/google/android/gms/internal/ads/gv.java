package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public final class gv extends e91<gv, a> implements qa1 {
    private static volatile wa1<gv> zzdv;
    private static final gv zzkn;
    private int zzdj;
    private t71 zzkj;
    private t71 zzkk;
    private t71 zzkl;
    private t71 zzkm;

    /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<gv, a> implements qa1 {
        private a() {
            super(gv.zzkn);
        }

        public final a a(t71 t71Var) {
            g();
            ((gv) this.f6370f).a(t71Var);
            return this;
        }

        public final a b(t71 t71Var) {
            g();
            ((gv) this.f6370f).b(t71Var);
            return this;
        }

        public final a c(t71 t71Var) {
            g();
            ((gv) this.f6370f).c(t71Var);
            return this;
        }

        public final a d(t71 t71Var) {
            g();
            ((gv) this.f6370f).d(t71Var);
            return this;
        }

        /* synthetic */ a(kw kwVar) {
            this();
        }
    }

    static {
        gv gvVar = new gv();
        zzkn = gvVar;
        e91.a((Class<gv>) gv.class, gvVar);
    }

    private gv() {
        t71 t71Var = t71.zzhfn;
        this.zzkj = t71Var;
        this.zzkk = t71Var;
        this.zzkl = t71Var;
        this.zzkm = t71Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(t71 t71Var) {
        if (t71Var != null) {
            this.zzdj |= 1;
            this.zzkj = t71Var;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(t71 t71Var) {
        if (t71Var != null) {
            this.zzdj |= 2;
            this.zzkk = t71Var;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(t71 t71Var) {
        if (t71Var != null) {
            this.zzdj |= 4;
            this.zzkl = t71Var;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(t71 t71Var) {
        if (t71Var != null) {
            this.zzdj |= 8;
            this.zzkm = t71Var;
            return;
        }
        throw new NullPointerException();
    }

    public static a q() {
        return zzkn.h();
    }

    public final t71 k() {
        return this.zzkj;
    }

    public final t71 m() {
        return this.zzkk;
    }

    public final t71 n() {
        return this.zzkl;
    }

    public final t71 o() {
        return this.zzkm;
    }

    public static gv a(byte[] bArr, q81 q81Var) {
        return (gv) e91.a(zzkn, bArr, q81Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        kw kwVar = null;
        switch (kw.f7774a[i2 - 1]) {
            case 1:
                return new gv();
            case 2:
                return new a(kwVar);
            case 3:
                return e91.a(zzkn, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0000\u0002\n\u0001\u0003\n\u0002\u0004\n\u0003", new Object[]{"zzdj", "zzkj", "zzkk", "zzkl", "zzkm"});
            case 4:
                return zzkn;
            case 5:
                wa1<gv> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (gv.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzkn);
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

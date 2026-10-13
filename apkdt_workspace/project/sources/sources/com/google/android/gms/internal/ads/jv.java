package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public final class jv extends e91<jv, a> implements qa1 {
    private static volatile wa1<jv> zzdv;
    private static final jv zzli;
    private int zzdj;
    private l91<t71> zzlh = e91.j();
    private t71 zzkk = t71.zzhfn;
    private int zzgy = 1;
    private int zzgx = 1;

    /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<jv, a> implements qa1 {
        private a() {
            super(jv.zzli);
        }

        public final a a(t71 t71Var) {
            g();
            ((jv) this.f6370f).b(t71Var);
            return this;
        }

        public final a b(t71 t71Var) {
            g();
            ((jv) this.f6370f).a(t71Var);
            return this;
        }

        /* synthetic */ a(kw kwVar) {
            this();
        }

        public final a a(n20 n20Var) {
            g();
            ((jv) this.f6370f).a(n20Var);
            return this;
        }
    }

    static {
        jv jvVar = new jv();
        zzli = jvVar;
        e91.a((Class<jv>) jv.class, jvVar);
    }

    private jv() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(t71 t71Var) {
        if (t71Var != null) {
            this.zzdj |= 1;
            this.zzkk = t71Var;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(t71 t71Var) {
        if (t71Var != null) {
            if (!this.zzlh.R()) {
                this.zzlh = e91.a(this.zzlh);
            }
            this.zzlh.add(t71Var);
            return;
        }
        throw new NullPointerException();
    }

    public static a k() {
        return zzli.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(n20 n20Var) {
        if (n20Var != null) {
            this.zzdj |= 4;
            this.zzgx = n20Var.zzab();
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        kw kwVar = null;
        switch (kw.f7774a[i2 - 1]) {
            case 1:
                return new jv();
            case 2:
                return new a(kwVar);
            case 3:
                return e91.a(zzli, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\n\u0000\u0003\f\u0001\u0004\f\u0002", new Object[]{"zzdj", "zzlh", "zzkk", "zzgy", n70.zzac(), "zzgx", n20.zzac()});
            case 4:
                return zzli;
            case 5:
                wa1<jv> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (jv.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzli);
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

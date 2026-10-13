package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class n21 extends e91<n21, a> implements qa1 {
    private static volatile wa1<n21> zzdv;
    private static final n21 zzgti;
    private int zzgtf;
    private r21 zzgtg;
    private g41 zzgth;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<n21, a> implements qa1 {
        private a() {
            super(n21.zzgti);
        }

        public final a a(int i2) {
            g();
            ((n21) this.f6370f).b(i2);
            return this;
        }

        /* synthetic */ a(m21 m21Var) {
            this();
        }

        public final a a(r21 r21Var) {
            g();
            ((n21) this.f6370f).a(r21Var);
            return this;
        }

        public final a a(g41 g41Var) {
            g();
            ((n21) this.f6370f).a(g41Var);
            return this;
        }
    }

    static {
        n21 n21Var = new n21();
        zzgti = n21Var;
        e91.a((Class<n21>) n21.class, n21Var);
    }

    private n21() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(r21 r21Var) {
        if (r21Var != null) {
            this.zzgtg = r21Var;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2) {
        this.zzgtf = i2;
    }

    public static a o() {
        return zzgti.h();
    }

    public final int k() {
        return this.zzgtf;
    }

    public final r21 m() {
        r21 r21Var = this.zzgtg;
        return r21Var == null ? r21.q() : r21Var;
    }

    public final g41 n() {
        g41 g41Var = this.zzgth;
        return g41Var == null ? g41.q() : g41Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(g41 g41Var) {
        if (g41Var != null) {
            this.zzgth = g41Var;
            return;
        }
        throw new NullPointerException();
    }

    public static n21 a(t71 t71Var) {
        return (n21) e91.a(zzgti, t71Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        m21 m21Var = null;
        switch (m21.f8006a[i2 - 1]) {
            case 1:
                return new n21();
            case 2:
                return new a(m21Var);
            case 3:
                return e91.a(zzgti, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t", new Object[]{"zzgtf", "zzgtg", "zzgth"});
            case 4:
                return zzgti;
            case 5:
                wa1<n21> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (n21.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgti);
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

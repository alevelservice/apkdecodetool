package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class a51 extends e91<a51, a> implements qa1 {
    private static volatile wa1<a51> zzdv;
    private static final a51 zzgye;
    private int zzgtf;
    private b51 zzgyd;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<a51, a> implements qa1 {
        private a() {
            super(a51.zzgye);
        }

        public final a a(int i2) {
            g();
            ((a51) this.f6370f).b(0);
            return this;
        }

        /* synthetic */ a(z41 z41Var) {
            this();
        }

        public final a a(b51 b51Var) {
            g();
            ((a51) this.f6370f).a(b51Var);
            return this;
        }
    }

    static {
        a51 a51Var = new a51();
        zzgye = a51Var;
        e91.a((Class<a51>) a51.class, a51Var);
    }

    private a51() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(b51 b51Var) {
        if (b51Var != null) {
            this.zzgyd = b51Var;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2) {
        this.zzgtf = i2;
    }

    public static a n() {
        return zzgye.h();
    }

    public final int k() {
        return this.zzgtf;
    }

    public final b51 m() {
        b51 b51Var = this.zzgyd;
        return b51Var == null ? b51.m() : b51Var;
    }

    public static a51 a(t71 t71Var) {
        return (a51) e91.a(zzgye, t71Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        z41 z41Var = null;
        switch (z41.f10688a[i2 - 1]) {
            case 1:
                return new a51();
            case 2:
                return new a(z41Var);
            case 3:
                return e91.a(zzgye, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzgtf", "zzgyd"});
            case 4:
                return zzgye;
            case 5:
                wa1<a51> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (a51.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgye);
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

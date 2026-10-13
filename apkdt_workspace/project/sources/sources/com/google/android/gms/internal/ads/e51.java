package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class e51 extends e91<e51, a> implements qa1 {
    private static volatile wa1<e51> zzdv;
    private static final e51 zzgyi;
    private int zzgtf;
    private f51 zzgyh;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<e51, a> implements qa1 {
        private a() {
            super(e51.zzgyi);
        }

        public final a a(int i2) {
            g();
            ((e51) this.f6370f).b(0);
            return this;
        }

        /* synthetic */ a(d51 d51Var) {
            this();
        }

        public final a a(f51 f51Var) {
            g();
            ((e51) this.f6370f).a(f51Var);
            return this;
        }
    }

    static {
        e51 e51Var = new e51();
        zzgyi = e51Var;
        e91.a((Class<e51>) e51.class, e51Var);
    }

    private e51() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(f51 f51Var) {
        if (f51Var != null) {
            this.zzgyh = f51Var;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2) {
        this.zzgtf = i2;
    }

    public static a n() {
        return zzgyi.h();
    }

    public final int k() {
        return this.zzgtf;
    }

    public final f51 m() {
        f51 f51Var = this.zzgyh;
        return f51Var == null ? f51.n() : f51Var;
    }

    public static e51 a(t71 t71Var) {
        return (e51) e91.a(zzgyi, t71Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        d51 d51Var = null;
        switch (d51.f6164a[i2 - 1]) {
            case 1:
                return new e51();
            case 2:
                return new a(d51Var);
            case 3:
                return e91.a(zzgyi, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzgtf", "zzgyh"});
            case 4:
                return zzgyi;
            case 5:
                wa1<e51> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (e51.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgyi);
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

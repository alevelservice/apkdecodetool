package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ws1 extends e91<ws1, a> implements qa1 {
    private static final ws1 zzbzd;
    private static volatile wa1<ws1> zzdv;
    private boolean zzbzb;
    private int zzbzc;
    private int zzdj;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<ws1, a> implements qa1 {
        private a() {
            super(ws1.zzbzd);
        }

        public final a a(boolean z) {
            g();
            ((ws1) this.f6370f).a(z);
            return this;
        }

        public final boolean j() {
            return ((ws1) this.f6370f).k();
        }

        /* synthetic */ a(ys1 ys1Var) {
            this();
        }

        public final a a(int i2) {
            g();
            ((ws1) this.f6370f).b(i2);
            return this;
        }
    }

    static {
        ws1 ws1Var = new ws1();
        zzbzd = ws1Var;
        e91.a((Class<ws1>) ws1.class, ws1Var);
    }

    private ws1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(boolean z) {
        this.zzdj |= 1;
        this.zzbzb = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2) {
        this.zzdj |= 2;
        this.zzbzc = i2;
    }

    public static a m() {
        return zzbzd.h();
    }

    public final boolean k() {
        return this.zzbzb;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        ys1 ys1Var = null;
        switch (ys1.f10656a[i2 - 1]) {
            case 1:
                return new ws1();
            case 2:
                return new a(ys1Var);
            case 3:
                return e91.a(zzbzd, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0007\u0000\u0002\u0004\u0001", new Object[]{"zzdj", "zzbzb", "zzbzc"});
            case 4:
                return zzbzd;
            case 5:
                wa1<ws1> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (ws1.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzbzd);
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

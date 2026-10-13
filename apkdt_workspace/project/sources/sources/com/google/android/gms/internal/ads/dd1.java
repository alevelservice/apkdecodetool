package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class dd1 extends e91<dd1, a> implements qa1 {
    private static volatile wa1<dd1> zzdv;
    private static final dd1 zzhsr;
    private int zzdj;
    private t71 zzgww;
    private byte zzhrl = 2;
    private t71 zzhsq;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<dd1, a> implements qa1 {
        private a() {
            super(dd1.zzhsr);
        }

        public final a a(t71 t71Var) {
            g();
            ((dd1) this.f6370f).b(t71Var);
            return this;
        }

        public final a b(t71 t71Var) {
            g();
            ((dd1) this.f6370f).a(t71Var);
            return this;
        }

        /* synthetic */ a(kd1 kd1Var) {
            this();
        }
    }

    static {
        dd1 dd1Var = new dd1();
        zzhsr = dd1Var;
        e91.a((Class<dd1>) dd1.class, dd1Var);
    }

    private dd1() {
        t71 t71Var = t71.zzhfn;
        this.zzhsq = t71Var;
        this.zzgww = t71Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(t71 t71Var) {
        if (t71Var != null) {
            this.zzdj |= 2;
            this.zzgww = t71Var;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(t71 t71Var) {
        if (t71Var != null) {
            this.zzdj |= 1;
            this.zzhsq = t71Var;
            return;
        }
        throw new NullPointerException();
    }

    public static a k() {
        return zzhsr.h();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        kd1 kd1Var = null;
        switch (kd1.f7673a[i2 - 1]) {
            case 1:
                return new dd1();
            case 2:
                return new a(kd1Var);
            case 3:
                return e91.a(zzhsr, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001Ԋ\u0000\u0002\n\u0001", new Object[]{"zzdj", "zzhsq", "zzgww"});
            case 4:
                return zzhsr;
            case 5:
                wa1<dd1> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (dd1.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzhsr);
                            zzdv = wa1Var;
                        }
                    }
                }
                return wa1Var;
            case 6:
                return Byte.valueOf(this.zzhrl);
            case 7:
                this.zzhrl = (byte) (obj != null ? 1 : 0);
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}

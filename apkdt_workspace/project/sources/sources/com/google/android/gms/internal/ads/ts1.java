package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ts1 extends e91<ts1, a> implements qa1 {
    private static final ts1 zzbvy;
    private static volatile wa1<ts1> zzdv;
    private int zzbuv;
    private int zzbvx;
    private int zzdj;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<ts1, a> implements qa1 {
        private a() {
            super(ts1.zzbvy);
        }

        public final a a(c cVar) {
            g();
            ((ts1) this.f6370f).a(cVar);
            return this;
        }

        /* synthetic */ a(ys1 ys1Var) {
            this();
        }

        public final a a(b bVar) {
            g();
            ((ts1) this.f6370f).a(bVar);
            return this;
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public enum b implements i91 {
        CELLULAR_NETWORK_TYPE_UNSPECIFIED(0),
        TWO_G(1),
        THREE_G(2),
        LTE(4);

        private final int value;

        static {
            new et1();
        }

        b(int i2) {
            this.value = i2;
        }

        public static k91 zzac() {
            return ft1.f6723a;
        }

        public static b zzbv(int i2) {
            if (i2 == 0) {
                return CELLULAR_NETWORK_TYPE_UNSPECIFIED;
            }
            if (i2 == 1) {
                return TWO_G;
            }
            if (i2 == 2) {
                return THREE_G;
            }
            if (i2 != 4) {
                return null;
            }
            return LTE;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + b.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.ads.i91
        public final int zzab() {
            return this.value;
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public enum c implements i91 {
        NETWORKTYPE_UNSPECIFIED(0),
        CELL(1),
        WIFI(2);

        private final int value;

        static {
            new ht1();
        }

        c(int i2) {
            this.value = i2;
        }

        public static k91 zzac() {
            return gt1.f6971a;
        }

        public static c zzbw(int i2) {
            if (i2 == 0) {
                return NETWORKTYPE_UNSPECIFIED;
            }
            if (i2 == 1) {
                return CELL;
            }
            if (i2 != 2) {
                return null;
            }
            return WIFI;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + c.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.ads.i91
        public final int zzab() {
            return this.value;
        }
    }

    static {
        ts1 ts1Var = new ts1();
        zzbvy = ts1Var;
        e91.a((Class<ts1>) ts1.class, ts1Var);
    }

    private ts1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(c cVar) {
        if (cVar != null) {
            this.zzdj |= 1;
            this.zzbuv = cVar.zzab();
            return;
        }
        throw new NullPointerException();
    }

    public static a k() {
        return zzbvy.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(b bVar) {
        if (bVar != null) {
            this.zzdj |= 2;
            this.zzbvx = bVar.zzab();
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        ys1 ys1Var = null;
        switch (ys1.f10656a[i2 - 1]) {
            case 1:
                return new ts1();
            case 2:
                return new a(ys1Var);
            case 3:
                return e91.a(zzbvy, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0000\u0002\f\u0001", new Object[]{"zzdj", "zzbuv", c.zzac(), "zzbvx", b.zzac()});
            case 4:
                return zzbvy;
            case 5:
                wa1<ts1> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (ts1.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzbvy);
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

package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.d1;

/* loaded from: classes.dex */
public final class y4 extends d1<y4, a> implements k2 {
    private static final y4 zzbfc = new y4();
    private static volatile s2<y4> zzbg;
    private int zzbb;
    private int zzbfa = -1;
    private int zzbfb;

    /* loaded from: classes.dex */
    public static final class a extends d1.a<y4, a> implements k2 {
        private a() {
            super(y4.zzbfc);
        }

        /* synthetic */ a(a5 a5Var) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public enum b implements g1 {
        UNKNOWN_MOBILE_SUBTYPE(0),
        GPRS(1),
        EDGE(2),
        UMTS(3),
        CDMA(4),
        EVDO_0(5),
        EVDO_A(6),
        RTT(7),
        HSDPA(8),
        HSUPA(9),
        HSPA(10),
        IDEN(11),
        EVDO_B(12),
        LTE(13),
        EHRPD(14),
        HSPAP(15),
        GSM(16),
        TD_SCDMA(17),
        IWLAN(18),
        LTE_CA(19),
        COMBINED(100);

        private static final h1<b> z = new b5();
        private final int value;

        b(int i2) {
            this.value = i2;
        }

        public static b zzaz(int i2) {
            if (i2 == 100) {
                return COMBINED;
            }
            switch (i2) {
                case 0:
                    return UNKNOWN_MOBILE_SUBTYPE;
                case 1:
                    return GPRS;
                case 2:
                    return EDGE;
                case 3:
                    return UMTS;
                case 4:
                    return CDMA;
                case 5:
                    return EVDO_0;
                case 6:
                    return EVDO_A;
                case 7:
                    return RTT;
                case 8:
                    return HSDPA;
                case 9:
                    return HSUPA;
                case 10:
                    return HSPA;
                case 11:
                    return IDEN;
                case 12:
                    return EVDO_B;
                case 13:
                    return LTE;
                case 14:
                    return EHRPD;
                case 15:
                    return HSPAP;
                case 16:
                    return GSM;
                case 17:
                    return TD_SCDMA;
                case 18:
                    return IWLAN;
                case 19:
                    return LTE_CA;
                default:
                    return null;
            }
        }

        public static h1<b> zzd() {
            return z;
        }

        @Override // com.google.android.gms.internal.clearcut.g1
        public final int zzc() {
            return this.value;
        }
    }

    /* loaded from: classes.dex */
    public enum c implements g1 {
        NONE(-1),
        MOBILE(0),
        WIFI(1),
        MOBILE_MMS(2),
        MOBILE_SUPL(3),
        MOBILE_DUN(4),
        MOBILE_HIPRI(5),
        WIMAX(6),
        BLUETOOTH(7),
        DUMMY(8),
        ETHERNET(9),
        MOBILE_FOTA(10),
        MOBILE_IMS(11),
        MOBILE_CBS(12),
        WIFI_P2P(13),
        MOBILE_IA(14),
        MOBILE_EMERGENCY(15),
        PROXY(16),
        VPN(17);

        private static final h1<c> x = new c5();
        private final int value;

        c(int i2) {
            this.value = i2;
        }

        public static c zzba(int i2) {
            switch (i2) {
                case -1:
                    return NONE;
                case 0:
                    return MOBILE;
                case 1:
                    return WIFI;
                case 2:
                    return MOBILE_MMS;
                case 3:
                    return MOBILE_SUPL;
                case 4:
                    return MOBILE_DUN;
                case 5:
                    return MOBILE_HIPRI;
                case 6:
                    return WIMAX;
                case 7:
                    return BLUETOOTH;
                case 8:
                    return DUMMY;
                case 9:
                    return ETHERNET;
                case 10:
                    return MOBILE_FOTA;
                case 11:
                    return MOBILE_IMS;
                case 12:
                    return MOBILE_CBS;
                case 13:
                    return WIFI_P2P;
                case 14:
                    return MOBILE_IA;
                case 15:
                    return MOBILE_EMERGENCY;
                case 16:
                    return PROXY;
                case 17:
                    return VPN;
                default:
                    return null;
            }
        }

        public static h1<c> zzd() {
            return x;
        }

        @Override // com.google.android.gms.internal.clearcut.g1
        public final int zzc() {
            return this.value;
        }
    }

    static {
        d1.a((Class<y4>) y4.class, zzbfc);
    }

    private y4() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.clearcut.s2<com.google.android.gms.internal.clearcut.y4>, com.google.android.gms.internal.clearcut.d1$b] */
    @Override // com.google.android.gms.internal.clearcut.d1
    public final Object a(int i2, Object obj, Object obj2) {
        s2<y4> s2Var;
        a5 a5Var = null;
        switch (a5.f11357a[i2 - 1]) {
            case 1:
                return new y4();
            case 2:
                return new a(a5Var);
            case 3:
                return d1.a(zzbfc, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\f\u0000\u0002\f\u0001", new Object[]{"zzbb", "zzbfa", c.zzd(), "zzbfb", b.zzd()});
            case 4:
                return zzbfc;
            case 5:
                s2<y4> s2Var2 = zzbg;
                s2<y4> s2Var3 = s2Var2;
                if (s2Var2 == null) {
                    synchronized (y4.class) {
                        s2<y4> s2Var4 = zzbg;
                        s2Var = s2Var4;
                        if (s2Var4 == null) {
                            ?? bVar = new d1.b(zzbfc);
                            zzbg = bVar;
                            s2Var = bVar;
                        }
                    }
                    s2Var3 = s2Var;
                }
                return s2Var3;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}

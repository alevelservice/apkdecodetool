package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ss1 extends e91<ss1, b> implements qa1 {
    private static final ss1 zzbux;
    private static volatile wa1<ss1> zzdv;
    private int zzbuv;
    private vs1 zzbuw;
    private int zzdj;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public enum a implements i91 {
        AD_FORMAT_TYPE_UNSPECIFIED(0),
        BANNER(1),
        INTERSTITIAL(2),
        NATIVE_EXPRESS(3),
        NATIVE_CONTENT(4),
        NATIVE_APP_INSTALL(5),
        NATIVE_CUSTOM_TEMPLATE(6),
        DFP_BANNER(7),
        DFP_INTERSTITIAL(8),
        REWARD_BASED_VIDEO_AD(9),
        BANNER_SEARCH_ADS(10);

        private final int value;

        static {
            new at1();
        }

        a(int i2) {
            this.value = i2;
        }

        public static k91 zzac() {
            return zs1.f10849a;
        }

        public static a zzbt(int i2) {
            switch (i2) {
                case 0:
                    return AD_FORMAT_TYPE_UNSPECIFIED;
                case 1:
                    return BANNER;
                case 2:
                    return INTERSTITIAL;
                case 3:
                    return NATIVE_EXPRESS;
                case 4:
                    return NATIVE_CONTENT;
                case 5:
                    return NATIVE_APP_INSTALL;
                case 6:
                    return NATIVE_CUSTOM_TEMPLATE;
                case 7:
                    return DFP_BANNER;
                case 8:
                    return DFP_INTERSTITIAL;
                case 9:
                    return REWARD_BASED_VIDEO_AD;
                case 10:
                    return BANNER_SEARCH_ADS;
                default:
                    return null;
            }
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.ads.i91
        public final int zzab() {
            return this.value;
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class b extends e91.a<ss1, b> implements qa1 {
        private b() {
            super(ss1.zzbux);
        }

        /* synthetic */ b(ys1 ys1Var) {
            this();
        }
    }

    static {
        ss1 ss1Var = new ss1();
        zzbux = ss1Var;
        e91.a((Class<ss1>) ss1.class, ss1Var);
    }

    private ss1() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        ys1 ys1Var = null;
        switch (ys1.f10656a[i2 - 1]) {
            case 1:
                return new ss1();
            case 2:
                return new b(ys1Var);
            case 3:
                return e91.a(zzbux, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0000\u0002\t\u0001", new Object[]{"zzdj", "zzbuv", a.zzac(), "zzbuw"});
            case 4:
                return zzbux;
            case 5:
                wa1<ss1> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (ss1.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzbux);
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

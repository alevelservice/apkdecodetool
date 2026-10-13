package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public final class zq extends e91<zq, a> implements qa1 {
    private static volatile wa1<zq> zzdv;
    private static final zq zzea;
    private int zzdj;
    private int zzdz = 2;

    /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<zq, a> implements qa1 {
        private a() {
            super(zq.zzea);
        }

        /* synthetic */ a(xp xpVar) {
            this();
        }
    }

    static {
        zq zqVar = new zq();
        zzea = zqVar;
        e91.a((Class<zq>) zq.class, zqVar);
    }

    private zq() {
    }

    public static zq n() {
        return zzea;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        xp xpVar = null;
        switch (xp.f10410a[i2 - 1]) {
            case 1:
                return new zq();
            case 2:
                return new a(xpVar);
            case 3:
                return e91.a(zzea, "\u0001\u0001\u0000\u0001\u001b\u001b\u0001\u0000\u0000\u0000\u001b\f\u0000", new Object[]{"zzdj", "zzdz", ct.zzac()});
            case 4:
                return zzea;
            case 5:
                wa1<zq> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (zq.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzea);
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

    public final ct k() {
        ct zze = ct.zze(this.zzdz);
        return zze == null ? ct.ENUM_SIGNAL_SOURCE_ADSHIELD : zze;
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public final class yq extends e91<yq, a> implements qa1 {
    private static volatile wa1<yq> zzdv;
    private static final yq zzdy;
    private int zzdj;
    private zq zzdw;
    private ar zzdx;

    /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<yq, a> implements qa1 {
        private a() {
            super(yq.zzdy);
        }

        /* synthetic */ a(xp xpVar) {
            this();
        }
    }

    static {
        yq yqVar = new yq();
        zzdy = yqVar;
        e91.a((Class<yq>) yq.class, yqVar);
    }

    private yq() {
    }

    public static yq a(byte[] bArr, q81 q81Var) {
        return (yq) e91.a(zzdy, bArr, q81Var);
    }

    public final boolean k() {
        return (this.zzdj & 1) != 0;
    }

    public final zq m() {
        zq zqVar = this.zzdw;
        return zqVar == null ? zq.n() : zqVar;
    }

    public final boolean n() {
        return (this.zzdj & 2) != 0;
    }

    public final ar o() {
        ar arVar = this.zzdx;
        return arVar == null ? ar.n() : arVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        xp xpVar = null;
        switch (xp.f10410a[i2 - 1]) {
            case 1:
                return new yq();
            case 2:
                return new a(xpVar);
            case 3:
                return e91.a(zzdy, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001", new Object[]{"zzdj", "zzdw", "zzdx"});
            case 4:
                return zzdy;
            case 5:
                wa1<yq> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (yq.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzdy);
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

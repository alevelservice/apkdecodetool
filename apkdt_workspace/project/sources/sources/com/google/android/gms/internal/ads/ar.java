package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public final class ar extends e91<ar, a> implements qa1 {
    private static volatile wa1<ar> zzdv;
    private static final ar zzeo;
    private int zzdj;
    private String zzei = "";
    private String zzej = "";
    private String zzek = "";
    private String zzel = "";
    private String zzem = "";
    private String zzen = "";

    /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<ar, a> implements qa1 {
        private a() {
            super(ar.zzeo);
        }

        /* synthetic */ a(xp xpVar) {
            this();
        }
    }

    static {
        ar arVar = new ar();
        zzeo = arVar;
        e91.a((Class<ar>) ar.class, arVar);
    }

    private ar() {
    }

    public static ar n() {
        return zzeo;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        xp xpVar = null;
        switch (xp.f10410a[i2 - 1]) {
            case 1:
                return new ar();
            case 2:
                return new a(xpVar);
            case 3:
                return e91.a(zzeo, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\b\u0000\u0002\b\u0001\u0003\b\u0002\u0004\b\u0003\u0005\b\u0004\u0006\b\u0005", new Object[]{"zzdj", "zzei", "zzej", "zzek", "zzel", "zzem", "zzen"});
            case 4:
                return zzeo;
            case 5:
                wa1<ar> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (ar.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzeo);
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

    public final String k() {
        return this.zzei;
    }

    public final String m() {
        return this.zzen;
    }
}

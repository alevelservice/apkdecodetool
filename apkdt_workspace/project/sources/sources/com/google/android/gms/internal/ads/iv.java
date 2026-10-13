package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public final class iv extends e91<iv, a> implements qa1 {
    private static volatile wa1<iv> zzdv;
    private static final iv zzlg;
    private int zzdj;
    private String zzen = "";

    /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<iv, a> implements qa1 {
        private a() {
            super(iv.zzlg);
        }

        public final a a(String str) {
            g();
            ((iv) this.f6370f).a(str);
            return this;
        }

        /* synthetic */ a(kw kwVar) {
            this();
        }
    }

    static {
        iv ivVar = new iv();
        zzlg = ivVar;
        e91.a((Class<iv>) iv.class, ivVar);
    }

    private iv() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str != null) {
            this.zzdj |= 1;
            this.zzen = str;
            return;
        }
        throw new NullPointerException();
    }

    public static a k() {
        return zzlg.h();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        kw kwVar = null;
        switch (kw.f7774a[i2 - 1]) {
            case 1:
                return new iv();
            case 2:
                return new a(kwVar);
            case 3:
                return e91.a(zzlg, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\b\u0000", new Object[]{"zzdj", "zzen"});
            case 4:
                return zzlg;
            case 5:
                wa1<iv> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (iv.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzlg);
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

package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class hd1 extends e91<hd1, a> implements qa1 {
    private static volatile wa1<hd1> zzdv;
    private static final hd1 zzhuq;
    private int zzdj;
    private String zzhun = "";
    private long zzhuo;
    private boolean zzhup;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<hd1, a> implements qa1 {
        private a() {
            super(hd1.zzhuq);
        }

        public final a a(String str) {
            g();
            ((hd1) this.f6370f).a(str);
            return this;
        }

        /* synthetic */ a(kd1 kd1Var) {
            this();
        }

        public final a a(long j2) {
            g();
            ((hd1) this.f6370f).a(j2);
            return this;
        }

        public final a a(boolean z) {
            g();
            ((hd1) this.f6370f).a(z);
            return this;
        }
    }

    static {
        hd1 hd1Var = new hd1();
        zzhuq = hd1Var;
        e91.a((Class<hd1>) hd1.class, hd1Var);
    }

    private hd1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str != null) {
            this.zzdj |= 1;
            this.zzhun = str;
            return;
        }
        throw new NullPointerException();
    }

    public static a k() {
        return zzhuq.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(long j2) {
        this.zzdj |= 2;
        this.zzhuo = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(boolean z) {
        this.zzdj |= 4;
        this.zzhup = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        kd1 kd1Var = null;
        switch (kd1.f7673a[i2 - 1]) {
            case 1:
                return new hd1();
            case 2:
                return new a(kd1Var);
            case 3:
                return e91.a(zzhuq, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\b\u0000\u0002\u0002\u0001\u0003\u0007\u0002", new Object[]{"zzdj", "zzhun", "zzhuo", "zzhup"});
            case 4:
                return zzhuq;
            case 5:
                wa1<hd1> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (hd1.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzhuq);
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

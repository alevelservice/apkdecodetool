package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public final class wo extends e91<wo, a> implements qa1 {
    private static final wo zzdu;
    private static volatile wa1<wo> zzdv;
    private int zzdj;
    private long zzdl;
    private long zzdp;
    private long zzdq;
    private long zzds;
    private String zzdk = "";
    private String zzdm = "";
    private String zzdn = "";
    private String zzdo = "";
    private String zzdr = "";
    private String zzdt = "";

    /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<wo, a> implements qa1 {
        private a() {
            super(wo.zzdu);
        }

        public final a a(String str) {
            g();
            ((wo) this.f6370f).a(str);
            return this;
        }

        public final a b(String str) {
            g();
            ((wo) this.f6370f).b(str);
            return this;
        }

        public final a c(String str) {
            g();
            ((wo) this.f6370f).c(str);
            return this;
        }

        public final a d(String str) {
            g();
            ((wo) this.f6370f).d(str);
            return this;
        }

        /* synthetic */ a(wn wnVar) {
            this();
        }

        public final a a(long j2) {
            g();
            ((wo) this.f6370f).a(j2);
            return this;
        }
    }

    static {
        wo woVar = new wo();
        zzdu = woVar;
        e91.a((Class<wo>) wo.class, woVar);
    }

    private wo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str != null) {
            this.zzdj |= 1;
            this.zzdk = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(String str) {
        if (str != null) {
            this.zzdj |= 4;
            this.zzdm = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(String str) {
        if (str != null) {
            this.zzdj |= 8;
            this.zzdn = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(String str) {
        if (str != null) {
            this.zzdj |= 16;
            this.zzdo = str;
            return;
        }
        throw new NullPointerException();
    }

    public static a k() {
        return zzdu.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(long j2) {
        this.zzdj |= 2;
        this.zzdl = j2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        wn wnVar = null;
        switch (wn.f10151a[i2 - 1]) {
            case 1:
                return new wo();
            case 2:
                return new a(wnVar);
            case 3:
                return e91.a(zzdu, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001\b\u0000\u0002\u0002\u0001\u0003\b\u0002\u0004\b\u0003\u0005\b\u0004\u0006\u0002\u0005\u0007\u0002\u0006\b\b\u0007\t\u0002\b\n\b\t", new Object[]{"zzdj", "zzdk", "zzdl", "zzdm", "zzdn", "zzdo", "zzdp", "zzdq", "zzdr", "zzds", "zzdt"});
            case 4:
                return zzdu;
            case 5:
                wa1<wo> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (wo.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzdu);
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

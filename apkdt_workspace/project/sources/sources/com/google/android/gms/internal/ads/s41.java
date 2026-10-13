package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class s41 extends e91<s41, a> implements qa1 {
    private static volatile wa1<s41> zzdv;
    private static final s41 zzgxs;
    private int zzgxp;
    private boolean zzgxq;
    private String zzgxo = "";
    private String zzgwv = "";
    private String zzgxr = "";

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<s41, a> implements qa1 {
        private a() {
            super(s41.zzgxs);
        }

        public final a a(String str) {
            g();
            ((s41) this.f6370f).b(str);
            return this;
        }

        public final a b(String str) {
            g();
            ((s41) this.f6370f).a(str);
            return this;
        }

        public final a c(String str) {
            g();
            ((s41) this.f6370f).c(str);
            return this;
        }

        /* synthetic */ a(u41 u41Var) {
            this();
        }

        public final a a(int i2) {
            g();
            ((s41) this.f6370f).b(0);
            return this;
        }

        public final a a(boolean z) {
            g();
            ((s41) this.f6370f).a(true);
            return this;
        }
    }

    static {
        s41 s41Var = new s41();
        zzgxs = s41Var;
        e91.a((Class<s41>) s41.class, s41Var);
    }

    private s41() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str != null) {
            this.zzgwv = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(String str) {
        if (str != null) {
            this.zzgxo = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(String str) {
        if (str != null) {
            this.zzgxr = str;
            return;
        }
        throw new NullPointerException();
    }

    public static a r() {
        return zzgxs.h();
    }

    public final String k() {
        return this.zzgwv;
    }

    public final String m() {
        return this.zzgxo;
    }

    public final int n() {
        return this.zzgxp;
    }

    public final boolean o() {
        return this.zzgxq;
    }

    public final String q() {
        return this.zzgxr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(boolean z) {
        this.zzgxq = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2) {
        this.zzgxp = i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        u41 u41Var = null;
        switch (u41.f9680a[i2 - 1]) {
            case 1:
                return new s41();
            case 2:
                return new a(u41Var);
            case 3:
                return e91.a(zzgxs, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zzgxo", "zzgwv", "zzgxp", "zzgxq", "zzgxr"});
            case 4:
                return zzgxs;
            case 5:
                wa1<s41> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (s41.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgxs);
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

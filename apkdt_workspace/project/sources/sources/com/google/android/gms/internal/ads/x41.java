package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class x41 extends e91<x41, a> implements qa1 {
    private static volatile wa1<x41> zzdv;
    private static final x41 zzgyb;
    private int zzgxt;
    private l91<b> zzgya = e91.j();

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<x41, a> implements qa1 {
        private a() {
            super(x41.zzgyb);
        }

        public final a a(int i2) {
            g();
            ((x41) this.f6370f).b(i2);
            return this;
        }

        /* synthetic */ a(y41 y41Var) {
            this();
        }

        public final a a(b bVar) {
            g();
            ((x41) this.f6370f).a(bVar);
            return this;
        }
    }

    static {
        x41 x41Var = new x41();
        zzgyb = x41Var;
        e91.a((Class<x41>) x41.class, x41Var);
    }

    private x41() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(b bVar) {
        if (bVar != null) {
            if (!this.zzgya.R()) {
                this.zzgya = e91.a(this.zzgya);
            }
            this.zzgya.add(bVar);
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2) {
        this.zzgxt = i2;
    }

    public static a k() {
        return zzgyb.h();
    }

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class b extends e91<b, a> implements qa1 {
        private static volatile wa1<b> zzdv;
        private static final b zzgyc;
        private String zzgwv = "";
        private int zzgxm;
        private int zzgxx;
        private int zzgxy;

        /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
        /* loaded from: classes.dex */
        public static final class a extends e91.a<b, a> implements qa1 {
            private a() {
                super(b.zzgyc);
            }

            public final a a(String str) {
                g();
                ((b) this.f6370f).a(str);
                return this;
            }

            /* synthetic */ a(y41 y41Var) {
                this();
            }

            public final a a(p41 p41Var) {
                g();
                ((b) this.f6370f).a(p41Var);
                return this;
            }

            public final a a(int i2) {
                g();
                ((b) this.f6370f).b(i2);
                return this;
            }

            public final a a(i51 i51Var) {
                g();
                ((b) this.f6370f).a(i51Var);
                return this;
            }
        }

        static {
            b bVar = new b();
            zzgyc = bVar;
            e91.a((Class<b>) b.class, bVar);
        }

        private b() {
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
        public final void b(int i2) {
            this.zzgxy = i2;
        }

        public static a k() {
            return zzgyc.h();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(p41 p41Var) {
            if (p41Var != null) {
                this.zzgxx = p41Var.zzab();
                return;
            }
            throw new NullPointerException();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(i51 i51Var) {
            if (i51Var != null) {
                this.zzgxm = i51Var.zzab();
                return;
            }
            throw new NullPointerException();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.e91
        public final Object a(int i2, Object obj, Object obj2) {
            y41 y41Var = null;
            switch (y41.f10489a[i2 - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(y41Var);
                case 3:
                    return e91.a(zzgyc, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzgwv", "zzgxx", "zzgxy", "zzgxm"});
                case 4:
                    return zzgyc;
                case 5:
                    wa1<b> wa1Var = zzdv;
                    if (wa1Var == null) {
                        synchronized (b.class) {
                            wa1Var = zzdv;
                            if (wa1Var == null) {
                                wa1Var = new e91.c<>(zzgyc);
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        y41 y41Var = null;
        switch (y41.f10489a[i2 - 1]) {
            case 1:
                return new x41();
            case 2:
                return new a(y41Var);
            case 3:
                return e91.a(zzgyb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzgxt", "zzgya", b.class});
            case 4:
                return zzgyb;
            case 5:
                wa1<x41> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (x41.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgyb);
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

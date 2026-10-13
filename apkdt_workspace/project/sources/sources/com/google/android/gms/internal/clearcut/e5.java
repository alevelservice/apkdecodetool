package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.d1;
import java.util.List;

/* loaded from: classes.dex */
public final class e5 extends d1<e5, a> implements k2 {
    private static volatile s2<e5> zzbg;
    private static final e5 zzbir = new e5();
    private i1<b> zzbiq = d1.g();

    /* loaded from: classes.dex */
    public static final class a extends d1.a<e5, a> implements k2 {
        private a() {
            super(e5.zzbir);
        }

        /* synthetic */ a(f5 f5Var) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends d1<b, a> implements k2 {
        private static volatile s2<b> zzbg;
        private static final b zzbiv = new b();
        private int zzbb;
        private String zzbis = "";
        private long zzbit;
        private long zzbiu;
        private int zzya;

        /* loaded from: classes.dex */
        public static final class a extends d1.a<b, a> implements k2 {
            private a() {
                super(b.zzbiv);
            }

            /* synthetic */ a(f5 f5Var) {
                this();
            }

            public final a a(long j2) {
                f();
                ((b) this.f11386f).a(j2);
                return this;
            }

            public final a a(String str) {
                f();
                ((b) this.f11386f).a(str);
                return this;
            }

            public final a b(long j2) {
                f();
                ((b) this.f11386f).b(j2);
                return this;
            }
        }

        static {
            d1.a((Class<b>) b.class, zzbiv);
        }

        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(long j2) {
            this.zzbb |= 4;
            this.zzbit = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzbb |= 2;
            this.zzbis = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void b(long j2) {
            this.zzbb |= 8;
            this.zzbiu = j2;
        }

        public static a n() {
            return (a) zzbiv.a(d1.e.f11394e, (Object) null, (Object) null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.clearcut.d1$b, com.google.android.gms.internal.clearcut.s2<com.google.android.gms.internal.clearcut.e5$b>] */
        @Override // com.google.android.gms.internal.clearcut.d1
        public final Object a(int i2, Object obj, Object obj2) {
            s2<b> s2Var;
            f5 f5Var = null;
            switch (f5.f11425a[i2 - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(f5Var);
                case 3:
                    return d1.a(zzbiv, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001\u0004\u0000\u0002\b\u0001\u0003\u0002\u0002\u0004\u0002\u0003", new Object[]{"zzbb", "zzya", "zzbis", "zzbit", "zzbiu"});
                case 4:
                    return zzbiv;
                case 5:
                    s2<b> s2Var2 = zzbg;
                    s2<b> s2Var3 = s2Var2;
                    if (s2Var2 == null) {
                        synchronized (b.class) {
                            s2<b> s2Var4 = zzbg;
                            s2Var = s2Var4;
                            if (s2Var4 == null) {
                                ?? bVar = new d1.b(zzbiv);
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

        public final int h() {
            return this.zzya;
        }

        public final boolean i() {
            return (this.zzbb & 1) == 1;
        }

        public final String j() {
            return this.zzbis;
        }

        public final long k() {
            return this.zzbit;
        }

        public final long l() {
            return this.zzbiu;
        }
    }

    static {
        d1.a((Class<e5>) e5.class, zzbir);
    }

    private e5() {
    }

    public static e5 a(byte[] bArr) {
        return (e5) d1.b(zzbir, bArr);
    }

    public static e5 i() {
        return zzbir;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.clearcut.s2<com.google.android.gms.internal.clearcut.e5>, com.google.android.gms.internal.clearcut.d1$b] */
    @Override // com.google.android.gms.internal.clearcut.d1
    public final Object a(int i2, Object obj, Object obj2) {
        s2<e5> s2Var;
        f5 f5Var = null;
        switch (f5.f11425a[i2 - 1]) {
            case 1:
                return new e5();
            case 2:
                return new a(f5Var);
            case 3:
                return d1.a(zzbir, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzbiq", b.class});
            case 4:
                return zzbir;
            case 5:
                s2<e5> s2Var2 = zzbg;
                s2<e5> s2Var3 = s2Var2;
                if (s2Var2 == null) {
                    synchronized (e5.class) {
                        s2<e5> s2Var4 = zzbg;
                        s2Var = s2Var4;
                        if (s2Var4 == null) {
                            ?? bVar = new d1.b(zzbir);
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

    public final List<b> h() {
        return this.zzbiq;
    }
}

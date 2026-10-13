package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class w41 extends e91<w41, b> implements qa1 {
    private static volatile wa1<w41> zzdv;
    private static final w41 zzgxv;
    private int zzgxt;
    private l91<a> zzgxu = e91.j();

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91<a, C0094a> implements qa1 {
        private static volatile wa1<a> zzdv;
        private static final a zzgxz;
        private int zzgxm;
        private l41 zzgxw;
        private int zzgxx;
        private int zzgxy;

        /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
        /* renamed from: com.google.android.gms.internal.ads.w41$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0094a extends e91.a<a, C0094a> implements qa1 {
            private C0094a() {
                super(a.zzgxz);
            }

            /* synthetic */ C0094a(v41 v41Var) {
                this();
            }
        }

        static {
            a aVar = new a();
            zzgxz = aVar;
            e91.a((Class<a>) a.class, aVar);
        }

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.e91
        public final Object a(int i2, Object obj, Object obj2) {
            v41 v41Var = null;
            switch (v41.f9861a[i2 - 1]) {
                case 1:
                    return new a();
                case 2:
                    return new C0094a(v41Var);
                case 3:
                    return e91.a(zzgxz, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzgxw", "zzgxx", "zzgxy", "zzgxm"});
                case 4:
                    return zzgxz;
                case 5:
                    wa1<a> wa1Var = zzdv;
                    if (wa1Var == null) {
                        synchronized (a.class) {
                            wa1Var = zzdv;
                            if (wa1Var == null) {
                                wa1Var = new e91.c<>(zzgxz);
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

        public final p41 k() {
            p41 zzep = p41.zzep(this.zzgxx);
            return zzep == null ? p41.UNRECOGNIZED : zzep;
        }

        public final i51 m() {
            i51 zzfa = i51.zzfa(this.zzgxm);
            return zzfa == null ? i51.UNRECOGNIZED : zzfa;
        }

        public final boolean n() {
            return this.zzgxw != null;
        }

        public final l41 o() {
            l41 l41Var = this.zzgxw;
            return l41Var == null ? l41.q() : l41Var;
        }

        public final int q() {
            return this.zzgxy;
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class b extends e91.a<w41, b> implements qa1 {
        private b() {
            super(w41.zzgxv);
        }

        /* synthetic */ b(v41 v41Var) {
            this();
        }
    }

    static {
        w41 w41Var = new w41();
        zzgxv = w41Var;
        e91.a((Class<w41>) w41.class, w41Var);
    }

    private w41() {
    }

    public static w41 a(byte[] bArr) {
        return (w41) e91.a(zzgxv, bArr);
    }

    public final int k() {
        return this.zzgxt;
    }

    public final List<a> m() {
        return this.zzgxu;
    }

    public final int n() {
        return this.zzgxu.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        v41 v41Var = null;
        switch (v41.f9861a[i2 - 1]) {
            case 1:
                return new w41();
            case 2:
                return new b(v41Var);
            case 3:
                return e91.a(zzgxv, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzgxt", "zzgxu", a.class});
            case 4:
                return zzgxv;
            case 5:
                wa1<w41> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (w41.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgxv);
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

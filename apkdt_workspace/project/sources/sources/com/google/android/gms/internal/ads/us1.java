package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;
import com.google.android.gms.internal.ads.ss1;
import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class us1 extends e91<us1, c> implements qa1 {
    private static final us1 zzbxe;
    private static volatile wa1<us1> zzdv;
    private int zzbwz;
    private int zzbxa;
    private long zzbxb;
    private long zzbxd;
    private int zzdj;
    private l91<a> zzbtu = e91.j();
    private String zzdk = "";
    private String zzbxc = "";

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public enum b implements i91 {
        UNSPECIFIED(0),
        CONNECTING(1),
        CONNECTED(2),
        DISCONNECTING(3),
        DISCONNECTED(4),
        SUSPENDED(5);

        private final int value;

        static {
            new kt1();
        }

        b(int i2) {
            this.value = i2;
        }

        public static k91 zzac() {
            return jt1.f7567a;
        }

        public static b zzcb(int i2) {
            if (i2 == 0) {
                return UNSPECIFIED;
            }
            if (i2 == 1) {
                return CONNECTING;
            }
            if (i2 == 2) {
                return CONNECTED;
            }
            if (i2 == 3) {
                return DISCONNECTING;
            }
            if (i2 == 4) {
                return DISCONNECTED;
            }
            if (i2 != 5) {
                return null;
            }
            return SUSPENDED;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + b.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.ads.i91
        public final int zzab() {
            return this.value;
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class c extends e91.a<us1, c> implements qa1 {
        private c() {
            super(us1.zzbxe);
        }

        public final c a(Iterable<? extends a> iterable) {
            g();
            ((us1) this.f6370f).a(iterable);
            return this;
        }

        public final c b(int i2) {
            g();
            ((us1) this.f6370f).c(i2);
            return this;
        }

        /* synthetic */ c(ys1 ys1Var) {
            this();
        }

        public final c a(int i2) {
            g();
            ((us1) this.f6370f).b(i2);
            return this;
        }

        public final c b(String str) {
            g();
            ((us1) this.f6370f).a(str);
            return this;
        }

        public final c a(long j2) {
            g();
            ((us1) this.f6370f).a(j2);
            return this;
        }

        public final c b(long j2) {
            g();
            ((us1) this.f6370f).b(j2);
            return this;
        }

        public final c a(String str) {
            g();
            ((us1) this.f6370f).b(str);
            return this;
        }
    }

    static {
        us1 us1Var = new us1();
        zzbxe = us1Var;
        e91.a((Class<us1>) us1.class, us1Var);
    }

    private us1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Iterable<? extends a> iterable) {
        if (!this.zzbtu.R()) {
            this.zzbtu = e91.a(this.zzbtu);
        }
        m71.a(iterable, this.zzbtu);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2) {
        this.zzdj |= 1;
        this.zzbwz = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(int i2) {
        this.zzdj |= 2;
        this.zzbxa = i2;
    }

    public static c k() {
        return zzbxe.h();
    }

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91<a, C0093a> implements qa1 {
        private static final m91<Integer, ss1.a> zzbwq = new it1();
        private static final a zzbwy;
        private static volatile wa1<a> zzdv;
        private long zzbwl;
        private int zzbwm;
        private long zzbwn;
        private long zzbwo;
        private j91 zzbwp = e91.i();
        private ts1 zzbwr;
        private int zzbws;
        private int zzbwt;
        private int zzbwu;
        private int zzbwv;
        private int zzbww;
        private int zzbwx;
        private int zzdj;

        /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
        /* renamed from: com.google.android.gms.internal.ads.us1$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0093a extends e91.a<a, C0093a> implements qa1 {
            private C0093a() {
                super(a.zzbwy);
            }

            public final C0093a a(long j2) {
                g();
                ((a) this.f6370f).a(j2);
                return this;
            }

            public final C0093a b(long j2) {
                g();
                ((a) this.f6370f).b(j2);
                return this;
            }

            public final C0093a c(long j2) {
                g();
                ((a) this.f6370f).c(j2);
                return this;
            }

            public final C0093a d(bt1 bt1Var) {
                g();
                ((a) this.f6370f).d(bt1Var);
                return this;
            }

            public final C0093a e(bt1 bt1Var) {
                g();
                ((a) this.f6370f).e(bt1Var);
                return this;
            }

            /* synthetic */ C0093a(ys1 ys1Var) {
                this();
            }

            public final C0093a a(bt1 bt1Var) {
                g();
                ((a) this.f6370f).a(bt1Var);
                return this;
            }

            public final C0093a b(bt1 bt1Var) {
                g();
                ((a) this.f6370f).b(bt1Var);
                return this;
            }

            public final C0093a c(bt1 bt1Var) {
                g();
                ((a) this.f6370f).c(bt1Var);
                return this;
            }

            public final C0093a a(Iterable<? extends ss1.a> iterable) {
                g();
                ((a) this.f6370f).a(iterable);
                return this;
            }

            public final C0093a a(ts1 ts1Var) {
                g();
                ((a) this.f6370f).a(ts1Var);
                return this;
            }

            public final C0093a a(int i2) {
                g();
                ((a) this.f6370f).b(i2);
                return this;
            }

            public final C0093a a(b bVar) {
                g();
                ((a) this.f6370f).a(bVar);
                return this;
            }
        }

        static {
            a aVar = new a();
            zzbwy = aVar;
            e91.a((Class<a>) a.class, aVar);
        }

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(long j2) {
            this.zzdj |= 1;
            this.zzbwl = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void b(long j2) {
            this.zzdj |= 4;
            this.zzbwn = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void c(long j2) {
            this.zzdj |= 8;
            this.zzbwo = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void d(bt1 bt1Var) {
            if (bt1Var != null) {
                this.zzdj |= 128;
                this.zzbwu = bt1Var.zzab();
                return;
            }
            throw new NullPointerException();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void e(bt1 bt1Var) {
            if (bt1Var != null) {
                this.zzdj |= 512;
                this.zzbww = bt1Var.zzab();
                return;
            }
            throw new NullPointerException();
        }

        public static C0093a n() {
            return zzbwy.h();
        }

        public final long k() {
            return this.zzbwl;
        }

        public final bt1 m() {
            bt1 zzbu = bt1.zzbu(this.zzbwm);
            return zzbu == null ? bt1.ENUM_FALSE : zzbu;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(bt1 bt1Var) {
            if (bt1Var != null) {
                this.zzdj |= 2;
                this.zzbwm = bt1Var.zzab();
                return;
            }
            throw new NullPointerException();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void b(bt1 bt1Var) {
            if (bt1Var != null) {
                this.zzdj |= 32;
                this.zzbws = bt1Var.zzab();
                return;
            }
            throw new NullPointerException();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void c(bt1 bt1Var) {
            if (bt1Var != null) {
                this.zzdj |= 64;
                this.zzbwt = bt1Var.zzab();
                return;
            }
            throw new NullPointerException();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(Iterable<? extends ss1.a> iterable) {
            if (!this.zzbwp.R()) {
                this.zzbwp = e91.a(this.zzbwp);
            }
            Iterator<? extends ss1.a> it = iterable.iterator();
            while (it.hasNext()) {
                this.zzbwp.h(it.next().zzab());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void b(int i2) {
            this.zzdj |= 256;
            this.zzbwv = i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(ts1 ts1Var) {
            if (ts1Var != null) {
                this.zzbwr = ts1Var;
                this.zzdj |= 16;
                return;
            }
            throw new NullPointerException();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(b bVar) {
            if (bVar != null) {
                this.zzdj |= 1024;
                this.zzbwx = bVar.zzab();
                return;
            }
            throw new NullPointerException();
        }

        public static a a(byte[] bArr) {
            return (a) e91.a(zzbwy, bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.e91
        public final Object a(int i2, Object obj, Object obj2) {
            ys1 ys1Var = null;
            switch (ys1.f10656a[i2 - 1]) {
                case 1:
                    return new a();
                case 2:
                    return new C0093a(ys1Var);
                case 3:
                    return e91.a(zzbwy, "\u0001\f\u0000\u0001\u0001\f\f\u0000\u0001\u0000\u0001\u0002\u0000\u0002\f\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u001e\u0006\t\u0004\u0007\f\u0005\b\f\u0006\t\f\u0007\n\u0004\b\u000b\f\t\f\f\n", new Object[]{"zzdj", "zzbwl", "zzbwm", bt1.zzac(), "zzbwn", "zzbwo", "zzbwp", ss1.a.zzac(), "zzbwr", "zzbws", bt1.zzac(), "zzbwt", bt1.zzac(), "zzbwu", bt1.zzac(), "zzbwv", "zzbww", bt1.zzac(), "zzbwx", b.zzac()});
                case 4:
                    return zzbwy;
                case 5:
                    wa1<a> wa1Var = zzdv;
                    if (wa1Var == null) {
                        synchronized (a.class) {
                            wa1Var = zzdv;
                            if (wa1Var == null) {
                                wa1Var = new e91.c<>(zzbwy);
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(String str) {
        if (str != null) {
            this.zzdj |= 8;
            this.zzdk = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(long j2) {
        this.zzdj |= 4;
        this.zzbxb = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(long j2) {
        this.zzdj |= 32;
        this.zzbxd = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str != null) {
            this.zzdj |= 16;
            this.zzbxc = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        ys1 ys1Var = null;
        switch (ys1.f10656a[i2 - 1]) {
            case 1:
                return new us1();
            case 2:
                return new c(ys1Var);
            case 3:
                return e91.a(zzbxe, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u001b\u0002\u0004\u0000\u0003\u0004\u0001\u0004\u0002\u0002\u0005\b\u0003\u0006\b\u0004\u0007\u0002\u0005", new Object[]{"zzdj", "zzbtu", a.class, "zzbwz", "zzbxa", "zzbxb", "zzdk", "zzbxc", "zzbxd"});
            case 4:
                return zzbxe;
            case 5:
                wa1<us1> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (us1.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzbxe);
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

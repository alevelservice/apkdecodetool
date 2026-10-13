package com.google.android.gms.internal.ads;

import com.alipay.mobile.security.bio.utils.FileUtil;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public final class ev extends e91<ev, b> implements qa1 {
    private static volatile wa1<ev> zzdv;
    private static final ev zzhk;
    private int zzdj;
    private int zzeq;
    private int zzer;
    private long zzet;
    private long zzeu;
    private long zzev;
    private long zzew;
    private long zzex;
    private long zzey;
    private long zzez;
    private long zzfa;
    private long zzfb;
    private long zzfc;
    private long zzfe;
    private long zzff;
    private long zzfg;
    private long zzfh;
    private long zzfi;
    private long zzfj;
    private long zzfk;
    private long zzfl;
    private long zzfm;
    private long zzfo;
    private long zzfp;
    private long zzfq;
    private long zzfr;
    private fv zzfu;
    private e zzgk;
    private f zzgm;
    private int zzgx;
    private int zzgy;
    private int zzgz;
    private iv zzha;
    private long zzhd;
    private boolean zzhg;
    private long zzhi;
    private hv zzhj;
    private String zzes = "";
    private String zzdt = "";
    private String zzfd = "";
    private String zzei = "";
    private String zzfn = "";
    private String zzek = "";
    private long zzfs = -1;
    private long zzft = -1;
    private long zzfv = -1;
    private long zzfw = -1;
    private long zzfx = -1;
    private long zzfy = -1;
    private long zzfz = -1;
    private long zzga = -1;
    private String zzel = "D";
    private String zzem = "D";
    private long zzgb = -1;
    private int zzgc = 1000;
    private int zzgd = 1000;
    private long zzge = -1;
    private long zzgf = -1;
    private long zzgg = -1;
    private long zzgh = -1;
    private long zzgi = -1;
    private int zzgj = 1000;
    private l91<e> zzgl = e91.j();
    private long zzgn = -1;
    private long zzgo = -1;
    private long zzgp = -1;
    private long zzgq = -1;
    private long zzgr = -1;
    private long zzgs = -1;
    private long zzgt = -1;
    private long zzgu = -1;
    private String zzgv = "D";
    private long zzgw = -1;
    private long zzhb = -1;
    private int zzhc = 1000;
    private String zzhe = "";
    private int zzhf = 2;
    private String zzhh = "";

    /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
    /* loaded from: classes.dex */
    public enum a implements i91 {
        DEBUGGER_STATE_UNSPECIFIED(0),
        DEBUGGER_STATE_NOT_INSTALLED(1),
        DEBUGGER_STATE_INSTALLED(2),
        DEBUGGER_STATE_ACTIVE(3),
        DEBUGGER_STATE_ENVVAR(4),
        DEBUGGER_STATE_MACHPORT(5),
        DEBUGGER_STATE_ENVVAR_MACHPORT(6);

        private final int value;

        static {
            new my();
        }

        a(int i2) {
            this.value = i2;
        }

        public static k91 zzac() {
            return lx.f7986a;
        }

        public static a zzg(int i2) {
            switch (i2) {
                case 0:
                    return DEBUGGER_STATE_UNSPECIFIED;
                case 1:
                    return DEBUGGER_STATE_NOT_INSTALLED;
                case 2:
                    return DEBUGGER_STATE_INSTALLED;
                case 3:
                    return DEBUGGER_STATE_ACTIVE;
                case 4:
                    return DEBUGGER_STATE_ENVVAR;
                case 5:
                    return DEBUGGER_STATE_MACHPORT;
                case 6:
                    return DEBUGGER_STATE_ENVVAR_MACHPORT;
                default:
                    return null;
            }
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.ads.i91
        public final int zzab() {
            return this.value;
        }
    }

    /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class b extends e91.a<ev, b> implements qa1 {
        private b() {
            super(ev.zzhk);
        }

        public final b A(long j2) {
            g();
            ((ev) this.f6370f).e(j2);
            return this;
        }

        public final b B(long j2) {
            g();
            ((ev) this.f6370f).f(j2);
            return this;
        }

        public final b C(long j2) {
            g();
            ((ev) this.f6370f).g(j2);
            return this;
        }

        public final b D(long j2) {
            g();
            ((ev) this.f6370f).h(j2);
            return this;
        }

        public final b E(long j2) {
            g();
            ((ev) this.f6370f).i(j2);
            return this;
        }

        public final b F(long j2) {
            g();
            ((ev) this.f6370f).j(j2);
            return this;
        }

        public final b G(long j2) {
            g();
            ((ev) this.f6370f).k(j2);
            return this;
        }

        public final b a(String str) {
            g();
            ((ev) this.f6370f).b(str);
            return this;
        }

        public final b b(long j2) {
            g();
            ((ev) this.f6370f).m(j2);
            return this;
        }

        public final b c(long j2) {
            g();
            ((ev) this.f6370f).n(j2);
            return this;
        }

        public final b d(long j2) {
            g();
            ((ev) this.f6370f).o(j2);
            return this;
        }

        public final b e(long j2) {
            g();
            ((ev) this.f6370f).p(j2);
            return this;
        }

        public final b f(long j2) {
            g();
            ((ev) this.f6370f).q(j2);
            return this;
        }

        public final b g(long j2) {
            g();
            ((ev) this.f6370f).r(j2);
            return this;
        }

        public final b h(long j2) {
            g();
            ((ev) this.f6370f).s(j2);
            return this;
        }

        public final b i(String str) {
            g();
            ((ev) this.f6370f).a(str);
            return this;
        }

        public final b j(long j2) {
            g();
            ((ev) this.f6370f).u(j2);
            return this;
        }

        public final b k(long j2) {
            g();
            ((ev) this.f6370f).v(j2);
            return this;
        }

        public final b l(long j2) {
            g();
            ((ev) this.f6370f).w(j2);
            return this;
        }

        public final b m(long j2) {
            g();
            ((ev) this.f6370f).x(j2);
            return this;
        }

        public final b n(long j2) {
            g();
            ((ev) this.f6370f).y(j2);
            return this;
        }

        public final b o(long j2) {
            g();
            ((ev) this.f6370f).z(j2);
            return this;
        }

        public final b p(long j2) {
            g();
            ((ev) this.f6370f).A(j2);
            return this;
        }

        @Deprecated
        public final b q(long j2) {
            g();
            ((ev) this.f6370f).B(j2);
            return this;
        }

        public final b r(long j2) {
            g();
            ((ev) this.f6370f).C(j2);
            return this;
        }

        public final b s(long j2) {
            g();
            ((ev) this.f6370f).D(j2);
            return this;
        }

        public final b t(long j2) {
            g();
            ((ev) this.f6370f).E(j2);
            return this;
        }

        public final b u(long j2) {
            g();
            ((ev) this.f6370f).F(j2);
            return this;
        }

        public final b v(long j2) {
            g();
            ((ev) this.f6370f).G(j2);
            return this;
        }

        public final b w(long j2) {
            g();
            ((ev) this.f6370f).a(j2);
            return this;
        }

        public final b x(long j2) {
            g();
            ((ev) this.f6370f).b(j2);
            return this;
        }

        public final b y(long j2) {
            g();
            ((ev) this.f6370f).c(j2);
            return this;
        }

        public final b z(long j2) {
            g();
            ((ev) this.f6370f).d(j2);
            return this;
        }

        /* synthetic */ b(kw kwVar) {
            this();
        }

        public final b a(long j2) {
            g();
            ((ev) this.f6370f).l(j2);
            return this;
        }

        public final b b(String str) {
            g();
            ((ev) this.f6370f).c(str);
            return this;
        }

        public final b c(String str) {
            g();
            ((ev) this.f6370f).d(str);
            return this;
        }

        public final b d(String str) {
            g();
            ((ev) this.f6370f).e(str);
            return this;
        }

        public final b e(String str) {
            g();
            ((ev) this.f6370f).f(str);
            return this;
        }

        public final b f(String str) {
            g();
            ((ev) this.f6370f).g(str);
            return this;
        }

        public final b g(String str) {
            g();
            ((ev) this.f6370f).h(str);
            return this;
        }

        public final b h(String str) {
            g();
            ((ev) this.f6370f).i(str);
            return this;
        }

        public final b i(long j2) {
            g();
            ((ev) this.f6370f).t(j2);
            return this;
        }

        public final b j() {
            g();
            ((ev) this.f6370f).q();
            return this;
        }

        public final b a(m60 m60Var) {
            g();
            ((ev) this.f6370f).a(m60Var);
            return this;
        }

        public final b b(m60 m60Var) {
            g();
            ((ev) this.f6370f).b(m60Var);
            return this;
        }

        public final b c(m60 m60Var) {
            g();
            ((ev) this.f6370f).c(m60Var);
            return this;
        }

        public final b d(m60 m60Var) {
            g();
            ((ev) this.f6370f).d(m60Var);
            return this;
        }

        public final b a(e eVar) {
            g();
            ((ev) this.f6370f).a(eVar);
            return this;
        }

        public final b b(e eVar) {
            g();
            ((ev) this.f6370f).b(eVar);
            return this;
        }

        public final b a(f fVar) {
            g();
            ((ev) this.f6370f).a(fVar);
            return this;
        }

        public final b a(iv ivVar) {
            g();
            ((ev) this.f6370f).a(ivVar);
            return this;
        }

        public final b a(c cVar) {
            g();
            ((ev) this.f6370f).a(cVar);
            return this;
        }

        public final b a(boolean z) {
            g();
            ((ev) this.f6370f).a(z);
            return this;
        }
    }

    /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
    /* loaded from: classes.dex */
    public enum c implements i91 {
        DEVICE_IDENTIFIER_NO_ID(0),
        DEVICE_IDENTIFIER_APP_SPECIFIC_ID(1),
        DEVICE_IDENTIFIER_GLOBAL_ID(2),
        DEVICE_IDENTIFIER_ADVERTISER_ID(3),
        DEVICE_IDENTIFIER_ADVERTISER_ID_UNHASHED(4),
        DEVICE_IDENTIFIER_ANDROID_AD_ID(5),
        DEVICE_IDENTIFIER_GFIBER_ADVERTISING_ID(6);

        private final int value;

        static {
            new nz();
        }

        c(int i2) {
            this.value = i2;
        }

        public static k91 zzac() {
            return o00.f8458a;
        }

        public static c zzh(int i2) {
            switch (i2) {
                case 0:
                    return DEVICE_IDENTIFIER_NO_ID;
                case 1:
                    return DEVICE_IDENTIFIER_APP_SPECIFIC_ID;
                case 2:
                    return DEVICE_IDENTIFIER_GLOBAL_ID;
                case 3:
                    return DEVICE_IDENTIFIER_ADVERTISER_ID;
                case 4:
                    return DEVICE_IDENTIFIER_ADVERTISER_ID_UNHASHED;
                case 5:
                    return DEVICE_IDENTIFIER_ANDROID_AD_ID;
                case 6:
                    return DEVICE_IDENTIFIER_GFIBER_ADVERTISING_ID;
                default:
                    return null;
            }
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + c.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.ads.i91
        public final int zzab() {
            return this.value;
        }
    }

    /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
    /* loaded from: classes.dex */
    public enum d implements i91 {
        ERROR_ENCODE_SIZE_FAIL(1),
        ERROR_UNKNOWN(3),
        ERROR_NO_SIGNALS(5),
        ERROR_ENCRYPTION(7),
        ERROR_MEMORY(9),
        ERROR_SIMULATOR(11),
        ERROR_SERVICE(13),
        ERROR_THREAD(15),
        PSN_WEB64_FAIL(2),
        PSN_DECRYPT_SIZE_FAIL(4),
        PSN_MD5_CHECK_FAIL(8),
        PSN_MD5_SIZE_FAIL(16),
        PSN_MD5_FAIL(32),
        PSN_DECODE_FAIL(64),
        PSN_SALT_FAIL(128),
        PSN_BITSLICER_FAIL(256),
        PSN_REQUEST_TYPE_FAIL(512),
        PSN_INVALID_ERROR_CODE(1024),
        PSN_TIMESTAMP_EXPIRED(2048),
        PSN_ENCODE_SIZE_FAIL(4096),
        PSN_BLANK_VALUE(FileUtil.STREAM_BUFFER_SIZE),
        PSN_INITIALIZATION_FAIL(16384),
        PSN_GASS_CLIENT_FAIL(32768),
        PSN_SIGNALS_TIMEOUT(AntDetector.ACTION_ID_SAMPLE),
        PSN_TINK_FAIL(AntDetector.SCENE_ID_LOGIN_REGIST);

        private final int value;

        static {
            new o10();
        }

        d(int i2) {
            this.value = i2;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + d.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.ads.i91
        public final int zzab() {
            return this.value;
        }
    }

    static {
        ev evVar = new ev();
        zzhk = evVar;
        e91.a((Class<ev>) ev.class, evVar);
    }

    private ev() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A(long j2) {
        this.zzdj |= 268435456;
        this.zzfr = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B(long j2) {
        this.zzdj |= 536870912;
        this.zzfs = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C(long j2) {
        this.zzdj |= 1073741824;
        this.zzft = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D(long j2) {
        this.zzeq |= 1;
        this.zzfv = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E(long j2) {
        this.zzeq |= 2;
        this.zzfw = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F(long j2) {
        this.zzeq |= 4;
        this.zzfx = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G(long j2) {
        this.zzeq |= 8;
        this.zzfy = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str != null) {
            this.zzdj |= 1;
            this.zzes = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(String str) {
        if (str != null) {
            this.zzdj |= 2;
            this.zzdt = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(String str) {
        if (str != null) {
            this.zzdj |= 4194304;
            this.zzei = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(String str) {
        if (str != null) {
            this.zzdj |= 8388608;
            this.zzfn = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e(String str) {
        if (str != null) {
            this.zzdj |= 134217728;
            this.zzek = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(String str) {
        if (str != null) {
            this.zzeq |= 64;
            this.zzel = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(String str) {
        if (str != null) {
            this.zzeq |= 128;
            this.zzem = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(long j2) {
        this.zzeq |= 4194304;
        this.zzgq = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i(long j2) {
        this.zzeq |= 33554432;
        this.zzgt = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j(long j2) {
        this.zzeq |= 67108864;
        this.zzgu = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(long j2) {
        this.zzdj |= 4;
        this.zzet = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(long j2) {
        this.zzdj |= 16;
        this.zzev = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(long j2) {
        this.zzdj |= 32;
        this.zzew = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(long j2) {
        this.zzdj |= 1024;
        this.zzfb = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p(long j2) {
        this.zzdj |= 2048;
        this.zzfc = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(long j2) {
        this.zzdj |= FileUtil.STREAM_BUFFER_SIZE;
        this.zzfe = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r(long j2) {
        this.zzdj |= 16384;
        this.zzff = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s(long j2) {
        this.zzdj |= 32768;
        this.zzfg = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t(long j2) {
        this.zzdj |= AntDetector.ACTION_ID_SAMPLE;
        this.zzfh = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u(long j2) {
        this.zzdj |= 524288;
        this.zzfk = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v(long j2) {
        this.zzdj |= 1048576;
        this.zzfl = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w(long j2) {
        this.zzdj |= 2097152;
        this.zzfm = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x(long j2) {
        this.zzdj |= 16777216;
        this.zzfo = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y(long j2) {
        this.zzdj |= 33554432;
        this.zzfp = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z(long j2) {
        this.zzdj |= 67108864;
        this.zzfq = j2;
    }

    public final String k() {
        return this.zzei;
    }

    /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class e extends e91<e, a> implements qa1 {
        private static volatile wa1<e> zzdv;
        private static final e zzju;
        private int zzdj;
        private long zzjo;
        private long zzjp;
        private long zzfe = -1;
        private long zzff = -1;
        private long zzjb = -1;
        private long zzjc = -1;
        private long zzjd = -1;
        private long zzje = -1;
        private int zzjf = 1000;
        private long zzjg = -1;
        private long zzjh = -1;
        private long zzji = -1;
        private int zzjj = 1000;
        private long zzjk = -1;
        private long zzjl = -1;
        private long zzjm = -1;
        private long zzjn = -1;
        private long zzjq = -1;
        private long zzjr = -1;
        private long zzjs = -1;
        private long zzjt = -1;

        /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
        /* loaded from: classes.dex */
        public static final class a extends e91.a<e, a> implements qa1 {
            private a() {
                super(e.zzju);
            }

            public final a a(long j2) {
                g();
                ((e) this.f6370f).p(j2);
                return this;
            }

            public final a b(long j2) {
                g();
                ((e) this.f6370f).q(j2);
                return this;
            }

            public final a c(long j2) {
                g();
                ((e) this.f6370f).a(j2);
                return this;
            }

            public final a d(long j2) {
                g();
                ((e) this.f6370f).b(j2);
                return this;
            }

            public final a e(long j2) {
                g();
                ((e) this.f6370f).c(j2);
                return this;
            }

            public final a f(long j2) {
                g();
                ((e) this.f6370f).d(j2);
                return this;
            }

            public final a g(long j2) {
                g();
                ((e) this.f6370f).e(j2);
                return this;
            }

            public final a h(long j2) {
                g();
                ((e) this.f6370f).f(j2);
                return this;
            }

            public final a i(long j2) {
                g();
                ((e) this.f6370f).g(j2);
                return this;
            }

            public final a j() {
                g();
                ((e) this.f6370f).k();
                return this;
            }

            public final a k(long j2) {
                g();
                ((e) this.f6370f).i(j2);
                return this;
            }

            public final a l(long j2) {
                g();
                ((e) this.f6370f).j(j2);
                return this;
            }

            public final a m(long j2) {
                g();
                ((e) this.f6370f).k(j2);
                return this;
            }

            public final a n(long j2) {
                g();
                ((e) this.f6370f).l(j2);
                return this;
            }

            public final a o(long j2) {
                g();
                ((e) this.f6370f).m(j2);
                return this;
            }

            public final a p(long j2) {
                g();
                ((e) this.f6370f).n(j2);
                return this;
            }

            public final a q(long j2) {
                g();
                ((e) this.f6370f).o(j2);
                return this;
            }

            /* synthetic */ a(kw kwVar) {
                this();
            }

            public final a a(m60 m60Var) {
                g();
                ((e) this.f6370f).a(m60Var);
                return this;
            }

            public final a b(m60 m60Var) {
                g();
                ((e) this.f6370f).b(m60Var);
                return this;
            }

            public final a j(long j2) {
                g();
                ((e) this.f6370f).h(j2);
                return this;
            }
        }

        static {
            e eVar = new e();
            zzju = eVar;
            e91.a((Class<e>) e.class, eVar);
        }

        private e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(long j2) {
            this.zzdj |= 4;
            this.zzjb = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void b(long j2) {
            this.zzdj |= 8;
            this.zzjc = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void c(long j2) {
            this.zzdj |= 16;
            this.zzjd = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void d(long j2) {
            this.zzdj |= 32;
            this.zzje = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void e(long j2) {
            this.zzdj |= 128;
            this.zzjg = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void f(long j2) {
            this.zzdj |= 256;
            this.zzjh = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void g(long j2) {
            this.zzdj |= 512;
            this.zzji = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void h(long j2) {
            this.zzdj |= 2048;
            this.zzjk = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void i(long j2) {
            this.zzdj |= 4096;
            this.zzjl = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void j(long j2) {
            this.zzdj |= FileUtil.STREAM_BUFFER_SIZE;
            this.zzjm = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void k() {
            this.zzdj &= -9;
            this.zzjc = -1L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void l(long j2) {
            this.zzdj |= 32768;
            this.zzjo = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void m(long j2) {
            this.zzdj |= AntDetector.ACTION_ID_SAMPLE;
            this.zzjp = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void n(long j2) {
            this.zzdj |= AntDetector.SCENE_ID_LOGIN_REGIST;
            this.zzjq = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void o(long j2) {
            this.zzdj |= 262144;
            this.zzjr = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void p(long j2) {
            this.zzdj |= 1;
            this.zzfe = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void q(long j2) {
            this.zzdj |= 2;
            this.zzff = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(m60 m60Var) {
            if (m60Var != null) {
                this.zzdj |= 64;
                this.zzjf = m60Var.zzab();
                return;
            }
            throw new NullPointerException();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void b(m60 m60Var) {
            if (m60Var != null) {
                this.zzdj |= 1024;
                this.zzjj = m60Var.zzab();
                return;
            }
            throw new NullPointerException();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void k(long j2) {
            this.zzdj |= 16384;
            this.zzjn = j2;
        }

        public static a m() {
            return zzju.h();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.e91
        public final Object a(int i2, Object obj, Object obj2) {
            kw kwVar = null;
            switch (kw.f7774a[i2 - 1]) {
                case 1:
                    return new e();
                case 2:
                    return new a(kwVar);
                case 3:
                    return e91.a(zzju, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001\u0002\u0000\u0002\u0002\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u0002\u0004\u0006\u0002\u0005\u0007\f\u0006\b\u0002\u0007\t\u0002\b\n\u0002\t\u000b\f\n\f\u0002\u000b\r\u0002\f\u000e\u0002\r\u000f\u0002\u000e\u0010\u0002\u000f\u0011\u0002\u0010\u0012\u0002\u0011\u0013\u0002\u0012\u0014\u0002\u0013\u0015\u0002\u0014", new Object[]{"zzdj", "zzfe", "zzff", "zzjb", "zzjc", "zzjd", "zzje", "zzjf", m60.zzac(), "zzjg", "zzjh", "zzji", "zzjj", m60.zzac(), "zzjk", "zzjl", "zzjm", "zzjn", "zzjo", "zzjp", "zzjq", "zzjr", "zzjs", "zzjt"});
                case 4:
                    return zzju;
                case 5:
                    wa1<e> wa1Var = zzdv;
                    if (wa1Var == null) {
                        synchronized (e.class) {
                            wa1Var = zzdv;
                            if (wa1Var == null) {
                                wa1Var = new e91.c<>(zzju);
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

    /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class f extends e91<f, a> implements qa1 {
        private static volatile wa1<f> zzdv;
        private static final f zzjz;
        private int zzdj;
        private long zzgh = -1;
        private long zzgi = -1;
        private long zzjv = -1;
        private long zzjw = -1;
        private long zzjx = -1;
        private long zzjy = -1;

        /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
        /* loaded from: classes.dex */
        public static final class a extends e91.a<f, a> implements qa1 {
            private a() {
                super(f.zzjz);
            }

            public final a a(long j2) {
                g();
                ((f) this.f6370f).a(j2);
                return this;
            }

            public final a b(long j2) {
                g();
                ((f) this.f6370f).b(j2);
                return this;
            }

            public final a c(long j2) {
                g();
                ((f) this.f6370f).c(j2);
                return this;
            }

            public final a d(long j2) {
                g();
                ((f) this.f6370f).d(j2);
                return this;
            }

            /* synthetic */ a(kw kwVar) {
                this();
            }
        }

        static {
            f fVar = new f();
            zzjz = fVar;
            e91.a((Class<f>) f.class, fVar);
        }

        private f() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(long j2) {
            this.zzdj |= 4;
            this.zzjv = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void b(long j2) {
            this.zzdj |= 8;
            this.zzjw = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void c(long j2) {
            this.zzdj |= 16;
            this.zzjx = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void d(long j2) {
            this.zzdj |= 32;
            this.zzjy = j2;
        }

        public static a k() {
            return zzjz.h();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.e91
        public final Object a(int i2, Object obj, Object obj2) {
            kw kwVar = null;
            switch (kw.f7774a[i2 - 1]) {
                case 1:
                    return new f();
                case 2:
                    return new a(kwVar);
                case 3:
                    return e91.a(zzjz, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0002\u0000\u0002\u0002\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u0002\u0004\u0006\u0002\u0005", new Object[]{"zzdj", "zzgh", "zzgi", "zzjv", "zzjw", "zzjx", "zzjy"});
                case 4:
                    return zzjz;
                case 5:
                    wa1<f> wa1Var = zzdv;
                    if (wa1Var == null) {
                        synchronized (f.class) {
                            wa1Var = zzdv;
                            if (wa1Var == null) {
                                wa1Var = new e91.c<>(zzjz);
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
    public final void k(long j2) {
        this.zzer |= 256;
        this.zzhi = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(String str) {
        if (str != null) {
            this.zzeq |= 134217728;
            this.zzgv = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i(String str) {
        if (str != null) {
            this.zzer |= 16;
            this.zzhe = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q() {
        this.zzgl = e91.j();
    }

    public static b r() {
        return zzhk.h();
    }

    public final boolean m() {
        return (this.zzdj & 4194304) != 0;
    }

    public final boolean n() {
        return (this.zzer & 512) != 0;
    }

    public final hv o() {
        hv hvVar = this.zzhj;
        return hvVar == null ? hv.n() : hvVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(long j2) {
        this.zzeq |= 16;
        this.zzfz = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(long j2) {
        this.zzeq |= 32;
        this.zzga = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(long j2) {
        this.zzeq |= 2048;
        this.zzge = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(long j2) {
        this.zzeq |= 4096;
        this.zzgf = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e(long j2) {
        this.zzeq |= FileUtil.STREAM_BUFFER_SIZE;
        this.zzgg = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(long j2) {
        this.zzeq |= 1048576;
        this.zzgo = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(long j2) {
        this.zzeq |= 2097152;
        this.zzgp = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(m60 m60Var) {
        if (m60Var != null) {
            this.zzeq |= 512;
            this.zzgc = m60Var.zzab();
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(m60 m60Var) {
        if (m60Var != null) {
            this.zzeq |= 1024;
            this.zzgd = m60Var.zzab();
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(m60 m60Var) {
        if (m60Var != null) {
            this.zzeq |= AntDetector.ACTION_ID_SAMPLE;
            this.zzgj = m60Var.zzab();
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(m60 m60Var) {
        if (m60Var != null) {
            this.zzer |= 4;
            this.zzhc = m60Var.zzab();
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(e eVar) {
        if (eVar != null) {
            this.zzgk = eVar;
            this.zzeq |= AntDetector.SCENE_ID_LOGIN_REGIST;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(e eVar) {
        if (eVar != null) {
            if (!this.zzgl.R()) {
                this.zzgl = e91.a(this.zzgl);
            }
            this.zzgl.add(eVar);
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(f fVar) {
        if (fVar != null) {
            this.zzgm = fVar;
            this.zzeq |= 262144;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(iv ivVar) {
        if (ivVar != null) {
            this.zzha = ivVar;
            this.zzer |= 1;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(c cVar) {
        if (cVar != null) {
            this.zzer |= 32;
            this.zzhf = cVar.zzab();
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(boolean z) {
        this.zzer |= 64;
        this.zzhg = z;
    }

    public static ev a(byte[] bArr, q81 q81Var) {
        return (ev) e91.a(zzhk, bArr, q81Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        kw kwVar = null;
        switch (kw.f7774a[i2 - 1]) {
            case 1:
                return new ev();
            case 2:
                return new b(kwVar);
            case 3:
                return e91.a(zzhk, "\u0001K\u0000\u0003\u0001ÉK\u0000\u0001\u0000\u0001\b\u0000\u0002\b\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u0002\u0004\u0006\u0002\u0005\u0007\u0002\u0006\b\u0002\u0007\t\u0002\b\n\u0002\t\u000b\u0002\n\f\u0002\u000b\r\b\f\u000e\u0002\r\u000f\u0002\u000e\u0010\u0002\u000f\u0011\u0002\u0010\u0012\u0002\u0011\u0013\u0002\u0012\u0014\u0002\u0013\u0015\u0002C\u0016\u0002\u0014\u0017\u0002\u0015\u0018\bD\u0019\u0002H\u001a\fE\u001b\b\u0016\u001c\u0007F\u001d\b\u0017\u001e\bG\u001f\u0002\u0018 \u0002\u0019!\u0002\u001a\"\b\u001b#\u0002\u001c$\u0002\u001d%\u0002\u001e&\t\u001f'\u0002 (\u0002!)\u0002\"*\u0002#+\u001b,\u0002$-\u0002%.\b&/\b'0\f)1\f*2\t13\u0002+4\u0002,5\u0002-6\u0002.7\u0002/8\f09\t2:\u00023;\u00024<\u00025=\u00026>\u00029?\u0002:@\u0002<A\f=B\f>C\b;D\f?E\t@F\u0002AG\u00027H\u00028I\fBJ\u0002(É\tI", new Object[]{"zzdj", "zzeq", "zzer", "zzes", "zzdt", "zzet", "zzeu", "zzev", "zzew", "zzex", "zzey", "zzez", "zzfa", "zzfb", "zzfc", "zzfd", "zzfe", "zzff", "zzfg", "zzfh", "zzfi", "zzfj", "zzfk", "zzhd", "zzfl", "zzfm", "zzhe", "zzhi", "zzhf", c.zzac(), "zzei", "zzhg", "zzfn", "zzhh", "zzfo", "zzfp", "zzfq", "zzek", "zzfr", "zzfs", "zzft", "zzfu", "zzfv", "zzfw", "zzfx", "zzfy", "zzgl", e.class, "zzfz", "zzga", "zzel", "zzem", "zzgc", m60.zzac(), "zzgd", m60.zzac(), "zzgk", "zzge", "zzgf", "zzgg", "zzgh", "zzgi", "zzgj", m60.zzac(), "zzgm", "zzgn", "zzgo", "zzgp", "zzgq", "zzgt", "zzgu", "zzgw", "zzgx", n20.zzac(), "zzgy", n70.zzac(), "zzgv", "zzgz", a.zzac(), "zzha", "zzhb", "zzgr", "zzgs", "zzhc", m60.zzac(), "zzgb", "zzhj"});
            case 4:
                return zzhk;
            case 5:
                wa1<ev> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (ev.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzhk);
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

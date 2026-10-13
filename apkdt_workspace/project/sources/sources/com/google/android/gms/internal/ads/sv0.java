package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public final class sv0 extends e91<sv0, b> implements qa1 {
    private static volatile wa1<sv0> zzdv;
    private static final m91<Integer, a> zzgnb = new rv0();
    private static final sv0 zzgnf;
    private int zzdj;
    private j91 zzgna = e91.i();
    private String zzgnc = "";
    private String zzgnd = "";
    private String zzgne = "";

    /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
    /* loaded from: classes.dex */
    public enum a implements i91 {
        BLOCKED_REASON_UNKNOWN(1),
        BLOCKED_REASON_BACKGROUND(2);

        private final int value;

        static {
            new vv0();
        }

        a(int i2) {
            this.value = i2;
        }

        public static k91 zzac() {
            return uv0.f9829a;
        }

        public static a zzdm(int i2) {
            if (i2 == 1) {
                return BLOCKED_REASON_UNKNOWN;
            }
            if (i2 != 2) {
                return null;
            }
            return BLOCKED_REASON_BACKGROUND;
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
    public static final class b extends e91.a<sv0, b> implements qa1 {
        private b() {
            super(sv0.zzgnf);
        }

        public final b a(a aVar) {
            g();
            ((sv0) this.f6370f).a(aVar);
            return this;
        }

        /* synthetic */ b(rv0 rv0Var) {
            this();
        }

        public final b a(String str) {
            g();
            ((sv0) this.f6370f).a(str);
            return this;
        }
    }

    static {
        sv0 sv0Var = new sv0();
        zzgnf = sv0Var;
        e91.a((Class<sv0>) sv0.class, sv0Var);
    }

    private sv0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(a aVar) {
        if (aVar != null) {
            if (!this.zzgna.R()) {
                this.zzgna = e91.a(this.zzgna);
            }
            this.zzgna.h(aVar.zzab());
            return;
        }
        throw new NullPointerException();
    }

    public static b k() {
        return zzgnf.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str != null) {
            this.zzdj |= 1;
            this.zzgnc = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        rv0 rv0Var = null;
        switch (tv0.f9641a[i2 - 1]) {
            case 1:
                return new sv0();
            case 2:
                return new b(rv0Var);
            case 3:
                return e91.a(zzgnf, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001e\u0002\b\u0000\u0003\b\u0001\u0004\b\u0002", new Object[]{"zzdj", "zzgna", a.zzac(), "zzgnc", "zzgnd", "zzgne"});
            case 4:
                return zzgnf;
            case 5:
                wa1<sv0> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (sv0.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgnf);
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

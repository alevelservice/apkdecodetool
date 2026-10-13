package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;
import com.google.android.gms.internal.ads.sv0;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public final class wv0 extends e91<wv0, a> implements qa1 {
    private static volatile wa1<wv0> zzdv;
    private static final wv0 zzgnm;
    private int zzdj;
    private int zzgnj;
    private sv0 zzgnl;
    private String zzdk = "";
    private String zzgnk = "";

    /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<wv0, a> implements qa1 {
        private a() {
            super(wv0.zzgnm);
        }

        public final a a(b bVar) {
            g();
            ((wv0) this.f6370f).a(bVar);
            return this;
        }

        /* synthetic */ a(xv0 xv0Var) {
            this();
        }

        public final a a(String str) {
            g();
            ((wv0) this.f6370f).a(str);
            return this;
        }

        public final a a(sv0.b bVar) {
            g();
            ((wv0) this.f6370f).a(bVar);
            return this;
        }
    }

    /* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
    /* loaded from: classes.dex */
    public enum b implements i91 {
        EVENT_TYPE_UNKNOWN(0),
        BLOCKED_IMPRESSION(1);

        private final int value;

        static {
            new yv0();
        }

        b(int i2) {
            this.value = i2;
        }

        public static k91 zzac() {
            return zv0.f10853a;
        }

        public static b zzdn(int i2) {
            if (i2 == 0) {
                return EVENT_TYPE_UNKNOWN;
            }
            if (i2 != 1) {
                return null;
            }
            return BLOCKED_IMPRESSION;
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

    static {
        wv0 wv0Var = new wv0();
        zzgnm = wv0Var;
        e91.a((Class<wv0>) wv0.class, wv0Var);
    }

    private wv0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(b bVar) {
        if (bVar != null) {
            this.zzdj |= 1;
            this.zzgnj = bVar.zzab();
            return;
        }
        throw new NullPointerException();
    }

    public static a k() {
        return zzgnm.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str != null) {
            this.zzdj |= 2;
            this.zzdk = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(sv0.b bVar) {
        this.zzgnl = (sv0) bVar.s();
        this.zzdj |= 8;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        xv0 xv0Var = null;
        switch (xv0.f10438a[i2 - 1]) {
            case 1:
                return new wv0();
            case 2:
                return new a(xv0Var);
            case 3:
                return e91.a(zzgnm, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\f\u0000\u0002\b\u0001\u0003\b\u0002\u0004\t\u0003", new Object[]{"zzdj", "zzgnj", b.zzac(), "zzdk", "zzgnk", "zzgnl"});
            case 4:
                return zzgnm;
            case 5:
                wa1<wv0> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (wv0.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgnm);
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

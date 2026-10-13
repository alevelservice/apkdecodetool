package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class l41 extends e91<l41, a> implements qa1 {
    private static volatile wa1<l41> zzdv;
    private static final l41 zzgwy;
    private String zzgwv = "";
    private t71 zzgww = t71.zzhfn;
    private int zzgwx;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<l41, a> implements qa1 {
        private a() {
            super(l41.zzgwy);
        }

        public final a a(String str) {
            g();
            ((l41) this.f6370f).a(str);
            return this;
        }

        /* synthetic */ a(m41 m41Var) {
            this();
        }

        public final a a(t71 t71Var) {
            g();
            ((l41) this.f6370f).a(t71Var);
            return this;
        }

        public final a a(b bVar) {
            g();
            ((l41) this.f6370f).a(bVar);
            return this;
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public enum b implements i91 {
        UNKNOWN_KEYMATERIAL(0),
        SYMMETRIC(1),
        ASYMMETRIC_PRIVATE(2),
        ASYMMETRIC_PUBLIC(3),
        REMOTE(4),
        UNRECOGNIZED(-1);

        private final int value;

        static {
            new n41();
        }

        b(int i2) {
            this.value = i2;
        }

        public static b zzeo(int i2) {
            if (i2 == 0) {
                return UNKNOWN_KEYMATERIAL;
            }
            if (i2 == 1) {
                return SYMMETRIC;
            }
            if (i2 == 2) {
                return ASYMMETRIC_PRIVATE;
            }
            if (i2 == 3) {
                return ASYMMETRIC_PUBLIC;
            }
            if (i2 != 4) {
                return null;
            }
            return REMOTE;
        }

        @Override // java.lang.Enum
        public final String toString() {
            StringBuilder sb = new StringBuilder("<");
            sb.append(b.class.getName());
            sb.append('@');
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            if (this != UNRECOGNIZED) {
                sb.append(" number=");
                sb.append(zzab());
            }
            sb.append(" name=");
            sb.append(name());
            sb.append('>');
            return sb.toString();
        }

        @Override // com.google.android.gms.internal.ads.i91
        public final int zzab() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        l41 l41Var = new l41();
        zzgwy = l41Var;
        e91.a((Class<l41>) l41.class, l41Var);
    }

    private l41() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str != null) {
            this.zzgwv = str;
            return;
        }
        throw new NullPointerException();
    }

    public static a o() {
        return zzgwy.h();
    }

    public static l41 q() {
        return zzgwy;
    }

    public final String k() {
        return this.zzgwv;
    }

    public final t71 m() {
        return this.zzgww;
    }

    public final b n() {
        b zzeo = b.zzeo(this.zzgwx);
        return zzeo == null ? b.UNRECOGNIZED : zzeo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(t71 t71Var) {
        if (t71Var != null) {
            this.zzgww = t71Var;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(b bVar) {
        if (bVar != null) {
            this.zzgwx = bVar.zzab();
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        m41 m41Var = null;
        switch (m41.f8022a[i2 - 1]) {
            case 1:
                return new l41();
            case 2:
                return new a(m41Var);
            case 3:
                return e91.a(zzgwy, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzgwv", "zzgww", "zzgwx"});
            case 4:
                return zzgwy;
            case 5:
                wa1<l41> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (l41.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgwy);
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

package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class m51 extends e91<m51, a> implements qa1 {
    private static volatile wa1<m51> zzdv;
    private static final m51 zzgzv;
    private int zzgtf;
    private t71 zzgtn = t71.zzhfn;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<m51, a> implements qa1 {
        private a() {
            super(m51.zzgzv);
        }

        public final a a(int i2) {
            g();
            ((m51) this.f6370f).b(0);
            return this;
        }

        /* synthetic */ a(n51 n51Var) {
            this();
        }

        public final a a(t71 t71Var) {
            g();
            ((m51) this.f6370f).b(t71Var);
            return this;
        }
    }

    static {
        m51 m51Var = new m51();
        zzgzv = m51Var;
        e91.a((Class<m51>) m51.class, m51Var);
    }

    private m51() {
    }

    public static m51 a(t71 t71Var) {
        return (m51) e91.a(zzgzv, t71Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2) {
        this.zzgtf = i2;
    }

    public static a n() {
        return zzgzv.h();
    }

    public final int k() {
        return this.zzgtf;
    }

    public final t71 m() {
        return this.zzgtn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(t71 t71Var) {
        if (t71Var != null) {
            this.zzgtn = t71Var;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        n51 n51Var = null;
        switch (n51.f8277a[i2 - 1]) {
            case 1:
                return new m51();
            case 2:
                return new a(n51Var);
            case 3:
                return e91.a(zzgzv, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzgtf", "zzgtn"});
            case 4:
                return zzgzv;
            case 5:
                wa1<m51> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (m51.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgzv);
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

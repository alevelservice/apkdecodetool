package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class r21 extends e91<r21, a> implements qa1 {
    private static volatile wa1<r21> zzdv;
    private static final r21 zzgtx;
    private int zzgtf;
    private t71 zzgtn = t71.zzhfn;
    private v21 zzgtw;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<r21, a> implements qa1 {
        private a() {
            super(r21.zzgtx);
        }

        public final a a(int i2) {
            g();
            ((r21) this.f6370f).b(0);
            return this;
        }

        /* synthetic */ a(s21 s21Var) {
            this();
        }

        public final a a(v21 v21Var) {
            g();
            ((r21) this.f6370f).a(v21Var);
            return this;
        }

        public final a a(t71 t71Var) {
            g();
            ((r21) this.f6370f).b(t71Var);
            return this;
        }
    }

    static {
        r21 r21Var = new r21();
        zzgtx = r21Var;
        e91.a((Class<r21>) r21.class, r21Var);
    }

    private r21() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(v21 v21Var) {
        if (v21Var != null) {
            this.zzgtw = v21Var;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2) {
        this.zzgtf = i2;
    }

    public static a o() {
        return zzgtx.h();
    }

    public static r21 q() {
        return zzgtx;
    }

    public final int k() {
        return this.zzgtf;
    }

    public final t71 m() {
        return this.zzgtn;
    }

    public final v21 n() {
        v21 v21Var = this.zzgtw;
        return v21Var == null ? v21.m() : v21Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(t71 t71Var) {
        if (t71Var != null) {
            this.zzgtn = t71Var;
            return;
        }
        throw new NullPointerException();
    }

    public static r21 a(t71 t71Var) {
        return (r21) e91.a(zzgtx, t71Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        s21 s21Var = null;
        switch (s21.f9266a[i2 - 1]) {
            case 1:
                return new r21();
            case 2:
                return new a(s21Var);
            case 3:
                return e91.a(zzgtx, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzgtf", "zzgtw", "zzgtn"});
            case 4:
                return zzgtx;
            case 5:
                wa1<r21> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (r21.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgtx);
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

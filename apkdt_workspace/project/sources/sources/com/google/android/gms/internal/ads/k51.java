package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class k51 extends e91<k51, a> implements qa1 {
    private static volatile wa1<k51> zzdv;
    private static final k51 zzgyv;
    private String zzgyt = "";
    private l91<s41> zzgyu = e91.j();

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends e91.a<k51, a> implements qa1 {
        private a() {
            super(k51.zzgyv);
        }

        public final a a(String str) {
            g();
            ((k51) this.f6370f).a(str);
            return this;
        }

        /* synthetic */ a(j51 j51Var) {
            this();
        }

        public final a a(s41 s41Var) {
            g();
            ((k51) this.f6370f).a(s41Var);
            return this;
        }
    }

    static {
        k51 k51Var = new k51();
        zzgyv = k51Var;
        e91.a((Class<k51>) k51.class, k51Var);
    }

    private k51() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str != null) {
            this.zzgyt = str;
            return;
        }
        throw new NullPointerException();
    }

    public static a m() {
        return zzgyv.h();
    }

    public final List<s41> k() {
        return this.zzgyu;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(s41 s41Var) {
        if (s41Var != null) {
            if (!this.zzgyu.R()) {
                this.zzgyu = e91.a(this.zzgyu);
            }
            this.zzgyu.add(s41Var);
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.e91
    public final Object a(int i2, Object obj, Object obj2) {
        j51 j51Var = null;
        switch (j51.f7432a[i2 - 1]) {
            case 1:
                return new k51();
            case 2:
                return new a(j51Var);
            case 3:
                return e91.a(zzgyv, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzgyt", "zzgyu", s41.class});
            case 4:
                return zzgyv;
            case 5:
                wa1<k51> wa1Var = zzdv;
                if (wa1Var == null) {
                    synchronized (k51.class) {
                        wa1Var = zzdv;
                        if (wa1Var == null) {
                            wa1Var = new e91.c<>(zzgyv);
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

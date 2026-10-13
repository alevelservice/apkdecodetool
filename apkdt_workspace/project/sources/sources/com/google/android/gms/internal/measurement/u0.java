package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;
import java.util.List;

/* loaded from: classes.dex */
public final class u0 extends b4<u0, a> implements m5 {
    private static volatile s5<u0> zzuo;
    private static final u0 zzzb = new u0();
    private int zzue;
    private int zzwg;
    private j4 zzza = b4.l();

    /* loaded from: classes.dex */
    public static final class a extends b4.a<u0, a> implements m5 {
        private a() {
            super(u0.zzzb);
        }

        public final a a(int i2) {
            e();
            ((u0) this.f11762f).c(i2);
            return this;
        }

        public final a h() {
            e();
            ((u0) this.f11762f).u();
            return this;
        }

        /* synthetic */ a(k0 k0Var) {
            this();
        }

        public final a a(long j2) {
            e();
            ((u0) this.f11762f).a(j2);
            return this;
        }

        public final a a(Iterable<? extends Long> iterable) {
            e();
            ((u0) this.f11762f).a(iterable);
            return this;
        }
    }

    static {
        b4.a((Class<u0>) u0.class, zzzb);
    }

    private u0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(long j2) {
        s();
        this.zzza.h(j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(int i2) {
        this.zzue |= 1;
        this.zzwg = i2;
    }

    private final void s() {
        if (this.zzza.Q()) {
            return;
        }
        this.zzza = b4.a(this.zzza);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u() {
        this.zzza = b4.l();
    }

    public static a v() {
        return zzzb.h();
    }

    public final long b(int i2) {
        return this.zzza.getLong(i2);
    }

    public final int n() {
        return this.zzwg;
    }

    public final boolean o() {
        return (this.zzue & 1) != 0;
    }

    public final List<Long> p() {
        return this.zzza;
    }

    public final int q() {
        return this.zzza.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Iterable<? extends Long> iterable) {
        s();
        j2.a(iterable, this.zzza);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.b4
    public final Object a(int i2, Object obj, Object obj2) {
        k0 k0Var = null;
        switch (k0.f11942a[i2 - 1]) {
            case 1:
                return new u0();
            case 2:
                return new a(k0Var);
            case 3:
                return b4.a(zzzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0004\u0000\u0002\u0014", new Object[]{"zzue", "zzwg", "zzza"});
            case 4:
                return zzzb;
            case 5:
                s5<u0> s5Var = zzuo;
                if (s5Var == null) {
                    synchronized (u0.class) {
                        s5Var = zzuo;
                        if (s5Var == null) {
                            s5Var = new b4.c<>(zzzb);
                            zzuo = s5Var;
                        }
                    }
                }
                return s5Var;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}

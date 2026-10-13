package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;
import com.google.android.gms.internal.measurement.r0;
import java.util.List;

/* loaded from: classes.dex */
public final class q0 extends b4<q0, a> implements m5 {
    private static volatile s5<q0> zzuo;
    private static final q0 zzww = new q0();
    private i4<r0> zzwv = b4.m();

    /* loaded from: classes.dex */
    public static final class a extends b4.a<q0, a> implements m5 {
        private a() {
            super(q0.zzww);
        }

        public final r0 a(int i2) {
            return ((q0) this.f11762f).b(0);
        }

        /* synthetic */ a(k0 k0Var) {
            this();
        }

        public final a a(r0.a aVar) {
            e();
            ((q0) this.f11762f).a(aVar);
            return this;
        }
    }

    static {
        b4.a((Class<q0>) q0.class, zzww);
    }

    private q0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(r0.a aVar) {
        if (!this.zzwv.Q()) {
            this.zzwv = b4.a(this.zzwv);
        }
        this.zzwv.add((r0) aVar.t());
    }

    public static a o() {
        return zzww.h();
    }

    public final r0 b(int i2) {
        return this.zzwv.get(0);
    }

    public final List<r0> n() {
        return this.zzwv;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.b4
    public final Object a(int i2, Object obj, Object obj2) {
        k0 k0Var = null;
        switch (k0.f11942a[i2 - 1]) {
            case 1:
                return new q0();
            case 2:
                return new a(k0Var);
            case 3:
                return b4.a(zzww, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzwv", r0.class});
            case 4:
                return zzww;
            case 5:
                s5<q0> s5Var = zzuo;
                if (s5Var == null) {
                    synchronized (q0.class) {
                        s5Var = zzuo;
                        if (s5Var == null) {
                            s5Var = new b4.c<>(zzww);
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

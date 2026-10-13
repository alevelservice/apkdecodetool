package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;
import com.google.android.gms.internal.measurement.p0;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class n0 extends b4<n0, a> implements m5 {
    private static volatile s5<n0> zzuo;
    private static final n0 zzwo = new n0();
    private int zzue;
    private i4<p0> zzwj = b4.m();
    private String zzwk = "";
    private long zzwl;
    private long zzwm;
    private int zzwn;

    /* loaded from: classes.dex */
    public static final class a extends b4.a<n0, a> implements m5 {
        private a() {
            super(n0.zzwo);
        }

        public final p0 a(int i2) {
            return ((n0) this.f11762f).b(i2);
        }

        public final a b(int i2) {
            e();
            ((n0) this.f11762f).c(i2);
            return this;
        }

        public final String h() {
            return ((n0) this.f11762f).o();
        }

        public final long i() {
            return ((n0) this.f11762f).p();
        }

        public final List<p0> j() {
            return Collections.unmodifiableList(((n0) this.f11762f).q());
        }

        public final int l() {
            return ((n0) this.f11762f).s();
        }

        public final long m() {
            return ((n0) this.f11762f).v();
        }

        /* synthetic */ a(k0 k0Var) {
            this();
        }

        public final a a(int i2, p0 p0Var) {
            e();
            ((n0) this.f11762f).a(i2, p0Var);
            return this;
        }

        public final a b(long j2) {
            e();
            ((n0) this.f11762f).b(j2);
            return this;
        }

        public final a a(int i2, p0.a aVar) {
            e();
            ((n0) this.f11762f).a(i2, aVar);
            return this;
        }

        public final a a(p0 p0Var) {
            e();
            ((n0) this.f11762f).a(p0Var);
            return this;
        }

        public final a a(p0.a aVar) {
            e();
            ((n0) this.f11762f).a(aVar);
            return this;
        }

        public final a a(String str) {
            e();
            ((n0) this.f11762f).a(str);
            return this;
        }

        public final a a(long j2) {
            e();
            ((n0) this.f11762f).a(j2);
            return this;
        }
    }

    static {
        b4.a((Class<n0>) n0.class, zzwo);
    }

    private n0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(int i2, p0 p0Var) {
        if (p0Var != null) {
            y();
            this.zzwj.set(i2, p0Var);
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(int i2) {
        y();
        this.zzwj.remove(i2);
    }

    private final void y() {
        if (this.zzwj.Q()) {
            return;
        }
        this.zzwj = b4.a(this.zzwj);
    }

    public static a z() {
        return zzwo.h();
    }

    public final p0 b(int i2) {
        return this.zzwj.get(i2);
    }

    public final int n() {
        return this.zzwn;
    }

    public final String o() {
        return this.zzwk;
    }

    public final long p() {
        return this.zzwl;
    }

    public final List<p0> q() {
        return this.zzwj;
    }

    public final int s() {
        return this.zzwj.size();
    }

    public final boolean u() {
        return (this.zzue & 2) != 0;
    }

    public final long v() {
        return this.zzwm;
    }

    public final boolean w() {
        return (this.zzue & 4) != 0;
    }

    public final boolean x() {
        return (this.zzue & 8) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(long j2) {
        this.zzue |= 4;
        this.zzwm = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(int i2, p0.a aVar) {
        y();
        this.zzwj.set(i2, (p0) aVar.t());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(p0 p0Var) {
        if (p0Var != null) {
            y();
            this.zzwj.add(p0Var);
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(p0.a aVar) {
        y();
        this.zzwj.add((p0) aVar.t());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str != null) {
            this.zzue |= 1;
            this.zzwk = str;
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(long j2) {
        this.zzue |= 2;
        this.zzwl = j2;
    }

    public static n0 a(byte[] bArr, o3 o3Var) {
        return (n0) b4.a(zzwo, bArr, o3Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.b4
    public final Object a(int i2, Object obj, Object obj2) {
        k0 k0Var = null;
        switch (k0.f11942a[i2 - 1]) {
            case 1:
                return new n0();
            case 2:
                return new a(k0Var);
            case 3:
                return b4.a(zzwo, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002\b\u0000\u0003\u0002\u0001\u0004\u0002\u0002\u0005\u0004\u0003", new Object[]{"zzue", "zzwj", p0.class, "zzwk", "zzwl", "zzwm", "zzwn"});
            case 4:
                return zzwo;
            case 5:
                s5<n0> s5Var = zzuo;
                if (s5Var == null) {
                    synchronized (n0.class) {
                        s5Var = zzuo;
                        if (s5Var == null) {
                            s5Var = new b4.c<>(zzwo);
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

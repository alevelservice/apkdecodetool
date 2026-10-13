package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;
import java.util.List;

/* loaded from: classes.dex */
public final class z extends b4<z, a> implements m5 {
    private static final z zzun = new z();
    private static volatile s5<z> zzuo;
    private int zzue;
    private int zzuf;
    private String zzug = "";
    private i4<a0> zzuh = b4.m();
    private boolean zzui;
    private b0 zzuj;
    private boolean zzuk;
    private boolean zzul;
    private boolean zzum;

    /* loaded from: classes.dex */
    public static final class a extends b4.a<z, a> implements m5 {
        private a() {
            super(z.zzun);
        }

        public final a a(String str) {
            e();
            ((z) this.f11762f).a(str);
            return this;
        }

        public final String h() {
            return ((z) this.f11762f).o();
        }

        public final int i() {
            return ((z) this.f11762f).p();
        }

        /* synthetic */ a(y yVar) {
            this();
        }

        public final a0 a(int i2) {
            return ((z) this.f11762f).b(i2);
        }

        public final a a(int i2, a0 a0Var) {
            e();
            ((z) this.f11762f).a(i2, a0Var);
            return this;
        }
    }

    static {
        b4.a((Class<z>) z.class, zzun);
    }

    private z() {
    }

    public static s5<z> A() {
        return (s5) zzun.a(b4.d.f11771g, (Object) null, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str != null) {
            this.zzue |= 2;
            this.zzug = str;
            return;
        }
        throw new NullPointerException();
    }

    public final a0 b(int i2) {
        return this.zzuh.get(i2);
    }

    public final int n() {
        return this.zzuf;
    }

    public final String o() {
        return this.zzug;
    }

    public final int p() {
        return this.zzuh.size();
    }

    public final boolean q() {
        return (this.zzue & 1) != 0;
    }

    public final List<a0> s() {
        return this.zzuh;
    }

    public final boolean u() {
        return (this.zzue & 8) != 0;
    }

    public final b0 v() {
        b0 b0Var = this.zzuj;
        return b0Var == null ? b0.z() : b0Var;
    }

    public final boolean w() {
        return this.zzuk;
    }

    public final boolean x() {
        return this.zzul;
    }

    public final boolean y() {
        return (this.zzue & 64) != 0;
    }

    public final boolean z() {
        return this.zzum;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(int i2, a0 a0Var) {
        if (a0Var != null) {
            if (!this.zzuh.Q()) {
                this.zzuh = b4.a(this.zzuh);
            }
            this.zzuh.set(i2, a0Var);
            return;
        }
        throw new NullPointerException();
    }

    public static z a(byte[] bArr, o3 o3Var) {
        return (z) b4.a(zzun, bArr, o3Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.b4
    public final Object a(int i2, Object obj, Object obj2) {
        y yVar = null;
        switch (y.f12209a[i2 - 1]) {
            case 1:
                return new z();
            case 2:
                return new a(yVar);
            case 3:
                return b4.a(zzun, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001\u0004\u0000\u0002\b\u0001\u0003\u001b\u0004\u0007\u0002\u0005\t\u0003\u0006\u0007\u0004\u0007\u0007\u0005\b\u0007\u0006", new Object[]{"zzue", "zzuf", "zzug", "zzuh", a0.class, "zzui", "zzuj", "zzuk", "zzul", "zzum"});
            case 4:
                return zzun;
            case 5:
                s5<z> s5Var = zzuo;
                if (s5Var == null) {
                    synchronized (z.class) {
                        s5Var = zzuo;
                        if (s5Var == null) {
                            s5Var = new b4.c<>(zzun);
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

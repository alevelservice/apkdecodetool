package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;

/* loaded from: classes.dex */
public final class c0 extends b4<c0, a> implements m5 {
    private static volatile s5<c0> zzuo;
    private static final c0 zzvj = new c0();
    private int zzue;
    private int zzuf;
    private boolean zzuk;
    private boolean zzul;
    private boolean zzum;
    private String zzvh = "";
    private a0 zzvi;

    /* loaded from: classes.dex */
    public static final class a extends b4.a<c0, a> implements m5 {
        private a() {
            super(c0.zzvj);
        }

        public final a a(String str) {
            e();
            ((c0) this.f11762f).a(str);
            return this;
        }

        /* synthetic */ a(y yVar) {
            this();
        }
    }

    static {
        b4.a((Class<c0>) c0.class, zzvj);
    }

    private c0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str != null) {
            this.zzue |= 2;
            this.zzvh = str;
            return;
        }
        throw new NullPointerException();
    }

    public static s5<c0> x() {
        return (s5) zzvj.a(b4.d.f11771g, (Object) null, (Object) null);
    }

    public final int n() {
        return this.zzuf;
    }

    public final String o() {
        return this.zzvh;
    }

    public final boolean p() {
        return (this.zzue & 1) != 0;
    }

    public final boolean q() {
        return this.zzuk;
    }

    public final boolean s() {
        return this.zzul;
    }

    public final boolean u() {
        return (this.zzue & 32) != 0;
    }

    public final boolean v() {
        return this.zzum;
    }

    public final a0 w() {
        a0 a0Var = this.zzvi;
        return a0Var == null ? a0.w() : a0Var;
    }

    public static c0 a(byte[] bArr, o3 o3Var) {
        return (c0) b4.a(zzvj, bArr, o3Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.b4
    public final Object a(int i2, Object obj, Object obj2) {
        y yVar = null;
        switch (y.f12209a[i2 - 1]) {
            case 1:
                return new c0();
            case 2:
                return new a(yVar);
            case 3:
                return b4.a(zzvj, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0004\u0000\u0002\b\u0001\u0003\t\u0002\u0004\u0007\u0003\u0005\u0007\u0004\u0006\u0007\u0005", new Object[]{"zzue", "zzuf", "zzvh", "zzvi", "zzuk", "zzul", "zzum"});
            case 4:
                return zzvj;
            case 5:
                s5<c0> s5Var = zzuo;
                if (s5Var == null) {
                    synchronized (c0.class) {
                        s5Var = zzuo;
                        if (s5Var == null) {
                            s5Var = new b4.c<>(zzvj);
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

package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public abstract class f3 {

    /* renamed from: a, reason: collision with root package name */
    int f11849a;

    /* renamed from: b, reason: collision with root package name */
    int f11850b;

    /* renamed from: c, reason: collision with root package name */
    g3 f11851c;

    private f3() {
        this.f11850b = 100;
    }

    public static long a(long j2) {
        return (-(j2 & 1)) ^ (j2 >>> 1);
    }

    public static f3 a(byte[] bArr, int i2, int i3) {
        return a(bArr, i2, i3, false);
    }

    public static int g(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    public abstract double a();

    public abstract <T extends k5> T a(s5<T> s5Var, o3 o3Var);

    public abstract void a(int i2);

    public abstract float b();

    public abstract boolean b(int i2);

    public final int c(int i2) {
        if (i2 >= 0) {
            int i3 = this.f11850b;
            this.f11850b = i2;
            return i3;
        }
        StringBuilder sb = new StringBuilder(47);
        sb.append("Recursion limit cannot be negative: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    public abstract String c();

    public abstract int d();

    public abstract int d(int i2);

    public abstract long e();

    public abstract void e(int i2);

    public abstract long f();

    public abstract void f(int i2);

    public abstract int g();

    public abstract long h();

    public abstract int i();

    public abstract boolean j();

    public abstract String k();

    public abstract t2 l();

    public abstract int m();

    public abstract int n();

    public abstract int o();

    public abstract long p();

    public abstract int q();

    public abstract long r();

    public abstract boolean s();

    public abstract int t();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f3 a(byte[] bArr, int i2, int i3, boolean z) {
        h3 h3Var = new h3(bArr, i2, i3, false);
        try {
            h3Var.d(i3);
            return h3Var;
        } catch (l4 e2) {
            throw new IllegalArgumentException(e2);
        }
    }
}

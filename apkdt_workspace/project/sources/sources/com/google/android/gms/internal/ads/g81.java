package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public abstract class g81 {

    /* renamed from: a, reason: collision with root package name */
    int f6825a;

    /* renamed from: b, reason: collision with root package name */
    int f6826b;

    /* renamed from: c, reason: collision with root package name */
    k81 f6827c;

    private g81() {
        this.f6826b = 100;
    }

    public static long a(long j2) {
        return (-(j2 & 1)) ^ (j2 >>> 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g81 a(byte[] bArr, int i2, int i3, boolean z) {
        i81 i81Var = new i81(bArr, i2, i3, z);
        try {
            i81Var.c(i3);
            return i81Var;
        } catch (o91 e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static int e(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    public abstract double a();

    public abstract void a(int i2);

    public abstract float b();

    public abstract boolean b(int i2);

    public abstract int c(int i2);

    public abstract String c();

    public abstract int d();

    public abstract void d(int i2);

    public abstract long e();

    public abstract long f();

    public abstract int g();

    public abstract long h();

    public abstract int i();

    public abstract boolean j();

    public abstract String k();

    public abstract t71 l();

    public abstract int m();

    public abstract int n();

    public abstract int o();

    public abstract long p();

    public abstract int q();

    public abstract long r();

    public abstract boolean s();

    public abstract int t();
}

package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kc0 {

    /* renamed from: a, reason: collision with root package name */
    private int f7653a = 0;

    /* renamed from: b, reason: collision with root package name */
    private long f7654b = 0;

    /* renamed from: c, reason: collision with root package name */
    private long f7655c = 0;

    /* renamed from: d, reason: collision with root package name */
    private long f7656d = 0;

    /* renamed from: e, reason: collision with root package name */
    private final Object f7657e = new Object();

    /* renamed from: f, reason: collision with root package name */
    private final Object f7658f = new Object();

    /* renamed from: g, reason: collision with root package name */
    private final Object f7659g = new Object();

    /* renamed from: h, reason: collision with root package name */
    private final Object f7660h = new Object();

    public final void a(int i2) {
        synchronized (this.f7657e) {
            this.f7653a = i2;
        }
    }

    public final long b() {
        long j2;
        synchronized (this.f7658f) {
            j2 = this.f7654b;
        }
        return j2;
    }

    public final synchronized void c(long j2) {
        synchronized (this.f7659g) {
            this.f7655c = j2;
        }
    }

    public final synchronized long d() {
        long j2;
        synchronized (this.f7660h) {
            j2 = this.f7656d;
        }
        return j2;
    }

    public final int a() {
        int i2;
        synchronized (this.f7657e) {
            i2 = this.f7653a;
        }
        return i2;
    }

    public final synchronized void b(long j2) {
        synchronized (this.f7660h) {
            this.f7656d = j2;
        }
    }

    public final synchronized long c() {
        long j2;
        synchronized (this.f7659g) {
            j2 = this.f7655c;
        }
        return j2;
    }

    public final void a(long j2) {
        synchronized (this.f7658f) {
            this.f7654b = j2;
        }
    }
}

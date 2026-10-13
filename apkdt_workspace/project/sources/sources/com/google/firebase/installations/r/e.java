package com.google.firebase.installations.r;

import androidx.annotation.GuardedBy;
import com.google.firebase.installations.o;
import java.util.concurrent.TimeUnit;

/* compiled from: RequestLimiter.java */
/* loaded from: classes.dex */
class e {

    /* renamed from: d, reason: collision with root package name */
    private static final long f15127d = TimeUnit.HOURS.toMillis(24);

    /* renamed from: e, reason: collision with root package name */
    private static final long f15128e = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: a, reason: collision with root package name */
    private final o f15129a = o.d();

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private long f15130b;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private int f15131c;

    private synchronized void b() {
        this.f15131c = 0;
    }

    private static boolean c(int i2) {
        return i2 == 429 || (i2 >= 500 && i2 < 600);
    }

    private static boolean d(int i2) {
        return (i2 >= 200 && i2 < 300) || i2 == 401 || i2 == 404;
    }

    public synchronized void a(int i2) {
        if (d(i2)) {
            b();
            return;
        }
        this.f15131c++;
        this.f15130b = this.f15129a.a() + b(i2);
    }

    private synchronized long b(int i2) {
        if (!c(i2)) {
            return f15127d;
        }
        double pow = Math.pow(2.0d, this.f15131c);
        double c2 = this.f15129a.c();
        Double.isNaN(c2);
        return (long) Math.min(pow + c2, f15128e);
    }

    public synchronized boolean a() {
        boolean z;
        if (this.f15131c != 0) {
            z = this.f15129a.a() > this.f15130b;
        }
        return z;
    }
}

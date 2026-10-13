package j;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* compiled from: Timeout.java */
/* loaded from: classes2.dex */
public class v {

    /* renamed from: d, reason: collision with root package name */
    public static final v f19682d = new a();

    /* renamed from: a, reason: collision with root package name */
    private boolean f19683a;

    /* renamed from: b, reason: collision with root package name */
    private long f19684b;

    /* renamed from: c, reason: collision with root package name */
    private long f19685c;

    /* compiled from: Timeout.java */
    /* loaded from: classes2.dex */
    final class a extends v {
        a() {
        }

        @Override // j.v
        public v a(long j2) {
            return this;
        }

        @Override // j.v
        public v a(long j2, TimeUnit timeUnit) {
            return this;
        }

        @Override // j.v
        public void e() {
        }
    }

    public v a(long j2, TimeUnit timeUnit) {
        if (j2 >= 0) {
            if (timeUnit != null) {
                this.f19685c = timeUnit.toNanos(j2);
                return this;
            }
            throw new IllegalArgumentException("unit == null");
        }
        throw new IllegalArgumentException("timeout < 0: " + j2);
    }

    public v b() {
        this.f19685c = 0L;
        return this;
    }

    public long c() {
        if (this.f19683a) {
            return this.f19684b;
        }
        throw new IllegalStateException("No deadline");
    }

    public boolean d() {
        return this.f19683a;
    }

    public void e() {
        if (!Thread.interrupted()) {
            if (this.f19683a && this.f19684b - System.nanoTime() <= 0) {
                throw new InterruptedIOException("deadline reached");
            }
            return;
        }
        Thread.currentThread().interrupt();
        throw new InterruptedIOException("interrupted");
    }

    public long f() {
        return this.f19685c;
    }

    public v a(long j2) {
        this.f19683a = true;
        this.f19684b = j2;
        return this;
    }

    public v a() {
        this.f19683a = false;
        return this;
    }
}

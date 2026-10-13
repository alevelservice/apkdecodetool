package com.facebook.imagepipeline.producers;

import android.os.SystemClock;
import com.facebook.common.internal.VisibleForTesting;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: JobScheduler.java */
/* loaded from: classes.dex */
public class t {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f4091a;

    /* renamed from: b, reason: collision with root package name */
    private final d f4092b;

    /* renamed from: e, reason: collision with root package name */
    private final int f4095e;

    /* renamed from: c, reason: collision with root package name */
    private final Runnable f4093c = new a();

    /* renamed from: d, reason: collision with root package name */
    private final Runnable f4094d = new b();

    /* renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("this")
    e.f.i.g.e f4096f = null;

    /* renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("this")
    int f4097g = 0;

    /* renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("this")
    f f4098h = f.IDLE;

    /* renamed from: i, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("this")
    long f4099i = 0;

    /* renamed from: j, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("this")
    long f4100j = 0;

    /* compiled from: JobScheduler.java */
    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.d();
        }
    }

    /* compiled from: JobScheduler.java */
    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f();
        }
    }

    /* compiled from: JobScheduler.java */
    /* loaded from: classes.dex */
    static /* synthetic */ class c {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f4103a = new int[f.values().length];

        static {
            try {
                f4103a[f.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4103a[f.QUEUED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4103a[f.RUNNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4103a[f.RUNNING_AND_PENDING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: JobScheduler.java */
    /* loaded from: classes.dex */
    public interface d {
        void a(e.f.i.g.e eVar, int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JobScheduler.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a, reason: collision with root package name */
        private static ScheduledExecutorService f4104a;

        static ScheduledExecutorService a() {
            if (f4104a == null) {
                f4104a = Executors.newSingleThreadScheduledExecutor();
            }
            return f4104a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JobScheduler.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public enum f {
        IDLE,
        QUEUED,
        RUNNING,
        RUNNING_AND_PENDING
    }

    public t(Executor executor, d dVar, int i2) {
        this.f4091a = executor;
        this.f4092b = dVar;
        this.f4095e = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        e.f.i.g.e eVar;
        int i2;
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (this) {
            eVar = this.f4096f;
            i2 = this.f4097g;
            this.f4096f = null;
            this.f4097g = 0;
            this.f4098h = f.RUNNING;
            this.f4100j = uptimeMillis;
        }
        try {
            if (b(eVar, i2)) {
                this.f4092b.a(eVar, i2);
            }
        } finally {
            e.f.i.g.e.c(eVar);
            e();
        }
    }

    private void e() {
        long j2;
        boolean z;
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (this) {
            if (this.f4098h == f.RUNNING_AND_PENDING) {
                j2 = Math.max(this.f4100j + this.f4095e, uptimeMillis);
                z = true;
                this.f4099i = uptimeMillis;
                this.f4098h = f.QUEUED;
            } else {
                this.f4098h = f.IDLE;
                j2 = 0;
                z = false;
            }
        }
        if (z) {
            a(j2 - uptimeMillis);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.f4091a.execute(this.f4093c);
    }

    public boolean c() {
        long max;
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (this) {
            boolean z = false;
            if (!b(this.f4096f, this.f4097g)) {
                return false;
            }
            int i2 = c.f4103a[this.f4098h.ordinal()];
            if (i2 != 1) {
                if (i2 != 2 && i2 == 3) {
                    this.f4098h = f.RUNNING_AND_PENDING;
                }
                max = 0;
            } else {
                max = Math.max(this.f4100j + this.f4095e, uptimeMillis);
                this.f4099i = uptimeMillis;
                this.f4098h = f.QUEUED;
                z = true;
            }
            if (z) {
                a(max - uptimeMillis);
            }
            return true;
        }
    }

    private static boolean b(e.f.i.g.e eVar, int i2) {
        return com.facebook.imagepipeline.producers.b.a(i2) || com.facebook.imagepipeline.producers.b.b(i2, 4) || e.f.i.g.e.e(eVar);
    }

    public void a() {
        e.f.i.g.e eVar;
        synchronized (this) {
            eVar = this.f4096f;
            this.f4096f = null;
            this.f4097g = 0;
        }
        e.f.i.g.e.c(eVar);
    }

    public synchronized long b() {
        return this.f4100j - this.f4099i;
    }

    public boolean a(e.f.i.g.e eVar, int i2) {
        e.f.i.g.e eVar2;
        if (!b(eVar, i2)) {
            return false;
        }
        synchronized (this) {
            eVar2 = this.f4096f;
            this.f4096f = e.f.i.g.e.b(eVar);
            this.f4097g = i2;
        }
        e.f.i.g.e.c(eVar2);
        return true;
    }

    private void a(long j2) {
        if (j2 > 0) {
            e.a().schedule(this.f4094d, j2, TimeUnit.MILLISECONDS);
        } else {
            this.f4094d.run();
        }
    }
}

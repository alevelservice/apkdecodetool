package com.google.firebase.crashlytics.d.h;

import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: ExecutorUtils.java */
/* loaded from: classes.dex */
public final class w {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExecutorUtils.java */
    /* loaded from: classes.dex */
    public class a implements ThreadFactory {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f14567e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ AtomicLong f14568f;

        /* compiled from: ExecutorUtils.java */
        /* renamed from: com.google.firebase.crashlytics.d.h.w$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0115a extends d {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ Runnable f14569e;

            C0115a(a aVar, Runnable runnable) {
                this.f14569e = runnable;
            }

            @Override // com.google.firebase.crashlytics.d.h.d
            public void a() {
                this.f14569e.run();
            }
        }

        a(String str, AtomicLong atomicLong) {
            this.f14567e = str;
            this.f14568f = atomicLong;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(new C0115a(this, runnable));
            newThread.setName(this.f14567e + this.f14568f.getAndIncrement());
            return newThread;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExecutorUtils.java */
    /* loaded from: classes.dex */
    public class b extends d {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f14570e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ ExecutorService f14571f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ long f14572g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ TimeUnit f14573h;

        b(String str, ExecutorService executorService, long j2, TimeUnit timeUnit) {
            this.f14570e = str;
            this.f14571f = executorService;
            this.f14572g = j2;
            this.f14573h = timeUnit;
        }

        @Override // com.google.firebase.crashlytics.d.h.d
        public void a() {
            try {
                com.google.firebase.crashlytics.d.b.a().a("Executing shutdown hook for " + this.f14570e);
                this.f14571f.shutdown();
                if (this.f14571f.awaitTermination(this.f14572g, this.f14573h)) {
                    return;
                }
                com.google.firebase.crashlytics.d.b.a().a(this.f14570e + " did not shut down in the allocated time. Requesting immediate shutdown.");
                this.f14571f.shutdownNow();
            } catch (InterruptedException unused) {
                com.google.firebase.crashlytics.d.b.a().a(String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", this.f14570e));
                this.f14571f.shutdownNow();
            }
        }
    }

    public static ExecutorService a(String str) {
        ExecutorService a2 = a(b(str), new ThreadPoolExecutor.DiscardPolicy());
        a(str, a2);
        return a2;
    }

    public static final ThreadFactory b(String str) {
        return new a(str, new AtomicLong(1L));
    }

    private static ExecutorService a(ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        return Executors.unconfigurableExecutorService(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), threadFactory, rejectedExecutionHandler));
    }

    private static void a(String str, ExecutorService executorService) {
        a(str, executorService, 2L, TimeUnit.SECONDS);
    }

    private static void a(String str, ExecutorService executorService, long j2, TimeUnit timeUnit) {
        Runtime.getRuntime().addShutdownHook(new Thread(new b(str, executorService, j2, timeUnit), "Crashlytics Shutdown Hook for " + str));
    }
}

package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.CheckReturnValue;
import java.lang.Thread;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: ThreadFactoryBuilder.java */
@CanIgnoreReturnValue
@GwtIncompatible
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    private String f14264a = null;

    /* renamed from: b, reason: collision with root package name */
    private Boolean f14265b = null;

    /* renamed from: c, reason: collision with root package name */
    private Integer f14266c = null;

    /* renamed from: d, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f14267d = null;

    /* renamed from: e, reason: collision with root package name */
    private ThreadFactory f14268e = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ThreadFactoryBuilder.java */
    /* loaded from: classes.dex */
    public static class a implements ThreadFactory {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ ThreadFactory f14269e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f14270f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ AtomicLong f14271g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ Boolean f14272h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ Integer f14273i;

        /* renamed from: j, reason: collision with root package name */
        final /* synthetic */ Thread.UncaughtExceptionHandler f14274j;

        a(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool, Integer num, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f14269e = threadFactory;
            this.f14270f = str;
            this.f14271g = atomicLong;
            this.f14272h = bool;
            this.f14273i = num;
            this.f14274j = uncaughtExceptionHandler;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = this.f14269e.newThread(runnable);
            String str = this.f14270f;
            if (str != null) {
                newThread.setName(h.b(str, Long.valueOf(this.f14271g.getAndIncrement())));
            }
            Boolean bool = this.f14272h;
            if (bool != null) {
                newThread.setDaemon(bool.booleanValue());
            }
            Integer num = this.f14273i;
            if (num != null) {
                newThread.setPriority(num.intValue());
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f14274j;
            if (uncaughtExceptionHandler != null) {
                newThread.setUncaughtExceptionHandler(uncaughtExceptionHandler);
            }
            return newThread;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }

    public h a(String str) {
        b(str, 0);
        this.f14264a = str;
        return this;
    }

    public h a(int i2) {
        e.i.c.a.j.a(i2 >= 1, "Thread priority (%s) must be >= %s", i2, 1);
        e.i.c.a.j.a(i2 <= 10, "Thread priority (%s) must be <= %s", i2, 10);
        this.f14266c = Integer.valueOf(i2);
        return this;
    }

    @CheckReturnValue
    public ThreadFactory a() {
        return a(this);
    }

    private static ThreadFactory a(h hVar) {
        String str = hVar.f14264a;
        Boolean bool = hVar.f14265b;
        Integer num = hVar.f14266c;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = hVar.f14267d;
        ThreadFactory threadFactory = hVar.f14268e;
        if (threadFactory == null) {
            threadFactory = Executors.defaultThreadFactory();
        }
        return new a(threadFactory, str, str != null ? new AtomicLong(0L) : null, bool, num, uncaughtExceptionHandler);
    }
}

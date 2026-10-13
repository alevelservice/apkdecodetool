package com.facebook.imagepipeline.core;

import android.os.Process;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PriorityThreadFactory.java */
/* loaded from: classes.dex */
public class k implements ThreadFactory {

    /* renamed from: e, reason: collision with root package name */
    private final int f3753e;

    /* renamed from: f, reason: collision with root package name */
    private final String f3754f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f3755g;

    /* renamed from: h, reason: collision with root package name */
    private final AtomicInteger f3756h = new AtomicInteger(1);

    /* compiled from: PriorityThreadFactory.java */
    /* loaded from: classes.dex */
    class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Runnable f3757e;

        a(Runnable runnable) {
            this.f3757e = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Process.setThreadPriority(k.this.f3753e);
            } catch (Throwable unused) {
            }
            this.f3757e.run();
        }
    }

    public k(int i2, String str, boolean z) {
        this.f3753e = i2;
        this.f3754f = str;
        this.f3755g = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        String str;
        a aVar = new a(runnable);
        if (this.f3755g) {
            str = this.f3754f + "-" + this.f3756h.getAndIncrement();
        } else {
            str = this.f3754f;
        }
        return new Thread(aVar, str);
    }
}

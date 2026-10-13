package e.b.b.a.a.d.h;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: LogThreadPool.java */
/* loaded from: classes.dex */
final class d implements ThreadFactory {

    /* renamed from: e, reason: collision with root package name */
    private final AtomicInteger f17027e = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, "LogThreadPool background executor" + this.f17027e.getAndIncrement());
    }
}

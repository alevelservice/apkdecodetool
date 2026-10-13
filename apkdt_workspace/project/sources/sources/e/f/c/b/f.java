package e.f.c.b;

import android.os.Handler;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* compiled from: ScheduledFutureImpl.java */
/* loaded from: classes.dex */
public class f<V> implements RunnableFuture<V>, ScheduledFuture<V> {

    /* renamed from: e, reason: collision with root package name */
    private final FutureTask<V> f17143e;

    public f(Handler handler, Callable<V> callable) {
        this.f17143e = new FutureTask<>(callable);
    }

    public int a(Delayed delayed) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.f17143e.cancel(z);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Delayed delayed) {
        a(delayed);
        throw null;
    }

    @Override // java.util.concurrent.Future
    public V get() {
        return this.f17143e.get();
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f17143e.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f17143e.isDone();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        this.f17143e.run();
    }

    @Override // java.util.concurrent.Future
    public V get(long j2, TimeUnit timeUnit) {
        return this.f17143e.get(j2, timeUnit);
    }

    public f(Handler handler, Runnable runnable, @Nullable V v) {
        this.f17143e = new FutureTask<>(runnable, v);
    }
}

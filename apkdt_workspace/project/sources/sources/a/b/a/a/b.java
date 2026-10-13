package a.b.a.a;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: DefaultTaskExecutor.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class b extends c {

    /* renamed from: a, reason: collision with root package name */
    private final Object f60a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private final ExecutorService f61b = Executors.newFixedThreadPool(2, new a(this));

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private volatile Handler f62c;

    /* compiled from: DefaultTaskExecutor.java */
    /* loaded from: classes.dex */
    class a implements ThreadFactory {

        /* renamed from: e, reason: collision with root package name */
        private final AtomicInteger f63e = new AtomicInteger(0);

        a(b bVar) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.f63e.getAndIncrement())));
            return thread;
        }
    }

    @Override // a.b.a.a.c
    public void a(Runnable runnable) {
        this.f61b.execute(runnable);
    }

    @Override // a.b.a.a.c
    public void b(Runnable runnable) {
        if (this.f62c == null) {
            synchronized (this.f60a) {
                if (this.f62c == null) {
                    this.f62c = new Handler(Looper.getMainLooper());
                }
            }
        }
        this.f62c.post(runnable);
    }

    @Override // a.b.a.a.c
    public boolean a() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}

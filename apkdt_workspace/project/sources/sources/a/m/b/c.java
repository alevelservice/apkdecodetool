package a.m.b;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ModernAsyncTask.java */
/* loaded from: classes.dex */
abstract class c<Params, Progress, Result> {

    /* renamed from: j, reason: collision with root package name */
    private static final ThreadFactory f436j = new a();

    /* renamed from: k, reason: collision with root package name */
    private static final BlockingQueue<Runnable> f437k = new LinkedBlockingQueue(10);

    /* renamed from: l, reason: collision with root package name */
    public static final Executor f438l = new ThreadPoolExecutor(5, 128, 1, TimeUnit.SECONDS, f437k, f436j);
    private static f m;

    /* renamed from: g, reason: collision with root package name */
    private volatile g f441g = g.PENDING;

    /* renamed from: h, reason: collision with root package name */
    final AtomicBoolean f442h = new AtomicBoolean();

    /* renamed from: i, reason: collision with root package name */
    final AtomicBoolean f443i = new AtomicBoolean();

    /* renamed from: e, reason: collision with root package name */
    private final h<Params, Result> f439e = new b();

    /* renamed from: f, reason: collision with root package name */
    private final FutureTask<Result> f440f = new C0017c(this.f439e);

    /* compiled from: ModernAsyncTask.java */
    /* loaded from: classes.dex */
    static class a implements ThreadFactory {

        /* renamed from: e, reason: collision with root package name */
        private final AtomicInteger f444e = new AtomicInteger(1);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "ModernAsyncTask #" + this.f444e.getAndIncrement());
        }
    }

    /* compiled from: ModernAsyncTask.java */
    /* loaded from: classes.dex */
    class b extends h<Params, Result> {
        b() {
        }

        @Override // java.util.concurrent.Callable
        public Result call() {
            c.this.f443i.set(true);
            Result result = null;
            try {
                Process.setThreadPriority(10);
                result = (Result) c.this.a((Object[]) this.f451e);
                Binder.flushPendingCommands();
                return result;
            } finally {
            }
        }
    }

    /* compiled from: ModernAsyncTask.java */
    /* renamed from: a.m.b.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0017c extends FutureTask<Result> {
        C0017c(Callable callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                c.this.e(get());
            } catch (InterruptedException unused) {
            } catch (CancellationException unused2) {
                c.this.e(null);
            } catch (ExecutionException e2) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e2.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    }

    /* compiled from: ModernAsyncTask.java */
    /* loaded from: classes.dex */
    static /* synthetic */ class d {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f447a = new int[g.values().length];

        static {
            try {
                f447a[g.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f447a[g.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ModernAsyncTask.java */
    /* loaded from: classes.dex */
    public static class e<Data> {

        /* renamed from: a, reason: collision with root package name */
        final c f448a;

        /* renamed from: b, reason: collision with root package name */
        final Data[] f449b;

        e(c cVar, Data... dataArr) {
            this.f448a = cVar;
            this.f449b = dataArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ModernAsyncTask.java */
    /* loaded from: classes.dex */
    public static class f extends Handler {
        f() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            e eVar = (e) message.obj;
            int i2 = message.what;
            if (i2 == 1) {
                eVar.f448a.a((c) eVar.f449b[0]);
            } else {
                if (i2 != 2) {
                    return;
                }
                eVar.f448a.b((Object[]) eVar.f449b);
            }
        }
    }

    /* compiled from: ModernAsyncTask.java */
    /* loaded from: classes.dex */
    public enum g {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* compiled from: ModernAsyncTask.java */
    /* loaded from: classes.dex */
    private static abstract class h<Params, Result> implements Callable<Result> {

        /* renamed from: e, reason: collision with root package name */
        Params[] f451e;

        h() {
        }
    }

    private static Handler d() {
        f fVar;
        synchronized (c.class) {
            if (m == null) {
                m = new f();
            }
            fVar = m;
        }
        return fVar;
    }

    protected abstract Result a(Params... paramsArr);

    public final boolean a() {
        return this.f442h.get();
    }

    protected void b() {
    }

    protected void b(Result result) {
        b();
    }

    protected void b(Progress... progressArr) {
    }

    protected void c() {
    }

    protected void c(Result result) {
    }

    void e(Result result) {
        if (this.f443i.get()) {
            return;
        }
        d(result);
    }

    public final boolean a(boolean z) {
        this.f442h.set(true);
        return this.f440f.cancel(z);
    }

    public final c<Params, Progress, Result> a(Executor executor, Params... paramsArr) {
        if (this.f441g != g.PENDING) {
            int i2 = d.f447a[this.f441g.ordinal()];
            if (i2 == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            }
            if (i2 != 2) {
                throw new IllegalStateException("We should never reach this state");
            }
            throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
        }
        this.f441g = g.RUNNING;
        c();
        this.f439e.f451e = paramsArr;
        executor.execute(this.f440f);
        return this;
    }

    Result d(Result result) {
        d().obtainMessage(1, new e(this, result)).sendToTarget();
        return result;
    }

    void a(Result result) {
        if (a()) {
            b((c<Params, Progress, Result>) result);
        } else {
            c(result);
        }
        this.f441g = g.FINISHED;
    }
}

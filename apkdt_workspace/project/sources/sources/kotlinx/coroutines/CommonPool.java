package kotlinx.coroutines;

import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;

/* compiled from: CommonPool.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\u0011\u001a\u0004\u0018\u0001H\u0012\"\u0004\b\u0000\u0010\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0014H\u0082\b¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0002J\b\u0010\u001a\u001a\u00020\u0019H\u0002J\u001c\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001d2\n\u0010\u0013\u001a\u00060\u001ej\u0002`\u001fH\u0016J\b\u0010 \u001a\u00020\u0006H\u0002J!\u0010!\u001a\u00020\u00102\n\u0010\"\u001a\u0006\u0012\u0002\b\u00030#2\u0006\u0010\u0005\u001a\u00020\u0019H\u0000¢\u0006\u0002\b$J\r\u0010%\u001a\u00020\u0017H\u0000¢\u0006\u0002\b&J\u0015\u0010'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)H\u0000¢\u0006\u0002\b*J\b\u0010+\u001a\u00020\u0004H\u0016J\r\u0010\u000f\u001a\u00020\u0017H\u0000¢\u0006\u0002\b,R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0010\u0010\r\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Lkotlinx/coroutines/CommonPool;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "()V", "DEFAULT_PARALLELISM_PROPERTY_NAME", "", "executor", "Ljava/util/concurrent/Executor;", "getExecutor", "()Ljava/util/concurrent/Executor;", "parallelism", "", "getParallelism", "()I", "pool", "requestedParallelism", "usePrivatePool", "", "Try", "T", "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "close", "", "createPlainPool", "Ljava/util/concurrent/ExecutorService;", "createPool", "dispatch", "context", "Lkotlin/coroutines/CoroutineContext;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "getOrCreatePoolSync", "isGoodCommonPool", "fjpClass", "Ljava/lang/Class;", "isGoodCommonPool$kotlinx_coroutines_core", "restore", "restore$kotlinx_coroutines_core", "shutdown", "timeout", "", "shutdown$kotlinx_coroutines_core", "toString", "usePrivatePool$kotlinx_coroutines_core", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlinx.coroutines.p, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
public final class CommonPool extends z0 {

    /* renamed from: e, reason: collision with root package name */
    private static final int f20121e;

    /* renamed from: f, reason: collision with root package name */
    private static boolean f20122f;

    /* renamed from: g, reason: collision with root package name */
    public static final CommonPool f20123g = new CommonPool();
    private static volatile Executor pool;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonPool.kt */
    /* renamed from: kotlinx.coroutines.p$a */
    /* loaded from: classes2.dex */
    public static final class a implements ThreadFactory {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ AtomicInteger f20124e;

        a(AtomicInteger atomicInteger) {
            this.f20124e = atomicInteger;
        }

        @Override // java.util.concurrent.ThreadFactory
        @NotNull
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "CommonPool-worker-" + this.f20124e.incrementAndGet());
            thread.setDaemon(true);
            return thread;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonPool.kt */
    /* renamed from: kotlinx.coroutines.p$b */
    /* loaded from: classes2.dex */
    public static final class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        public static final b f20125e = new b();

        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
        }
    }

    static {
        String str;
        int i2;
        Integer a2;
        try {
            str = System.getProperty("kotlinx.coroutines.default.parallelism");
        } catch (Throwable unused) {
            str = null;
        }
        if (str != null) {
            a2 = kotlin.text.k.a(str);
            if (a2 != null && a2.intValue() >= 1) {
                i2 = a2.intValue();
            } else {
                throw new IllegalStateException(("Expected positive number in kotlinx.coroutines.default.parallelism, but has " + str).toString());
            }
        } else {
            i2 = -1;
        }
        f20121e = i2;
    }

    private CommonPool() {
    }

    private final ExecutorService o() {
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(r(), new a(new AtomicInteger()));
        kotlin.jvm.d.h.a((Object) newFixedThreadPool, "Executors.newFixedThread…Daemon = true }\n        }");
        return newFixedThreadPool;
    }

    private final ExecutorService p() {
        Class<?> cls;
        ExecutorService executorService;
        ExecutorService executorService2;
        if (System.getSecurityManager() != null) {
            return o();
        }
        try {
            cls = Class.forName("java.util.concurrent.ForkJoinPool");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls != null) {
            if (!f20122f && f20121e < 0) {
                try {
                    Method method = cls.getMethod("commonPool", new Class[0]);
                    Object invoke = method != null ? method.invoke(null, new Object[0]) : null;
                    if (!(invoke instanceof ExecutorService)) {
                        invoke = null;
                    }
                    executorService2 = (ExecutorService) invoke;
                } catch (Throwable unused2) {
                    executorService2 = null;
                }
                if (executorService2 != null) {
                    if (!f20123g.a(cls, executorService2)) {
                        executorService2 = null;
                    }
                    if (executorService2 != null) {
                        return executorService2;
                    }
                }
            }
            try {
                Object newInstance = cls.getConstructor(Integer.TYPE).newInstance(Integer.valueOf(f20123g.r()));
                if (!(newInstance instanceof ExecutorService)) {
                    newInstance = null;
                }
                executorService = (ExecutorService) newInstance;
            } catch (Throwable unused3) {
                executorService = null;
            }
            return executorService != null ? executorService : o();
        }
        return o();
    }

    private final synchronized Executor q() {
        Executor executor;
        executor = pool;
        if (executor == null) {
            executor = p();
            pool = executor;
        }
        return executor;
    }

    private final int r() {
        int a2;
        Integer valueOf = Integer.valueOf(f20121e);
        if (!(valueOf.intValue() > 0)) {
            valueOf = null;
        }
        if (valueOf != null) {
            return valueOf.intValue();
        }
        a2 = kotlin.ranges.q.a(Runtime.getRuntime().availableProcessors() - 1, 1);
        return a2;
    }

    public final boolean a(@NotNull Class<?> cls, @NotNull ExecutorService executorService) {
        Integer num;
        kotlin.jvm.d.h.b(cls, "fjpClass");
        kotlin.jvm.d.h.b(executorService, "executor");
        executorService.submit(b.f20125e);
        try {
            Object invoke = cls.getMethod("getPoolSize", new Class[0]).invoke(executorService, new Object[0]);
            if (!(invoke instanceof Integer)) {
                invoke = null;
            }
            num = (Integer) invoke;
        } catch (Throwable unused) {
            num = null;
        }
        return num != null && num.intValue() >= 1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on CommonPool".toString());
    }

    @Override // kotlinx.coroutines.z
    @NotNull
    public String toString() {
        return "CommonPool";
    }

    @Override // kotlinx.coroutines.z
    /* renamed from: a */
    public void mo32a(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        kotlin.jvm.d.h.b(coroutineContext, "context");
        kotlin.jvm.d.h.b(runnable, "block");
        try {
            Executor executor = pool;
            if (executor == null) {
                executor = q();
            }
            c2.a().a(runnable);
            executor.execute(runnable);
        } catch (RejectedExecutionException unused) {
            c2.a().c();
            k0.f20104k.b(runnable);
        }
    }
}

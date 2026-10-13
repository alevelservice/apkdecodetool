package kotlinx.coroutines.scheduling;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.d.h;
import kotlinx.coroutines.z0;
import org.jetbrains.annotations.NotNull;

/* compiled from: Dispatcher.kt */
/* loaded from: classes2.dex */
final class f extends z0 implements j, Executor {

    /* renamed from: i, reason: collision with root package name */
    private static final AtomicIntegerFieldUpdater f20027i = AtomicIntegerFieldUpdater.newUpdater(f.class, "inFlightTasks");

    /* renamed from: e, reason: collision with root package name */
    private final ConcurrentLinkedQueue<Runnable> f20028e;

    /* renamed from: f, reason: collision with root package name */
    @NotNull
    private final d f20029f;

    /* renamed from: g, reason: collision with root package name */
    private final int f20030g;

    /* renamed from: h, reason: collision with root package name */
    @NotNull
    private final l f20031h;
    private volatile int inFlightTasks;

    public f(@NotNull d dVar, int i2, @NotNull l lVar) {
        h.b(dVar, "dispatcher");
        h.b(lVar, "taskMode");
        this.f20029f = dVar;
        this.f20030g = i2;
        this.f20031h = lVar;
        this.f20028e = new ConcurrentLinkedQueue<>();
        this.inFlightTasks = 0;
    }

    @Override // kotlinx.coroutines.z
    /* renamed from: a */
    public void mo32a(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        h.b(coroutineContext, "context");
        h.b(runnable, "block");
        a(runnable, false);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on LimitingBlockingDispatcher".toString());
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        h.b(runnable, "command");
        a(runnable, false);
    }

    @Override // kotlinx.coroutines.scheduling.j
    public void l() {
        Runnable poll = this.f20028e.poll();
        if (poll != null) {
            this.f20029f.a(poll, this, true);
            return;
        }
        f20027i.decrementAndGet(this);
        Runnable poll2 = this.f20028e.poll();
        if (poll2 != null) {
            a(poll2, true);
        }
    }

    @Override // kotlinx.coroutines.scheduling.j
    @NotNull
    public l m() {
        return this.f20031h;
    }

    @Override // kotlinx.coroutines.z
    @NotNull
    public String toString() {
        return super.toString() + "[dispatcher = " + this.f20029f + ']';
    }

    private final void a(Runnable runnable, boolean z) {
        while (f20027i.incrementAndGet(this) > this.f20030g) {
            this.f20028e.add(runnable);
            if (f20027i.decrementAndGet(this) >= this.f20030g || (runnable = this.f20028e.poll()) == null) {
                return;
            }
        }
        this.f20029f.a(runnable, this, z);
    }
}

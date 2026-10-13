package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import org.jetbrains.annotations.NotNull;

/* compiled from: TimeSource.kt */
/* loaded from: classes2.dex */
public final class l0 implements b2 {

    /* renamed from: a, reason: collision with root package name */
    public static final l0 f20106a = new l0();

    private l0() {
    }

    @Override // kotlinx.coroutines.b2
    @NotNull
    public Runnable a(@NotNull Runnable runnable) {
        kotlin.jvm.d.h.b(runnable, "block");
        return runnable;
    }

    @Override // kotlinx.coroutines.b2
    public void a() {
    }

    @Override // kotlinx.coroutines.b2
    public void a(@NotNull Object obj, long j2) {
        kotlin.jvm.d.h.b(obj, "blocker");
        LockSupport.parkNanos(obj, j2);
    }

    @Override // kotlinx.coroutines.b2
    public long b() {
        return System.nanoTime();
    }

    @Override // kotlinx.coroutines.b2
    public void c() {
    }

    @Override // kotlinx.coroutines.b2
    public void d() {
    }

    @Override // kotlinx.coroutines.b2
    public void e() {
    }

    @Override // kotlinx.coroutines.b2
    public void a(@NotNull Thread thread) {
        kotlin.jvm.d.h.b(thread, "thread");
        LockSupport.unpark(thread);
    }
}

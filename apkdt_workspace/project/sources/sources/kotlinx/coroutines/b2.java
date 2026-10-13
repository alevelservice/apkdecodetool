package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* compiled from: TimeSource.kt */
/* loaded from: classes2.dex */
public interface b2 {
    @NotNull
    Runnable a(@NotNull Runnable runnable);

    void a();

    void a(@NotNull Object obj, long j2);

    void a(@NotNull Thread thread);

    long b();

    void c();

    void d();

    void e();
}

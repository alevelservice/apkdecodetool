package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* compiled from: EventLoop.kt */
/* loaded from: classes2.dex */
public final class c extends EventLoopImplBase {

    /* renamed from: j, reason: collision with root package name */
    @NotNull
    private final Thread f19990j;

    public c(@NotNull Thread thread) {
        kotlin.jvm.d.h.b(thread, "thread");
        this.f19990j = thread;
    }

    @Override // kotlinx.coroutines.EventLoopImplBase
    @NotNull
    protected Thread s() {
        return this.f19990j;
    }
}

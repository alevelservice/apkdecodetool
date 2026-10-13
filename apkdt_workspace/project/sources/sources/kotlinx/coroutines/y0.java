package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* compiled from: EventLoop.kt */
/* loaded from: classes2.dex */
public final class y0 {

    /* renamed from: a, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.t f20156a = new kotlinx.coroutines.internal.t("REMOVED_TASK");

    /* renamed from: b, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.t f20157b = new kotlinx.coroutines.internal.t("CLOSED_EMPTY");

    @NotNull
    public static final w0 c() {
        Thread currentThread = Thread.currentThread();
        kotlin.jvm.d.h.a((Object) currentThread, "Thread.currentThread()");
        return new c(currentThread);
    }
}

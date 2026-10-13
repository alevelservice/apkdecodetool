package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* compiled from: EventLoop.common.kt */
/* loaded from: classes2.dex */
public final class a2 {

    /* renamed from: b, reason: collision with root package name */
    public static final a2 f19985b = new a2();

    /* renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<w0> f19984a = new ThreadLocal<>();

    private a2() {
    }

    @NotNull
    public final w0 a() {
        w0 w0Var = f19984a.get();
        if (w0Var != null) {
            return w0Var;
        }
        w0 c2 = y0.c();
        f19984a.set(c2);
        return c2;
    }

    public final void b() {
        f19984a.set(null);
    }

    public final void a(@NotNull w0 w0Var) {
        kotlin.jvm.d.h.b(w0Var, "eventLoop");
        f19984a.set(w0Var);
    }
}

package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* compiled from: CancellableContinuation.kt */
/* loaded from: classes2.dex */
public final class j {
    @InternalCoroutinesApi
    public static final void a(@NotNull h<?> hVar, @NotNull t0 t0Var) {
        kotlin.jvm.d.h.b(hVar, "$this$disposeOnCancellation");
        kotlin.jvm.d.h.b(t0Var, "handle");
        hVar.a(new u0(t0Var));
    }
}

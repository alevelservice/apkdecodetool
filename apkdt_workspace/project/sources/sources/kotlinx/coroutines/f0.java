package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;

/* compiled from: CoroutineScope.kt */
/* loaded from: classes2.dex */
public final class f0 {
    @NotNull
    public static final e0 a(@NotNull CoroutineContext coroutineContext) {
        q a2;
        kotlin.jvm.d.h.b(coroutineContext, "context");
        if (coroutineContext.get(Job.f20051d) == null) {
            a2 = l1.a(null, 1, null);
            coroutineContext = coroutineContext.plus(a2);
        }
        return new kotlinx.coroutines.internal.f(coroutineContext);
    }
}

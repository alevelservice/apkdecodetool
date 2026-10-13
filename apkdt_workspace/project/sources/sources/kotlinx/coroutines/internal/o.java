package kotlinx.coroutines.internal;

import java.util.List;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.r1;
import org.jetbrains.annotations.NotNull;

/* compiled from: MainDispatchers.kt */
/* loaded from: classes2.dex */
public final class o {
    @InternalCoroutinesApi
    @NotNull
    public static final r1 a(@NotNull MainDispatcherFactory mainDispatcherFactory, @NotNull List<? extends MainDispatcherFactory> list) {
        kotlin.jvm.d.h.b(mainDispatcherFactory, "$this$tryCreateDispatcher");
        kotlin.jvm.d.h.b(list, "factories");
        try {
            return mainDispatcherFactory.createDispatcher(list);
        } catch (Throwable th) {
            return new p(th, mainDispatcherFactory.hintOnError());
        }
    }
}

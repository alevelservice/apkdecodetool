package kotlin.coroutines;

import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;

/* compiled from: Continuation.kt */
@SinceKotlin(version = "1.3")
/* loaded from: classes2.dex */
public interface c<T> {
    @NotNull
    CoroutineContext getContext();

    void resumeWith(@NotNull Object obj);
}

package kotlin.coroutines;

import java.io.Serializable;
import kotlin.SinceKotlin;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.d.h;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: CoroutineContextImpl.kt */
@SinceKotlin(version = "1.3")
/* loaded from: classes2.dex */
public final class g implements CoroutineContext, Serializable {
    public static final g INSTANCE = new g();
    private static final long serialVersionUID = 0;

    private g() {
    }

    private final Object readResolve() {
        return INSTANCE;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, @NotNull kotlin.jvm.c.c<? super R, ? super CoroutineContext.b, ? extends R> cVar) {
        h.b(cVar, "operation");
        return r;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.b> E get(@NotNull CoroutineContext.c<E> cVar) {
        h.b(cVar, "key");
        return null;
    }

    public int hashCode() {
        return 0;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.c<?> cVar) {
        h.b(cVar, "key");
        return this;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        h.b(coroutineContext, "context");
        return coroutineContext;
    }

    @NotNull
    public String toString() {
        return "EmptyCoroutineContext";
    }
}

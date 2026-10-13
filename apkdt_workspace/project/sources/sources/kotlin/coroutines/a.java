package kotlin.coroutines;

import kotlin.SinceKotlin;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.d.h;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: CoroutineContextImpl.kt */
@SinceKotlin(version = "1.3")
/* loaded from: classes2.dex */
public abstract class a implements CoroutineContext.b {

    @NotNull
    private final CoroutineContext.c<?> key;

    public a(@NotNull CoroutineContext.c<?> cVar) {
        h.b(cVar, "key");
        this.key = cVar;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, @NotNull kotlin.jvm.c.c<? super R, ? super CoroutineContext.b, ? extends R> cVar) {
        h.b(cVar, "operation");
        return (R) CoroutineContext.b.a.a(this, r, cVar);
    }

    @Override // kotlin.coroutines.CoroutineContext.b, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.b> E get(@NotNull CoroutineContext.c<E> cVar) {
        h.b(cVar, "key");
        return (E) CoroutineContext.b.a.a(this, cVar);
    }

    @Override // kotlin.coroutines.CoroutineContext.b
    @NotNull
    public CoroutineContext.c<?> getKey() {
        return this.key;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.c<?> cVar) {
        h.b(cVar, "key");
        return CoroutineContext.b.a.b(this, cVar);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        h.b(coroutineContext, "context");
        return CoroutineContext.b.a.a(this, coroutineContext);
    }
}

package kotlinx.coroutines;

import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: CoroutineDispatcher.kt */
/* loaded from: classes2.dex */
public abstract class z extends kotlin.coroutines.a implements ContinuationInterceptor {
    public z() {
        super(ContinuationInterceptor.f19921b);
    }

    /* renamed from: a */
    public abstract void mo32a(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable);

    @Override // kotlin.coroutines.ContinuationInterceptor
    public void b(@NotNull kotlin.coroutines.c<?> cVar) {
        kotlin.jvm.d.h.b(cVar, "continuation");
        ContinuationInterceptor.a.a(this, cVar);
    }

    @ExperimentalCoroutinesApi
    public boolean b(@NotNull CoroutineContext coroutineContext) {
        kotlin.jvm.d.h.b(coroutineContext, "context");
        return true;
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    @NotNull
    public final <T> kotlin.coroutines.c<T> c(@NotNull kotlin.coroutines.c<? super T> cVar) {
        kotlin.jvm.d.h.b(cVar, "continuation");
        return new p0(this, cVar);
    }

    @Override // kotlin.coroutines.a, kotlin.coroutines.CoroutineContext.b, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.b> E get(@NotNull CoroutineContext.c<E> cVar) {
        kotlin.jvm.d.h.b(cVar, "key");
        return (E) ContinuationInterceptor.a.a(this, cVar);
    }

    @Override // kotlin.coroutines.a, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.c<?> cVar) {
        kotlin.jvm.d.h.b(cVar, "key");
        return ContinuationInterceptor.a.b(this, cVar);
    }

    @NotNull
    public String toString() {
        return j0.a(this) + '@' + j0.b(this);
    }
}

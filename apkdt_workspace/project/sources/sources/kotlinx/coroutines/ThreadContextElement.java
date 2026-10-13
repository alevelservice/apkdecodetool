package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: ThreadContextElement.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u001d\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u0000H&¢\u0006\u0002\u0010\bJ\u0015\u0010\t\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u0006H&¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/ThreadContextElement;", "S", "Lkotlin/coroutines/CoroutineContext$Element;", "restoreThreadContext", "", "context", "Lkotlin/coroutines/CoroutineContext;", "oldState", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "updateThreadContext", "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlinx.coroutines.z1, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
public interface ThreadContextElement<S> extends CoroutineContext.b {

    /* compiled from: ThreadContextElement.kt */
    /* renamed from: kotlinx.coroutines.z1$a */
    /* loaded from: classes2.dex */
    public static final class a {
        public static <S, R> R a(ThreadContextElement<S> threadContextElement, R r, @NotNull kotlin.jvm.c.c<? super R, ? super CoroutineContext.b, ? extends R> cVar) {
            kotlin.jvm.d.h.b(cVar, "operation");
            return (R) CoroutineContext.b.a.a(threadContextElement, r, cVar);
        }

        @Nullable
        public static <S, E extends CoroutineContext.b> E a(ThreadContextElement<S> threadContextElement, @NotNull CoroutineContext.c<E> cVar) {
            kotlin.jvm.d.h.b(cVar, "key");
            return (E) CoroutineContext.b.a.a(threadContextElement, cVar);
        }

        @NotNull
        public static <S> CoroutineContext a(ThreadContextElement<S> threadContextElement, @NotNull CoroutineContext coroutineContext) {
            kotlin.jvm.d.h.b(coroutineContext, "context");
            return CoroutineContext.b.a.a(threadContextElement, coroutineContext);
        }

        @NotNull
        public static <S> CoroutineContext b(ThreadContextElement<S> threadContextElement, @NotNull CoroutineContext.c<?> cVar) {
            kotlin.jvm.d.h.b(cVar, "key");
            return CoroutineContext.b.a.b(threadContextElement, cVar);
        }
    }

    S a(@NotNull CoroutineContext coroutineContext);

    void a(@NotNull CoroutineContext coroutineContext, S s);
}

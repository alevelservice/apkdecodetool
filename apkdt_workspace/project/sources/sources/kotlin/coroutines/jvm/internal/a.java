package kotlin.coroutines.jvm.internal;

import java.io.Serializable;
import kotlin.Result;
import kotlin.SinceKotlin;
import kotlin.o;
import kotlin.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: ContinuationImpl.kt */
@SinceKotlin(version = "1.3")
/* loaded from: classes2.dex */
public abstract class a implements kotlin.coroutines.c<Object>, e, Serializable {

    @Nullable
    private final kotlin.coroutines.c<Object> completion;

    public a(@Nullable kotlin.coroutines.c<Object> cVar) {
        this.completion = cVar;
    }

    @NotNull
    public kotlin.coroutines.c<t> create(@NotNull kotlin.coroutines.c<?> cVar) {
        kotlin.jvm.d.h.b(cVar, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    @Override // kotlin.coroutines.jvm.internal.e
    @Nullable
    public e getCallerFrame() {
        kotlin.coroutines.c<Object> cVar = this.completion;
        if (!(cVar instanceof e)) {
            cVar = null;
        }
        return (e) cVar;
    }

    @Nullable
    public final kotlin.coroutines.c<Object> getCompletion() {
        return this.completion;
    }

    @Override // kotlin.coroutines.jvm.internal.e
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return f.c(this);
    }

    @Nullable
    protected abstract Object invokeSuspend(@NotNull Object obj);

    protected void releaseIntercepted() {
    }

    @Override // kotlin.coroutines.c
    public final void resumeWith(@NotNull Object obj) {
        Object invokeSuspend;
        Object a2;
        Object obj2 = obj;
        a aVar = this;
        while (true) {
            g.b(aVar);
            kotlin.coroutines.c<Object> cVar = aVar.completion;
            if (cVar != null) {
                try {
                    invokeSuspend = aVar.invokeSuspend(obj2);
                    a2 = kotlin.coroutines.h.d.a();
                } catch (Throwable th) {
                    Result.Companion companion = Result.INSTANCE;
                    obj2 = Result.m23constructorimpl(o.a(th));
                }
                if (invokeSuspend == a2) {
                    return;
                }
                Result.Companion companion2 = Result.INSTANCE;
                obj2 = Result.m23constructorimpl(invokeSuspend);
                aVar.releaseIntercepted();
                if (cVar instanceof a) {
                    aVar = (a) cVar;
                } else {
                    cVar.resumeWith(obj2);
                    return;
                }
            } else {
                kotlin.jvm.d.h.a();
                throw null;
            }
        }
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb.append(stackTraceElement);
        return sb.toString();
    }

    @NotNull
    public kotlin.coroutines.c<t> create(@Nullable Object obj, @NotNull kotlin.coroutines.c<?> cVar) {
        kotlin.jvm.d.h.b(cVar, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }
}

package kotlin.coroutines.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: ContinuationImpl.kt */
@SinceKotlin(version = "1.3")
/* loaded from: classes2.dex */
public abstract class d extends a {
    private final CoroutineContext _context;

    /* renamed from: e, reason: collision with root package name */
    private transient kotlin.coroutines.c<Object> f19925e;

    public d(@Nullable kotlin.coroutines.c<Object> cVar, @Nullable CoroutineContext coroutineContext) {
        super(cVar);
        this._context = coroutineContext;
    }

    @Override // kotlin.coroutines.c
    @NotNull
    public CoroutineContext getContext() {
        CoroutineContext coroutineContext = this._context;
        if (coroutineContext != null) {
            return coroutineContext;
        }
        kotlin.jvm.d.h.a();
        throw null;
    }

    @NotNull
    public final kotlin.coroutines.c<Object> intercepted() {
        kotlin.coroutines.c<Object> cVar = this.f19925e;
        if (cVar == null) {
            ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) getContext().get(ContinuationInterceptor.f19921b);
            if (continuationInterceptor == null || (cVar = continuationInterceptor.c(this)) == null) {
                cVar = this;
            }
            this.f19925e = cVar;
        }
        return cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    protected void releaseIntercepted() {
        kotlin.coroutines.c<?> cVar = this.f19925e;
        if (cVar != null && cVar != this) {
            CoroutineContext.b bVar = getContext().get(ContinuationInterceptor.f19921b);
            if (bVar == null) {
                kotlin.jvm.d.h.a();
                throw null;
            }
            ((ContinuationInterceptor) bVar).b(cVar);
        }
        this.f19925e = c.f19924e;
    }

    public d(@Nullable kotlin.coroutines.c<Object> cVar) {
        this(cVar, cVar != null ? cVar.getContext() : null);
    }
}

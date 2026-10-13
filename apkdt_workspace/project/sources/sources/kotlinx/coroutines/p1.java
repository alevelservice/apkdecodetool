package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;

/* compiled from: Builders.common.kt */
/* loaded from: classes2.dex */
final class p1<T> extends DeferredCoroutine<T> {

    /* renamed from: h, reason: collision with root package name */
    private kotlin.jvm.c.c<? super e0, ? super kotlin.coroutines.c<? super T>, ? extends Object> f20131h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p1(@NotNull CoroutineContext coroutineContext, @NotNull kotlin.jvm.c.c<? super e0, ? super kotlin.coroutines.c<? super T>, ? extends Object> cVar) {
        super(coroutineContext, false);
        kotlin.jvm.d.h.b(coroutineContext, "parentContext");
        kotlin.jvm.d.h.b(cVar, "block");
        this.f20131h = cVar;
    }

    @Override // kotlinx.coroutines.a
    protected void o() {
        kotlin.jvm.c.c<? super e0, ? super kotlin.coroutines.c<? super T>, ? extends Object> cVar = this.f20131h;
        if (cVar != null) {
            this.f20131h = null;
            kotlinx.coroutines.e2.a.a(cVar, this, this);
            return;
        }
        throw new IllegalStateException("Already started".toString());
    }
}

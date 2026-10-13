package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;

/* compiled from: Builders.common.kt */
/* loaded from: classes2.dex */
final class q1 extends y1 {

    /* renamed from: h, reason: collision with root package name */
    private kotlin.jvm.c.c<? super e0, ? super kotlin.coroutines.c<? super kotlin.t>, ? extends Object> f20133h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q1(@NotNull CoroutineContext coroutineContext, @NotNull kotlin.jvm.c.c<? super e0, ? super kotlin.coroutines.c<? super kotlin.t>, ? extends Object> cVar) {
        super(coroutineContext, false);
        kotlin.jvm.d.h.b(coroutineContext, "parentContext");
        kotlin.jvm.d.h.b(cVar, "block");
        this.f20133h = cVar;
    }

    @Override // kotlinx.coroutines.a
    protected void o() {
        kotlin.jvm.c.c<? super e0, ? super kotlin.coroutines.c<? super kotlin.t>, ? extends Object> cVar = this.f20133h;
        if (cVar != null) {
            this.f20133h = null;
            kotlinx.coroutines.e2.a.a(cVar, this, this);
            return;
        }
        throw new IllegalStateException("Already started".toString());
    }
}

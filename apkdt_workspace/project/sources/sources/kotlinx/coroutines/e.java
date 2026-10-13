package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.common.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class e {
    public static /* synthetic */ m0 a(e0 e0Var, CoroutineContext coroutineContext, h0 h0Var, kotlin.jvm.c.c cVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = kotlin.coroutines.g.INSTANCE;
        }
        if ((i2 & 2) != 0) {
            h0Var = h0.DEFAULT;
        }
        return d.a(e0Var, coroutineContext, h0Var, cVar);
    }

    public static /* synthetic */ Job b(e0 e0Var, CoroutineContext coroutineContext, h0 h0Var, kotlin.jvm.c.c cVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = kotlin.coroutines.g.INSTANCE;
        }
        if ((i2 & 2) != 0) {
            h0Var = h0.DEFAULT;
        }
        return d.b(e0Var, coroutineContext, h0Var, cVar);
    }

    @NotNull
    public static final <T> m0<T> a(@NotNull e0 e0Var, @NotNull CoroutineContext coroutineContext, @NotNull h0 h0Var, @NotNull kotlin.jvm.c.c<? super e0, ? super kotlin.coroutines.c<? super T>, ? extends Object> cVar) {
        DeferredCoroutine deferredCoroutine;
        kotlin.jvm.d.h.b(e0Var, "$this$async");
        kotlin.jvm.d.h.b(coroutineContext, "context");
        kotlin.jvm.d.h.b(h0Var, "start");
        kotlin.jvm.d.h.b(cVar, "block");
        CoroutineContext a2 = y.a(e0Var, coroutineContext);
        if (h0Var.isLazy()) {
            deferredCoroutine = new p1(a2, cVar);
        } else {
            deferredCoroutine = new DeferredCoroutine(a2, true);
        }
        ((a) deferredCoroutine).a(h0Var, (h0) deferredCoroutine, (kotlin.jvm.c.c<? super h0, ? super kotlin.coroutines.c<? super T>, ? extends Object>) cVar);
        return (m0<T>) deferredCoroutine;
    }

    @NotNull
    public static final Job b(@NotNull e0 e0Var, @NotNull CoroutineContext coroutineContext, @NotNull h0 h0Var, @NotNull kotlin.jvm.c.c<? super e0, ? super kotlin.coroutines.c<? super kotlin.t>, ? extends Object> cVar) {
        a y1Var;
        kotlin.jvm.d.h.b(e0Var, "$this$launch");
        kotlin.jvm.d.h.b(coroutineContext, "context");
        kotlin.jvm.d.h.b(h0Var, "start");
        kotlin.jvm.d.h.b(cVar, "block");
        CoroutineContext a2 = y.a(e0Var, coroutineContext);
        if (h0Var.isLazy()) {
            y1Var = new q1(a2, cVar);
        } else {
            y1Var = new y1(a2, true);
        }
        y1Var.a(h0Var, (h0) y1Var, (kotlin.jvm.c.c<? super h0, ? super kotlin.coroutines.c<? super T>, ? extends Object>) cVar);
        return y1Var;
    }
}

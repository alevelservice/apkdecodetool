package kotlinx.coroutines.e2;

import kotlin.Result;
import kotlin.coroutines.c;
import kotlin.jvm.d.h;
import kotlin.o;
import kotlin.t;
import kotlinx.coroutines.q0;
import org.jetbrains.annotations.NotNull;

/* compiled from: Cancellable.kt */
/* loaded from: classes2.dex */
public final class a {
    public static final <T> void a(@NotNull kotlin.jvm.c.b<? super c<? super T>, ? extends Object> bVar, @NotNull c<? super T> cVar) {
        h.b(bVar, "$this$startCoroutineCancellable");
        h.b(cVar, "completion");
        try {
            q0.a((c<? super t>) kotlin.coroutines.h.b.a(kotlin.coroutines.h.b.a(bVar, cVar)), t.f19946a);
        } catch (Throwable th) {
            Result.Companion companion = Result.INSTANCE;
            cVar.resumeWith(Result.m23constructorimpl(o.a(th)));
        }
    }

    public static final <R, T> void a(@NotNull kotlin.jvm.c.c<? super R, ? super c<? super T>, ? extends Object> cVar, R r, @NotNull c<? super T> cVar2) {
        h.b(cVar, "$this$startCoroutineCancellable");
        h.b(cVar2, "completion");
        try {
            q0.a((c<? super t>) kotlin.coroutines.h.b.a(kotlin.coroutines.h.b.a(cVar, r, cVar2)), t.f19946a);
        } catch (Throwable th) {
            Result.Companion companion = Result.INSTANCE;
            cVar2.resumeWith(Result.m23constructorimpl(o.a(th)));
        }
    }
}

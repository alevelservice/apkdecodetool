package kotlin.coroutines;

import kotlin.Result;
import kotlin.SinceKotlin;
import kotlin.jvm.d.h;
import kotlin.t;
import org.jetbrains.annotations.NotNull;

/* compiled from: Continuation.kt */
/* loaded from: classes2.dex */
public final class e {
    @SinceKotlin(version = "1.3")
    public static final <T> void a(@NotNull kotlin.jvm.c.b<? super c<? super T>, ? extends Object> bVar, @NotNull c<? super T> cVar) {
        h.b(bVar, "$this$startCoroutine");
        h.b(cVar, "completion");
        c a2 = kotlin.coroutines.h.b.a(kotlin.coroutines.h.b.a(bVar, cVar));
        t tVar = t.f19946a;
        Result.Companion companion = Result.INSTANCE;
        a2.resumeWith(Result.m23constructorimpl(tVar));
    }

    @SinceKotlin(version = "1.3")
    public static final <R, T> void a(@NotNull kotlin.jvm.c.c<? super R, ? super c<? super T>, ? extends Object> cVar, R r, @NotNull c<? super T> cVar2) {
        h.b(cVar, "$this$startCoroutine");
        h.b(cVar2, "completion");
        c a2 = kotlin.coroutines.h.b.a(kotlin.coroutines.h.b.a(cVar, r, cVar2));
        t tVar = t.f19946a;
        Result.Companion companion = Result.INSTANCE;
        a2.resumeWith(Result.m23constructorimpl(tVar));
    }
}

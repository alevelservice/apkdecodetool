package kotlinx.coroutines.e2;

import kotlin.Result;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.c;
import kotlin.coroutines.jvm.internal.g;
import kotlin.jvm.d.h;
import kotlin.jvm.d.p;
import kotlin.o;
import kotlinx.coroutines.internal.x;
import org.jetbrains.annotations.NotNull;

/* compiled from: Undispatched.kt */
/* loaded from: classes2.dex */
public final class b {
    public static final <T> void a(@NotNull kotlin.jvm.c.b<? super c<? super T>, ? extends Object> bVar, @NotNull c<? super T> cVar) {
        h.b(bVar, "$this$startCoroutineUndispatched");
        h.b(cVar, "completion");
        g.a(cVar);
        try {
            CoroutineContext context = cVar.getContext();
            Object b2 = x.b(context, null);
            try {
                p.a(bVar, 1);
                Object invoke = bVar.invoke(cVar);
                if (invoke != kotlin.coroutines.h.b.a()) {
                    Result.Companion companion = Result.INSTANCE;
                    cVar.resumeWith(Result.m23constructorimpl(invoke));
                }
            } finally {
                x.a(context, b2);
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            cVar.resumeWith(Result.m23constructorimpl(o.a(th)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <R, T> void a(@NotNull kotlin.jvm.c.c<? super R, ? super c<? super T>, ? extends Object> cVar, R r, @NotNull c<? super T> cVar2) {
        h.b(cVar, "$this$startCoroutineUndispatched");
        h.b(cVar2, "completion");
        g.a(cVar2);
        try {
            CoroutineContext context = cVar2.getContext();
            Object b2 = x.b(context, null);
            try {
                p.a(cVar, 2);
                Object invoke = cVar.invoke(r, cVar2);
                if (invoke != kotlin.coroutines.h.b.a()) {
                    Result.Companion companion = Result.INSTANCE;
                    cVar2.resumeWith(Result.m23constructorimpl(invoke));
                }
            } finally {
                x.a(context, b2);
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            cVar2.resumeWith(Result.m23constructorimpl(o.a(th)));
        }
    }
}

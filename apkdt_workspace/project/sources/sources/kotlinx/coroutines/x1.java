package kotlinx.coroutines;

import com.ap.zoloz.hummer.biz.HummerConstants;
import kotlin.Result;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;

/* compiled from: ResumeMode.kt */
/* loaded from: classes2.dex */
public final class x1 {
    public static final <T> void a(@NotNull kotlin.coroutines.c<? super T> cVar, T t, int i2) {
        kotlin.jvm.d.h.b(cVar, "$this$resumeMode");
        if (i2 == 0) {
            Result.Companion companion = Result.INSTANCE;
            cVar.resumeWith(Result.m23constructorimpl(t));
            return;
        }
        if (i2 == 1) {
            q0.a(cVar, t);
            return;
        }
        if (i2 == 2) {
            q0.b(cVar, t);
            return;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return;
            }
            throw new IllegalStateException(("Invalid mode " + i2).toString());
        }
        p0 p0Var = (p0) cVar;
        CoroutineContext context = p0Var.getContext();
        Object b2 = kotlinx.coroutines.internal.x.b(context, p0Var.f20128j);
        try {
            kotlin.coroutines.c<T> cVar2 = p0Var.f20130l;
            Result.Companion companion2 = Result.INSTANCE;
            cVar2.resumeWith(Result.m23constructorimpl(t));
            kotlin.t tVar = kotlin.t.f19946a;
        } finally {
            kotlinx.coroutines.internal.x.a(context, b2);
        }
    }

    public static final boolean a(int i2) {
        return i2 == 1;
    }

    public static final boolean b(int i2) {
        return i2 == 0 || i2 == 1;
    }

    public static final <T> void a(@NotNull kotlin.coroutines.c<? super T> cVar, @NotNull Throwable th, int i2) {
        kotlin.jvm.d.h.b(cVar, "$this$resumeWithExceptionMode");
        kotlin.jvm.d.h.b(th, HummerConstants.NORMAL_EXCEPTION);
        if (i2 == 0) {
            Result.Companion companion = Result.INSTANCE;
            cVar.resumeWith(Result.m23constructorimpl(kotlin.o.a(th)));
            return;
        }
        if (i2 == 1) {
            q0.a((kotlin.coroutines.c) cVar, th);
            return;
        }
        if (i2 == 2) {
            q0.b((kotlin.coroutines.c) cVar, th);
            return;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return;
            }
            throw new IllegalStateException(("Invalid mode " + i2).toString());
        }
        p0 p0Var = (p0) cVar;
        CoroutineContext context = p0Var.getContext();
        Object b2 = kotlinx.coroutines.internal.x.b(context, p0Var.f20128j);
        try {
            kotlin.coroutines.c<T> cVar2 = p0Var.f20130l;
            Result.Companion companion2 = Result.INSTANCE;
            cVar2.resumeWith(Result.m23constructorimpl(kotlin.o.a(kotlinx.coroutines.internal.s.a(th, (kotlin.coroutines.c<?>) cVar2))));
            kotlin.t tVar = kotlin.t.f19946a;
        } finally {
            kotlinx.coroutines.internal.x.a(context, b2);
        }
    }
}

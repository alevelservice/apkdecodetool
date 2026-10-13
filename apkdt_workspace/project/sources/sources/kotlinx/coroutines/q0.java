package kotlinx.coroutines;

import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;

/* compiled from: Dispatched.kt */
/* loaded from: classes2.dex */
public final class q0 {

    /* renamed from: a */
    private static final kotlinx.coroutines.internal.t f20132a = new kotlinx.coroutines.internal.t("UNDEFINED");

    public static final /* synthetic */ kotlinx.coroutines.internal.t a() {
        return f20132a;
    }

    public static final <T> void b(@NotNull kotlin.coroutines.c<? super T> cVar, T t) {
        kotlin.jvm.d.h.b(cVar, "$this$resumeDirect");
        if (!(cVar instanceof p0)) {
            Result.Companion companion = Result.INSTANCE;
            cVar.resumeWith(Result.m23constructorimpl(t));
        } else {
            kotlin.coroutines.c<T> cVar2 = ((p0) cVar).f20130l;
            Result.Companion companion2 = Result.INSTANCE;
            cVar2.resumeWith(Result.m23constructorimpl(t));
        }
    }

    private static final void a(@NotNull r0<?> r0Var) {
        w0 a2 = a2.f19985b.a();
        if (a2.p()) {
            a2.a(r0Var);
            return;
        }
        a2.b(true);
        try {
            a(r0Var, r0Var.b(), 3);
            do {
            } while (a2.r());
        } finally {
            try {
            } finally {
            }
        }
    }

    public static final <T> void b(@NotNull kotlin.coroutines.c<? super T> cVar, @NotNull Throwable th) {
        kotlin.jvm.d.h.b(cVar, "$this$resumeDirectWithException");
        kotlin.jvm.d.h.b(th, HummerConstants.NORMAL_EXCEPTION);
        if (cVar instanceof p0) {
            kotlin.coroutines.c<T> cVar2 = ((p0) cVar).f20130l;
            Result.Companion companion = Result.INSTANCE;
            cVar2.resumeWith(Result.m23constructorimpl(kotlin.o.a(kotlinx.coroutines.internal.s.a(th, (kotlin.coroutines.c<?>) cVar2))));
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            cVar.resumeWith(Result.m23constructorimpl(kotlin.o.a(kotlinx.coroutines.internal.s.a(th, cVar))));
        }
    }

    public static final <T> void a(@NotNull kotlin.coroutines.c<? super T> cVar, T t) {
        boolean z;
        kotlin.jvm.d.h.b(cVar, "$this$resumeCancellable");
        if (cVar instanceof p0) {
            p0 p0Var = (p0) cVar;
            if (p0Var.f20129k.b(p0Var.getContext())) {
                p0Var.f20126h = t;
                p0Var.f20136g = 1;
                p0Var.f20129k.mo32a(p0Var.getContext(), p0Var);
                return;
            }
            w0 a2 = a2.f19985b.a();
            if (a2.p()) {
                p0Var.f20126h = t;
                p0Var.f20136g = 1;
                a2.a(p0Var);
                return;
            }
            a2.b(true);
            try {
                Job job = (Job) p0Var.getContext().get(Job.f20051d);
                if (job == null || job.i()) {
                    z = false;
                } else {
                    CancellationException j2 = job.j();
                    Result.Companion companion = Result.INSTANCE;
                    p0Var.resumeWith(Result.m23constructorimpl(kotlin.o.a((Throwable) j2)));
                    z = true;
                }
                if (!z) {
                    CoroutineContext context = p0Var.getContext();
                    Object b2 = kotlinx.coroutines.internal.x.b(context, p0Var.f20128j);
                    try {
                        kotlin.coroutines.c<T> cVar2 = p0Var.f20130l;
                        Result.Companion companion2 = Result.INSTANCE;
                        cVar2.resumeWith(Result.m23constructorimpl(t));
                        kotlin.t tVar = kotlin.t.f19946a;
                        kotlinx.coroutines.internal.x.a(context, b2);
                    } catch (Throwable th) {
                        kotlinx.coroutines.internal.x.a(context, b2);
                        throw th;
                    }
                }
                do {
                } while (a2.r());
            } finally {
                try {
                    return;
                } finally {
                }
            }
            return;
        }
        Result.Companion companion3 = Result.INSTANCE;
        cVar.resumeWith(Result.m23constructorimpl(t));
    }

    public static final <T> void a(@NotNull kotlin.coroutines.c<? super T> cVar, @NotNull Throwable th) {
        kotlin.jvm.d.h.b(cVar, "$this$resumeCancellableWithException");
        kotlin.jvm.d.h.b(th, HummerConstants.NORMAL_EXCEPTION);
        if (cVar instanceof p0) {
            p0 p0Var = (p0) cVar;
            CoroutineContext context = p0Var.f20130l.getContext();
            boolean z = false;
            r rVar = new r(th, false, 2, null);
            if (p0Var.f20129k.b(context)) {
                p0Var.f20126h = new r(th, false, 2, null);
                p0Var.f20136g = 1;
                p0Var.f20129k.mo32a(context, p0Var);
                return;
            }
            w0 a2 = a2.f19985b.a();
            if (a2.p()) {
                p0Var.f20126h = rVar;
                p0Var.f20136g = 1;
                a2.a(p0Var);
                return;
            }
            a2.b(true);
            try {
                Job job = (Job) p0Var.getContext().get(Job.f20051d);
                if (job != null && !job.i()) {
                    CancellationException j2 = job.j();
                    Result.Companion companion = Result.INSTANCE;
                    p0Var.resumeWith(Result.m23constructorimpl(kotlin.o.a((Throwable) j2)));
                    z = true;
                }
                if (!z) {
                    CoroutineContext context2 = p0Var.getContext();
                    Object b2 = kotlinx.coroutines.internal.x.b(context2, p0Var.f20128j);
                    try {
                        kotlin.coroutines.c<T> cVar2 = p0Var.f20130l;
                        Result.Companion companion2 = Result.INSTANCE;
                        cVar2.resumeWith(Result.m23constructorimpl(kotlin.o.a(kotlinx.coroutines.internal.s.a(th, (kotlin.coroutines.c<?>) cVar2))));
                        kotlin.t tVar = kotlin.t.f19946a;
                        kotlinx.coroutines.internal.x.a(context2, b2);
                    } catch (Throwable th2) {
                        kotlinx.coroutines.internal.x.a(context2, b2);
                        throw th2;
                    }
                }
                do {
                } while (a2.r());
            } finally {
                try {
                    return;
                } finally {
                }
            }
            return;
        }
        Result.Companion companion3 = Result.INSTANCE;
        cVar.resumeWith(Result.m23constructorimpl(kotlin.o.a(kotlinx.coroutines.internal.s.a(th, cVar))));
    }

    public static final <T> void a(@NotNull r0<? super T> r0Var, int i2) {
        kotlin.jvm.d.h.b(r0Var, "$this$dispatch");
        kotlin.coroutines.c<? super T> b2 = r0Var.b();
        if (x1.b(i2) && (b2 instanceof p0) && x1.a(i2) == x1.a(r0Var.f20136g)) {
            z zVar = ((p0) b2).f20129k;
            CoroutineContext context = b2.getContext();
            if (zVar.b(context)) {
                zVar.mo32a(context, r0Var);
                return;
            } else {
                a(r0Var);
                return;
            }
        }
        a(r0Var, b2, i2);
    }

    public static final <T> void a(@NotNull r0<? super T> r0Var, @NotNull kotlin.coroutines.c<? super T> cVar, int i2) {
        kotlin.jvm.d.h.b(r0Var, "$this$resume");
        kotlin.jvm.d.h.b(cVar, "delegate");
        Object c2 = r0Var.c();
        Throwable a2 = r0Var.a(c2);
        if (a2 != null) {
            x1.a((kotlin.coroutines.c) cVar, a2, i2);
        } else {
            x1.a(cVar, r0Var.b(c2), i2);
        }
    }
}

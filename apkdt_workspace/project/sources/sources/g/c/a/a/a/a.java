package g.c.a.a.a;

import g.c.a.b.g;
import g.c.a.d.b;
import g.c.a.e.e;
import java.util.concurrent.Callable;

/* compiled from: RxAndroidPlugins.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static volatile e<Callable<g>, g> f18249a;

    /* renamed from: b, reason: collision with root package name */
    private static volatile e<g, g> f18250b;

    public static g a(g gVar) {
        if (gVar != null) {
            e<g, g> eVar = f18250b;
            return eVar == null ? gVar : (g) a((e<g, R>) eVar, gVar);
        }
        throw new NullPointerException("scheduler == null");
    }

    public static g b(Callable<g> callable) {
        if (callable != null) {
            e<Callable<g>, g> eVar = f18249a;
            if (eVar == null) {
                return a(callable);
            }
            return a(eVar, callable);
        }
        throw new NullPointerException("scheduler == null");
    }

    static g a(Callable<g> callable) {
        try {
            g call = callable.call();
            if (call != null) {
                return call;
            }
            throw new NullPointerException("Scheduler Callable returned null");
        } catch (Throwable th) {
            b.a(th);
            throw null;
        }
    }

    static g a(e<Callable<g>, g> eVar, Callable<g> callable) {
        g gVar = (g) a((e<Callable<g>, R>) eVar, callable);
        if (gVar != null) {
            return gVar;
        }
        throw new NullPointerException("Scheduler Callable returned null");
    }

    static <T, R> R a(e<T, R> eVar, T t) {
        try {
            return eVar.apply(t);
        } catch (Throwable th) {
            b.a(th);
            throw null;
        }
    }
}

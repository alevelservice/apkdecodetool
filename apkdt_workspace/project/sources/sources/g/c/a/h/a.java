package g.c.a.h;

import g.c.a.b.f;
import g.c.a.b.g;
import g.c.a.d.c;
import g.c.a.e.b;
import g.c.a.e.d;
import g.c.a.e.e;
import g.c.a.e.h;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import java.util.Objects;

/* compiled from: RxJavaPlugins.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    static volatile d<? super Throwable> f18354a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    static volatile e<? super Runnable, ? extends Runnable> f18355b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    static volatile e<? super h<g>, ? extends g> f18356c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    static volatile e<? super h<g>, ? extends g> f18357d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    static volatile e<? super h<g>, ? extends g> f18358e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    static volatile e<? super h<g>, ? extends g> f18359f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    static volatile e<? super g, ? extends g> f18360g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    static volatile e<? super g.c.a.b.d, ? extends g.c.a.b.d> f18361h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    static volatile b<? super g.c.a.b.d, ? super f, ? extends f> f18362i;

    static boolean a(Throwable th) {
        return (th instanceof g.c.a.d.d) || (th instanceof c) || (th instanceof IllegalStateException) || (th instanceof NullPointerException) || (th instanceof IllegalArgumentException) || (th instanceof g.c.a.d.a);
    }

    @NonNull
    public static g b(@NonNull h<g> hVar) {
        Objects.requireNonNull(hVar, "Scheduler Supplier can't be null");
        e<? super h<g>, ? extends g> eVar = f18356c;
        if (eVar == null) {
            return a(hVar);
        }
        return a(eVar, hVar);
    }

    @NonNull
    public static g c(@NonNull h<g> hVar) {
        Objects.requireNonNull(hVar, "Scheduler Supplier can't be null");
        e<? super h<g>, ? extends g> eVar = f18358e;
        if (eVar == null) {
            return a(hVar);
        }
        return a(eVar, hVar);
    }

    @NonNull
    public static g d(@NonNull h<g> hVar) {
        Objects.requireNonNull(hVar, "Scheduler Supplier can't be null");
        e<? super h<g>, ? extends g> eVar = f18359f;
        if (eVar == null) {
            return a(hVar);
        }
        return a(eVar, hVar);
    }

    @NonNull
    public static g e(@NonNull h<g> hVar) {
        Objects.requireNonNull(hVar, "Scheduler Supplier can't be null");
        e<? super h<g>, ? extends g> eVar = f18357d;
        if (eVar == null) {
            return a(hVar);
        }
        return a(eVar, hVar);
    }

    public static void b(@NonNull Throwable th) {
        d<? super Throwable> dVar = f18354a;
        if (th == null) {
            th = io.reactivex.rxjava3.internal.util.a.a("onError called with a null Throwable.");
        } else if (!a(th)) {
            th = new g.c.a.d.f(th);
        }
        if (dVar != null) {
            try {
                dVar.a(th);
                return;
            } catch (Throwable th2) {
                th2.printStackTrace();
                c(th2);
            }
        }
        th.printStackTrace();
        c(th);
    }

    static void c(@NonNull Throwable th) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
    }

    @NonNull
    public static g a(@NonNull g gVar) {
        e<? super g, ? extends g> eVar = f18360g;
        return eVar == null ? gVar : (g) a((e<g, R>) eVar, gVar);
    }

    @NonNull
    public static Runnable a(@NonNull Runnable runnable) {
        Objects.requireNonNull(runnable, "run is null");
        e<? super Runnable, ? extends Runnable> eVar = f18355b;
        return eVar == null ? runnable : (Runnable) a((e<Runnable, R>) eVar, runnable);
    }

    @NonNull
    public static <T> f<? super T> a(@NonNull g.c.a.b.d<T> dVar, @NonNull f<? super T> fVar) {
        b<? super g.c.a.b.d, ? super f, ? extends f> bVar = f18362i;
        return bVar != null ? (f) a(bVar, dVar, fVar) : fVar;
    }

    @NonNull
    public static <T> g.c.a.b.d<T> a(@NonNull g.c.a.b.d<T> dVar) {
        e<? super g.c.a.b.d, ? extends g.c.a.b.d> eVar = f18361h;
        return eVar != null ? (g.c.a.b.d) a((e<g.c.a.b.d<T>, R>) eVar, dVar) : dVar;
    }

    @NonNull
    static <T, R> R a(@NonNull e<T, R> eVar, @NonNull T t) {
        try {
            return eVar.apply(t);
        } catch (Throwable th) {
            throw io.reactivex.rxjava3.internal.util.a.a(th);
        }
    }

    @NonNull
    static <T, U, R> R a(@NonNull b<T, U, R> bVar, @NonNull T t, @NonNull U u) {
        try {
            return bVar.a(t, u);
        } catch (Throwable th) {
            throw io.reactivex.rxjava3.internal.util.a.a(th);
        }
    }

    @NonNull
    static g a(@NonNull h<g> hVar) {
        try {
            return (g) Objects.requireNonNull(hVar.get(), "Scheduler Supplier result can't be null");
        } catch (Throwable th) {
            throw io.reactivex.rxjava3.internal.util.a.a(th);
        }
    }

    @NonNull
    static g a(@NonNull e<? super h<g>, ? extends g> eVar, h<g> hVar) {
        return (g) Objects.requireNonNull(a((e<h<g>, R>) eVar, hVar), "Scheduler Supplier result can't be null");
    }
}

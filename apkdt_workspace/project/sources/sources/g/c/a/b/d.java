package g.c.a.b;

import io.reactivex.rxjava3.annotations.CheckReturnValue;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.SchedulerSupport;
import java.util.Objects;
import java.util.concurrent.Callable;

/* compiled from: Observable.java */
/* loaded from: classes2.dex */
public abstract class d<T> implements e<T> {
    @CheckReturnValue
    public static int a() {
        return b.a();
    }

    @CheckReturnValue
    @NonNull
    @SchedulerSupport(SchedulerSupport.CUSTOM)
    public final d<T> b(@NonNull g gVar) {
        Objects.requireNonNull(gVar, "scheduler is null");
        return g.c.a.h.a.a(new g.c.a.f.e.a.d(this, gVar));
    }

    protected abstract void b(@NonNull f<? super T> fVar);

    @CheckReturnValue
    @NonNull
    @SchedulerSupport(SchedulerSupport.NONE)
    public static <T> d<T> a(@NonNull Callable<? extends T> callable) {
        Objects.requireNonNull(callable, "callable is null");
        return g.c.a.h.a.a((d) new g.c.a.f.e.a.b(callable));
    }

    @CheckReturnValue
    @NonNull
    @SchedulerSupport(SchedulerSupport.CUSTOM)
    public final d<T> a(@NonNull g gVar) {
        return a(gVar, false, a());
    }

    @CheckReturnValue
    @NonNull
    @SchedulerSupport(SchedulerSupport.CUSTOM)
    public final d<T> a(@NonNull g gVar, boolean z, int i2) {
        Objects.requireNonNull(gVar, "scheduler is null");
        g.c.a.f.b.b.a(i2, "bufferSize");
        return g.c.a.h.a.a(new g.c.a.f.e.a.c(this, gVar, z, i2));
    }

    @CheckReturnValue
    @NonNull
    @SchedulerSupport(SchedulerSupport.NONE)
    public final g.c.a.c.c a(@NonNull g.c.a.e.d<? super T> dVar) {
        return a(dVar, g.c.a.f.b.a.f18276d, g.c.a.f.b.a.f18274b);
    }

    @CheckReturnValue
    @NonNull
    @SchedulerSupport(SchedulerSupport.NONE)
    public final g.c.a.c.c a(@NonNull g.c.a.e.d<? super T> dVar, @NonNull g.c.a.e.d<? super Throwable> dVar2, @NonNull g.c.a.e.a aVar) {
        Objects.requireNonNull(dVar, "onNext is null");
        Objects.requireNonNull(dVar2, "onError is null");
        Objects.requireNonNull(aVar, "onComplete is null");
        g.c.a.f.d.c cVar = new g.c.a.f.d.c(dVar, dVar2, aVar, g.c.a.f.b.a.a());
        a(cVar);
        return cVar;
    }

    @Override // g.c.a.b.e
    @SchedulerSupport(SchedulerSupport.NONE)
    public final void a(@NonNull f<? super T> fVar) {
        Objects.requireNonNull(fVar, "observer is null");
        try {
            f<? super T> a2 = g.c.a.h.a.a(this, fVar);
            Objects.requireNonNull(a2, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            b(a2);
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th) {
            g.c.a.d.b.b(th);
            g.c.a.h.a.b(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }
}

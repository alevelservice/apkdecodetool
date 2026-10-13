package g.c.a.f.e.a;

import g.c.a.b.f;
import g.c.a.e.h;
import java.util.concurrent.Callable;

/* compiled from: ObservableFromCallable.java */
/* loaded from: classes2.dex */
public final class b<T> extends g.c.a.b.d<T> implements h<T> {

    /* renamed from: a, reason: collision with root package name */
    final Callable<? extends T> f18278a;

    public b(Callable<? extends T> callable) {
        this.f18278a = callable;
    }

    @Override // g.c.a.b.d
    public void b(f<? super T> fVar) {
        g.c.a.f.d.b bVar = new g.c.a.f.d.b(fVar);
        fVar.onSubscribe(bVar);
        if (bVar.isDisposed()) {
            return;
        }
        try {
            T call = this.f18278a.call();
            io.reactivex.rxjava3.internal.util.a.a(call, "Callable returned a null value.");
            bVar.complete(call);
        } catch (Throwable th) {
            g.c.a.d.b.b(th);
            if (!bVar.isDisposed()) {
                fVar.onError(th);
            } else {
                g.c.a.h.a.b(th);
            }
        }
    }

    @Override // g.c.a.e.h
    public T get() {
        T call = this.f18278a.call();
        io.reactivex.rxjava3.internal.util.a.a(call, "The Callable returned a null value.");
        return call;
    }
}

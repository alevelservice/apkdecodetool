package g.c.a.f.d;

import g.c.a.b.f;
import g.c.a.e.d;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: LambdaObserver.java */
/* loaded from: classes2.dex */
public final class c<T> extends AtomicReference<g.c.a.c.c> implements f<T>, g.c.a.c.c, g.c.a.g.a {
    private static final long serialVersionUID = -7251123623727029452L;
    final g.c.a.e.a onComplete;
    final d<? super Throwable> onError;
    final d<? super T> onNext;
    final d<? super g.c.a.c.c> onSubscribe;

    public c(d<? super T> dVar, d<? super Throwable> dVar2, g.c.a.e.a aVar, d<? super g.c.a.c.c> dVar3) {
        this.onNext = dVar;
        this.onError = dVar2;
        this.onComplete = aVar;
        this.onSubscribe = dVar3;
    }

    @Override // g.c.a.c.c
    public void dispose() {
        g.c.a.f.a.a.dispose(this);
    }

    public boolean hasCustomOnError() {
        return this.onError != g.c.a.f.b.a.f18276d;
    }

    public boolean isDisposed() {
        return get() == g.c.a.f.a.a.DISPOSED;
    }

    @Override // g.c.a.b.f
    public void onComplete() {
        if (isDisposed()) {
            return;
        }
        lazySet(g.c.a.f.a.a.DISPOSED);
        try {
            this.onComplete.run();
        } catch (Throwable th) {
            g.c.a.d.b.b(th);
            g.c.a.h.a.b(th);
        }
    }

    @Override // g.c.a.b.f
    public void onError(Throwable th) {
        if (!isDisposed()) {
            lazySet(g.c.a.f.a.a.DISPOSED);
            try {
                this.onError.a(th);
                return;
            } catch (Throwable th2) {
                g.c.a.d.b.b(th2);
                g.c.a.h.a.b(new g.c.a.d.a(th, th2));
                return;
            }
        }
        g.c.a.h.a.b(th);
    }

    @Override // g.c.a.b.f
    public void onNext(T t) {
        if (isDisposed()) {
            return;
        }
        try {
            this.onNext.a(t);
        } catch (Throwable th) {
            g.c.a.d.b.b(th);
            get().dispose();
            onError(th);
        }
    }

    @Override // g.c.a.b.f
    public void onSubscribe(g.c.a.c.c cVar) {
        if (g.c.a.f.a.a.setOnce(this, cVar)) {
            try {
                this.onSubscribe.a(this);
            } catch (Throwable th) {
                g.c.a.d.b.b(th);
                cVar.dispose();
                onError(th);
            }
        }
    }
}

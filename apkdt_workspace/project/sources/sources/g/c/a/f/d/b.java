package g.c.a.f.d;

import g.c.a.b.f;
import io.reactivex.rxjava3.annotations.Nullable;

/* compiled from: DeferredScalarDisposable.java */
/* loaded from: classes2.dex */
public class b<T> extends a<T> {
    static final int DISPOSED = 4;
    static final int FUSED_CONSUMED = 32;
    static final int FUSED_EMPTY = 8;
    static final int FUSED_READY = 16;
    static final int TERMINATED = 2;
    private static final long serialVersionUID = -5502432239815349361L;
    protected final f<? super T> downstream;
    protected T value;

    public b(f<? super T> fVar) {
        this.downstream = fVar;
    }

    @Override // g.c.a.f.c.e
    public final void clear() {
        lazySet(32);
        this.value = null;
    }

    public final void complete(T t) {
        int i2 = get();
        if ((i2 & 54) != 0) {
            return;
        }
        f<? super T> fVar = this.downstream;
        if (i2 == 8) {
            this.value = t;
            lazySet(16);
            fVar.onNext(null);
        } else {
            lazySet(2);
            fVar.onNext(t);
        }
        if (get() != 4) {
            fVar.onComplete();
        }
    }

    @Override // g.c.a.c.c
    public void dispose() {
        set(4);
        this.value = null;
    }

    public final void error(Throwable th) {
        if ((get() & 54) != 0) {
            g.c.a.h.a.b(th);
        } else {
            lazySet(2);
            this.downstream.onError(th);
        }
    }

    public final boolean isDisposed() {
        return get() == 4;
    }

    @Override // g.c.a.f.c.e
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // g.c.a.f.c.e
    @Nullable
    public final T poll() {
        if (get() != 16) {
            return null;
        }
        T t = this.value;
        this.value = null;
        lazySet(32);
        return t;
    }

    @Override // g.c.a.f.c.c
    public final int requestFusion(int i2) {
        if ((i2 & 2) == 0) {
            return 0;
        }
        lazySet(8);
        return 2;
    }

    public final boolean tryDispose() {
        return getAndSet(4) != 4;
    }

    public final void complete() {
        if ((get() & 54) != 0) {
            return;
        }
        lazySet(2);
        this.downstream.onComplete();
    }
}

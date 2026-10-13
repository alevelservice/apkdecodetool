package g.c.a.f.a;

import g.c.a.b.f;
import g.c.a.b.h;
import io.reactivex.rxjava3.annotations.Nullable;

/* compiled from: EmptyDisposable.java */
/* loaded from: classes2.dex */
public enum b implements g.c.a.f.c.b<Object> {
    INSTANCE,
    NEVER;

    public static void complete(f<?> fVar) {
        fVar.onSubscribe(INSTANCE);
        fVar.onComplete();
    }

    public static void error(Throwable th, f<?> fVar) {
        fVar.onSubscribe(INSTANCE);
        fVar.onError(th);
    }

    @Override // g.c.a.f.c.e
    public void clear() {
    }

    @Override // g.c.a.c.c
    public void dispose() {
    }

    public boolean isDisposed() {
        return this == INSTANCE;
    }

    @Override // g.c.a.f.c.e
    public boolean isEmpty() {
        return true;
    }

    @Override // g.c.a.f.c.e
    public boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // g.c.a.f.c.e
    @Nullable
    public Object poll() {
        return null;
    }

    @Override // g.c.a.f.c.c
    public int requestFusion(int i2) {
        return i2 & 2;
    }

    public boolean offer(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public static void complete(g.c.a.b.c<?> cVar) {
        cVar.onSubscribe(INSTANCE);
        cVar.onComplete();
    }

    public static void error(Throwable th, g.c.a.b.a aVar) {
        aVar.onSubscribe(INSTANCE);
        aVar.onError(th);
    }

    public static void complete(g.c.a.b.a aVar) {
        aVar.onSubscribe(INSTANCE);
        aVar.onComplete();
    }

    public static void error(Throwable th, h<?> hVar) {
        hVar.onSubscribe(INSTANCE);
        hVar.onError(th);
    }

    public static void error(Throwable th, g.c.a.b.c<?> cVar) {
        cVar.onSubscribe(INSTANCE);
        cVar.onError(th);
    }
}

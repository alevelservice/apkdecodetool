package g.c.a.f.d;

import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: BasicIntQueueDisposable.java */
/* loaded from: classes2.dex */
public abstract class a<T> extends AtomicInteger implements g.c.a.f.c.b<T> {
    private static final long serialVersionUID = -1001730202384742097L;

    @Override // g.c.a.f.c.e
    public final boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called");
    }

    public final boolean offer(T t, T t2) {
        throw new UnsupportedOperationException("Should not be called");
    }
}

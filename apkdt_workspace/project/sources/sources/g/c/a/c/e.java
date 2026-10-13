package g.c.a.c;

import io.reactivex.rxjava3.annotations.NonNull;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ReferenceDisposable.java */
/* loaded from: classes2.dex */
abstract class e<T> extends AtomicReference<T> implements c {
    private static final long serialVersionUID = 6537757548749041217L;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(T t) {
        super(Objects.requireNonNull(t, "value is null"));
    }

    @Override // g.c.a.c.c
    public final void dispose() {
        T andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        onDisposed(andSet);
    }

    public final boolean isDisposed() {
        return get() == null;
    }

    protected abstract void onDisposed(@NonNull T t);
}

package g.c.a.c;

import io.reactivex.rxjava3.annotations.NonNull;

/* compiled from: RunnableDisposable.java */
/* loaded from: classes2.dex */
final class f extends e<Runnable> {
    private static final long serialVersionUID = -8219729196779211169L;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Runnable runnable) {
        super(runnable);
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public String toString() {
        return "RunnableDisposable(disposed=" + isDisposed() + ", " + get() + ")";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // g.c.a.c.e
    public void onDisposed(@NonNull Runnable runnable) {
        runnable.run();
    }
}

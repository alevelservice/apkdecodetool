package g.c.a.f.g;

import java.util.concurrent.Callable;

/* compiled from: ScheduledDirectTask.java */
/* loaded from: classes2.dex */
public final class h extends a implements Callable<Void> {
    private static final long serialVersionUID = 1811839108042568751L;

    public h(Runnable runnable) {
        super(runnable);
    }

    @Override // g.c.a.f.g.a
    public /* bridge */ /* synthetic */ Runnable getWrappedRunnable() {
        return super.getWrappedRunnable();
    }

    @Override // java.util.concurrent.Callable
    public Void call() {
        this.runner = Thread.currentThread();
        try {
            this.runnable.run();
            return null;
        } finally {
            lazySet(a.FINISHED);
            this.runner = null;
        }
    }
}

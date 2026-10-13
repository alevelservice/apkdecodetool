package e.i.b.a.i;

import java.util.concurrent.Executor;

/* compiled from: SafeLoggingExecutor.java */
/* loaded from: classes.dex */
class k implements Executor {

    /* renamed from: e, reason: collision with root package name */
    private final Executor f17698e;

    /* compiled from: SafeLoggingExecutor.java */
    /* loaded from: classes.dex */
    static class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        private final Runnable f17699e;

        a(Runnable runnable) {
            this.f17699e = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f17699e.run();
            } catch (Exception e2) {
                e.i.b.a.i.u.a.a("Executor", "Background execution failure.", (Throwable) e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Executor executor) {
        this.f17698e = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f17698e.execute(new a(runnable));
    }
}

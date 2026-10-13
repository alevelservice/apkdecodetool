package c;

import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: BoltsExecutors.java */
/* loaded from: classes.dex */
final class b {

    /* renamed from: c, reason: collision with root package name */
    private static final b f3110c = new b();

    /* renamed from: a, reason: collision with root package name */
    private final ExecutorService f3111a;

    /* renamed from: b, reason: collision with root package name */
    private final Executor f3112b;

    /* compiled from: BoltsExecutors.java */
    /* renamed from: c.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class ExecutorC0056b implements Executor {

        /* renamed from: e, reason: collision with root package name */
        private ThreadLocal<Integer> f3113e;

        private ExecutorC0056b() {
            this.f3113e = new ThreadLocal<>();
        }

        private int a() {
            Integer num = this.f3113e.get();
            if (num == null) {
                num = 0;
            }
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                this.f3113e.remove();
            } else {
                this.f3113e.set(Integer.valueOf(intValue));
            }
            return intValue;
        }

        private int b() {
            Integer num = this.f3113e.get();
            if (num == null) {
                num = 0;
            }
            int intValue = num.intValue() + 1;
            this.f3113e.set(Integer.valueOf(intValue));
            return intValue;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            try {
                if (b() <= 15) {
                    runnable.run();
                } else {
                    b.a().execute(runnable);
                }
            } finally {
                a();
            }
        }
    }

    private b() {
        this.f3111a = !c() ? Executors.newCachedThreadPool() : c.a.a();
        Executors.newSingleThreadScheduledExecutor();
        this.f3112b = new ExecutorC0056b();
    }

    public static ExecutorService a() {
        return f3110c.f3111a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor b() {
        return f3110c.f3112b;
    }

    private static boolean c() {
        String property = System.getProperty("java.runtime.name");
        if (property == null) {
            return false;
        }
        return property.toLowerCase(Locale.US).contains("android");
    }
}

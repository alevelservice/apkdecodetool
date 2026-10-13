package g.c.a.b;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import java.util.concurrent.TimeUnit;

/* compiled from: Scheduler.java */
/* loaded from: classes2.dex */
public abstract class g {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Scheduler.java */
    /* loaded from: classes2.dex */
    public static final class a implements g.c.a.c.c, Runnable, g.c.a.i.a {

        /* renamed from: e, reason: collision with root package name */
        @NonNull
        final Runnable f18262e;

        /* renamed from: f, reason: collision with root package name */
        @NonNull
        final b f18263f;

        /* renamed from: g, reason: collision with root package name */
        @Nullable
        Thread f18264g;

        a(@NonNull Runnable runnable, @NonNull b bVar) {
            this.f18262e = runnable;
            this.f18263f = bVar;
        }

        @Override // g.c.a.c.c
        public void dispose() {
            if (this.f18264g == Thread.currentThread()) {
                b bVar = this.f18263f;
                if (bVar instanceof g.c.a.f.g.e) {
                    ((g.c.a.f.g.e) bVar).a();
                    return;
                }
            }
            this.f18263f.dispose();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f18264g = Thread.currentThread();
            try {
                this.f18262e.run();
            } finally {
                dispose();
                this.f18264g = null;
            }
        }
    }

    /* compiled from: Scheduler.java */
    /* loaded from: classes2.dex */
    public static abstract class b implements g.c.a.c.c {
        @NonNull
        public g.c.a.c.c a(@NonNull Runnable runnable) {
            return a(runnable, 0L, TimeUnit.NANOSECONDS);
        }

        @NonNull
        public abstract g.c.a.c.c a(@NonNull Runnable runnable, long j2, @NonNull TimeUnit timeUnit);

        public long a(@NonNull TimeUnit timeUnit) {
            return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }
    }

    static {
        TimeUnit.MINUTES.toNanos(Long.getLong("rx3.scheduler.drift-tolerance", 15L).longValue());
    }

    @NonNull
    public abstract b a();

    @NonNull
    public g.c.a.c.c a(@NonNull Runnable runnable) {
        return a(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    @NonNull
    public g.c.a.c.c a(@NonNull Runnable runnable, long j2, @NonNull TimeUnit timeUnit) {
        b a2 = a();
        a aVar = new a(g.c.a.h.a.a(runnable), a2);
        a2.a(aVar, j2, timeUnit);
        return aVar;
    }
}

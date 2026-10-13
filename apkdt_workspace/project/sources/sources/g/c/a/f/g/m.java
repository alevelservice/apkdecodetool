package g.c.a.f.g;

import g.c.a.b.g;
import io.reactivex.rxjava3.annotations.NonNull;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: TrampolineScheduler.java */
/* loaded from: classes2.dex */
public final class m extends g.c.a.b.g {

    /* renamed from: a, reason: collision with root package name */
    private static final m f18340a = new m();

    /* compiled from: TrampolineScheduler.java */
    /* loaded from: classes2.dex */
    static final class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        private final Runnable f18341e;

        /* renamed from: f, reason: collision with root package name */
        private final c f18342f;

        /* renamed from: g, reason: collision with root package name */
        private final long f18343g;

        a(Runnable runnable, c cVar, long j2) {
            this.f18341e = runnable;
            this.f18342f = cVar;
            this.f18343g = j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f18342f.f18351h) {
                return;
            }
            long a2 = this.f18342f.a(TimeUnit.MILLISECONDS);
            long j2 = this.f18343g;
            if (j2 > a2) {
                try {
                    Thread.sleep(j2 - a2);
                } catch (InterruptedException e2) {
                    Thread.currentThread().interrupt();
                    g.c.a.h.a.b(e2);
                    return;
                }
            }
            if (this.f18342f.f18351h) {
                return;
            }
            this.f18341e.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TrampolineScheduler.java */
    /* loaded from: classes2.dex */
    public static final class b implements Comparable<b> {

        /* renamed from: e, reason: collision with root package name */
        final Runnable f18344e;

        /* renamed from: f, reason: collision with root package name */
        final long f18345f;

        /* renamed from: g, reason: collision with root package name */
        final int f18346g;

        /* renamed from: h, reason: collision with root package name */
        volatile boolean f18347h;

        b(Runnable runnable, Long l2, int i2) {
            this.f18344e = runnable;
            this.f18345f = l2.longValue();
            this.f18346g = i2;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            int compare = Long.compare(this.f18345f, bVar.f18345f);
            return compare == 0 ? Integer.compare(this.f18346g, bVar.f18346g) : compare;
        }
    }

    /* compiled from: TrampolineScheduler.java */
    /* loaded from: classes2.dex */
    static final class c extends g.b implements g.c.a.c.c {

        /* renamed from: e, reason: collision with root package name */
        final PriorityBlockingQueue<b> f18348e = new PriorityBlockingQueue<>();

        /* renamed from: f, reason: collision with root package name */
        private final AtomicInteger f18349f = new AtomicInteger();

        /* renamed from: g, reason: collision with root package name */
        final AtomicInteger f18350g = new AtomicInteger();

        /* renamed from: h, reason: collision with root package name */
        volatile boolean f18351h;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: TrampolineScheduler.java */
        /* loaded from: classes2.dex */
        public final class a implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final b f18352e;

            a(b bVar) {
                this.f18352e = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                b bVar = this.f18352e;
                bVar.f18347h = true;
                c.this.f18348e.remove(bVar);
            }
        }

        c() {
        }

        @Override // g.c.a.b.g.b
        @NonNull
        public g.c.a.c.c a(@NonNull Runnable runnable) {
            return a(runnable, a(TimeUnit.MILLISECONDS));
        }

        @Override // g.c.a.c.c
        public void dispose() {
            this.f18351h = true;
        }

        @Override // g.c.a.b.g.b
        @NonNull
        public g.c.a.c.c a(@NonNull Runnable runnable, long j2, @NonNull TimeUnit timeUnit) {
            long a2 = a(TimeUnit.MILLISECONDS) + timeUnit.toMillis(j2);
            return a(new a(runnable, this, a2), a2);
        }

        g.c.a.c.c a(Runnable runnable, long j2) {
            if (this.f18351h) {
                return g.c.a.f.a.b.INSTANCE;
            }
            b bVar = new b(runnable, Long.valueOf(j2), this.f18350g.incrementAndGet());
            this.f18348e.add(bVar);
            if (this.f18349f.getAndIncrement() == 0) {
                int i2 = 1;
                while (!this.f18351h) {
                    b poll = this.f18348e.poll();
                    if (poll == null) {
                        i2 = this.f18349f.addAndGet(-i2);
                        if (i2 == 0) {
                            return g.c.a.f.a.b.INSTANCE;
                        }
                    } else if (!poll.f18347h) {
                        poll.f18344e.run();
                    }
                }
                this.f18348e.clear();
                return g.c.a.f.a.b.INSTANCE;
            }
            return g.c.a.c.b.a(new a(bVar));
        }
    }

    m() {
    }

    public static m b() {
        return f18340a;
    }

    @Override // g.c.a.b.g
    @NonNull
    public g.b a() {
        return new c();
    }

    @Override // g.c.a.b.g
    @NonNull
    public g.c.a.c.c a(@NonNull Runnable runnable) {
        g.c.a.h.a.a(runnable).run();
        return g.c.a.f.a.b.INSTANCE;
    }

    @Override // g.c.a.b.g
    @NonNull
    public g.c.a.c.c a(@NonNull Runnable runnable, long j2, TimeUnit timeUnit) {
        try {
            timeUnit.sleep(j2);
            g.c.a.h.a.a(runnable).run();
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            g.c.a.h.a.b(e2);
        }
        return g.c.a.f.a.b.INSTANCE;
    }
}

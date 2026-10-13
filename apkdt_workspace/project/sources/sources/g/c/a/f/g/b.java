package g.c.a.f.g;

import g.c.a.b.g;
import io.reactivex.rxjava3.annotations.NonNull;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ComputationScheduler.java */
/* loaded from: classes2.dex */
public final class b extends g.c.a.b.g implements j {

    /* renamed from: c, reason: collision with root package name */
    static final C0217b f18293c;

    /* renamed from: d, reason: collision with root package name */
    static final g f18294d;

    /* renamed from: e, reason: collision with root package name */
    static final int f18295e = a(Runtime.getRuntime().availableProcessors(), Integer.getInteger("rx3.computation-threads", 0).intValue());

    /* renamed from: f, reason: collision with root package name */
    static final c f18296f = new c(new g("RxComputationShutdown"));

    /* renamed from: a, reason: collision with root package name */
    final ThreadFactory f18297a;

    /* renamed from: b, reason: collision with root package name */
    final AtomicReference<C0217b> f18298b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ComputationScheduler.java */
    /* renamed from: g.c.a.f.g.b$b, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0217b implements j {

        /* renamed from: a, reason: collision with root package name */
        final int f18304a;

        /* renamed from: b, reason: collision with root package name */
        final c[] f18305b;

        /* renamed from: c, reason: collision with root package name */
        long f18306c;

        C0217b(int i2, ThreadFactory threadFactory) {
            this.f18304a = i2;
            this.f18305b = new c[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                this.f18305b[i3] = new c(threadFactory);
            }
        }

        public c a() {
            int i2 = this.f18304a;
            if (i2 == 0) {
                return b.f18296f;
            }
            c[] cVarArr = this.f18305b;
            long j2 = this.f18306c;
            this.f18306c = 1 + j2;
            return cVarArr[(int) (j2 % i2)];
        }

        public void b() {
            for (c cVar : this.f18305b) {
                cVar.dispose();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ComputationScheduler.java */
    /* loaded from: classes2.dex */
    public static final class c extends e {
        c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        f18296f.dispose();
        f18294d = new g("RxComputationThreadPool", Math.max(1, Math.min(10, Integer.getInteger("rx3.computation-priority", 5).intValue())), true);
        f18293c = new C0217b(0, f18294d);
        f18293c.b();
    }

    public b() {
        this(f18294d);
    }

    static int a(int i2, int i3) {
        return (i3 <= 0 || i3 > i2) ? i2 : i3;
    }

    @Override // g.c.a.b.g
    @NonNull
    public g.b a() {
        return new a(this.f18298b.get().a());
    }

    public void b() {
        C0217b c0217b = new C0217b(f18295e, this.f18297a);
        if (this.f18298b.compareAndSet(f18293c, c0217b)) {
            return;
        }
        c0217b.b();
    }

    public b(ThreadFactory threadFactory) {
        this.f18297a = threadFactory;
        this.f18298b = new AtomicReference<>(f18293c);
        b();
    }

    @Override // g.c.a.b.g
    @NonNull
    public g.c.a.c.c a(@NonNull Runnable runnable, long j2, TimeUnit timeUnit) {
        return this.f18298b.get().a().b(runnable, j2, timeUnit);
    }

    /* compiled from: ComputationScheduler.java */
    /* loaded from: classes2.dex */
    static final class a extends g.b {

        /* renamed from: e, reason: collision with root package name */
        private final g.c.a.f.a.c f18299e = new g.c.a.f.a.c();

        /* renamed from: f, reason: collision with root package name */
        private final g.c.a.c.a f18300f = new g.c.a.c.a();

        /* renamed from: g, reason: collision with root package name */
        private final g.c.a.f.a.c f18301g = new g.c.a.f.a.c();

        /* renamed from: h, reason: collision with root package name */
        private final c f18302h;

        /* renamed from: i, reason: collision with root package name */
        volatile boolean f18303i;

        a(c cVar) {
            this.f18302h = cVar;
            this.f18301g.b(this.f18299e);
            this.f18301g.b(this.f18300f);
        }

        @Override // g.c.a.b.g.b
        @NonNull
        public g.c.a.c.c a(@NonNull Runnable runnable) {
            if (this.f18303i) {
                return g.c.a.f.a.b.INSTANCE;
            }
            return this.f18302h.a(runnable, 0L, TimeUnit.MILLISECONDS, this.f18299e);
        }

        @Override // g.c.a.c.c
        public void dispose() {
            if (this.f18303i) {
                return;
            }
            this.f18303i = true;
            this.f18301g.dispose();
        }

        @Override // g.c.a.b.g.b
        @NonNull
        public g.c.a.c.c a(@NonNull Runnable runnable, long j2, @NonNull TimeUnit timeUnit) {
            if (this.f18303i) {
                return g.c.a.f.a.b.INSTANCE;
            }
            return this.f18302h.a(runnable, j2, timeUnit, this.f18300f);
        }
    }
}

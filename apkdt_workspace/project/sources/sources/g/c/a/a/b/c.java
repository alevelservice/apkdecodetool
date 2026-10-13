package g.c.a.a.b;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import g.c.a.b.g;
import java.util.concurrent.TimeUnit;

/* compiled from: HandlerScheduler.java */
/* loaded from: classes2.dex */
final class c extends g {

    /* renamed from: a, reason: collision with root package name */
    private final Handler f18254a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f18255b;

    /* compiled from: HandlerScheduler.java */
    /* loaded from: classes2.dex */
    private static final class a extends g.b {

        /* renamed from: e, reason: collision with root package name */
        private final Handler f18256e;

        /* renamed from: f, reason: collision with root package name */
        private final boolean f18257f;

        /* renamed from: g, reason: collision with root package name */
        private volatile boolean f18258g;

        a(Handler handler, boolean z) {
            this.f18256e = handler;
            this.f18257f = z;
        }

        @Override // g.c.a.b.g.b
        @SuppressLint({"NewApi"})
        public g.c.a.c.c a(Runnable runnable, long j2, TimeUnit timeUnit) {
            if (runnable == null) {
                throw new NullPointerException("run == null");
            }
            if (timeUnit != null) {
                if (this.f18258g) {
                    return g.c.a.c.b.a();
                }
                b bVar = new b(this.f18256e, g.c.a.h.a.a(runnable));
                Message obtain = Message.obtain(this.f18256e, bVar);
                obtain.obj = this;
                if (this.f18257f) {
                    obtain.setAsynchronous(true);
                }
                this.f18256e.sendMessageDelayed(obtain, timeUnit.toMillis(j2));
                if (!this.f18258g) {
                    return bVar;
                }
                this.f18256e.removeCallbacks(bVar);
                return g.c.a.c.b.a();
            }
            throw new NullPointerException("unit == null");
        }

        @Override // g.c.a.c.c
        public void dispose() {
            this.f18258g = true;
            this.f18256e.removeCallbacksAndMessages(this);
        }
    }

    /* compiled from: HandlerScheduler.java */
    /* loaded from: classes2.dex */
    private static final class b implements Runnable, g.c.a.c.c {

        /* renamed from: e, reason: collision with root package name */
        private final Handler f18259e;

        /* renamed from: f, reason: collision with root package name */
        private final Runnable f18260f;

        b(Handler handler, Runnable runnable) {
            this.f18259e = handler;
            this.f18260f = runnable;
        }

        @Override // g.c.a.c.c
        public void dispose() {
            this.f18259e.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f18260f.run();
            } catch (Throwable th) {
                g.c.a.h.a.b(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Handler handler, boolean z) {
        this.f18254a = handler;
        this.f18255b = z;
    }

    @Override // g.c.a.b.g
    @SuppressLint({"NewApi"})
    public g.c.a.c.c a(Runnable runnable, long j2, TimeUnit timeUnit) {
        if (runnable == null) {
            throw new NullPointerException("run == null");
        }
        if (timeUnit != null) {
            b bVar = new b(this.f18254a, g.c.a.h.a.a(runnable));
            Message obtain = Message.obtain(this.f18254a, bVar);
            if (this.f18255b) {
                obtain.setAsynchronous(true);
            }
            this.f18254a.sendMessageDelayed(obtain, timeUnit.toMillis(j2));
            return bVar;
        }
        throw new NullPointerException("unit == null");
    }

    @Override // g.c.a.b.g
    public g.b a() {
        return new a(this.f18254a, this.f18255b);
    }
}

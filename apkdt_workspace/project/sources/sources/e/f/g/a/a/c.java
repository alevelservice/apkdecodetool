package e.f.g.a.a;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import e.f.g.a.a.a;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* compiled from: AnimationBackendDelegateWithInactivityCheck.java */
/* loaded from: classes.dex */
public class c<T extends e.f.g.a.a.a> extends e.f.g.a.a.b<T> {

    /* renamed from: b, reason: collision with root package name */
    private final com.facebook.common.time.b f17418b;

    /* renamed from: c, reason: collision with root package name */
    private final ScheduledExecutorService f17419c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f17420d;

    /* renamed from: e, reason: collision with root package name */
    private long f17421e;

    /* renamed from: f, reason: collision with root package name */
    private long f17422f;

    /* renamed from: g, reason: collision with root package name */
    private long f17423g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private b f17424h;

    /* renamed from: i, reason: collision with root package name */
    private final Runnable f17425i;

    /* compiled from: AnimationBackendDelegateWithInactivityCheck.java */
    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (c.this) {
                c.this.f17420d = false;
                if (c.this.e()) {
                    if (c.this.f17424h != null) {
                        c.this.f17424h.e();
                    }
                } else {
                    c.this.f();
                }
            }
        }
    }

    /* compiled from: AnimationBackendDelegateWithInactivityCheck.java */
    /* loaded from: classes.dex */
    public interface b {
        void e();
    }

    private c(@Nullable T t, @Nullable b bVar, com.facebook.common.time.b bVar2, ScheduledExecutorService scheduledExecutorService) {
        super(t);
        this.f17420d = false;
        this.f17422f = 2000L;
        this.f17423g = 1000L;
        this.f17425i = new a();
        this.f17424h = bVar;
        this.f17418b = bVar2;
        this.f17419c = scheduledExecutorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        return this.f17418b.now() - this.f17421e > this.f17422f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void f() {
        if (!this.f17420d) {
            this.f17420d = true;
            this.f17419c.schedule(this.f17425i, this.f17423g, TimeUnit.MILLISECONDS);
        }
    }

    public static <T extends e.f.g.a.a.a & b> e.f.g.a.a.b<T> a(T t, com.facebook.common.time.b bVar, ScheduledExecutorService scheduledExecutorService) {
        return a(t, (b) t, bVar, scheduledExecutorService);
    }

    public static <T extends e.f.g.a.a.a> e.f.g.a.a.b<T> a(T t, b bVar, com.facebook.common.time.b bVar2, ScheduledExecutorService scheduledExecutorService) {
        return new c(t, bVar, bVar2, scheduledExecutorService);
    }

    @Override // e.f.g.a.a.b, e.f.g.a.a.a
    public boolean a(Drawable drawable, Canvas canvas, int i2) {
        this.f17421e = this.f17418b.now();
        boolean a2 = super.a(drawable, canvas, i2);
        f();
        return a2;
    }
}

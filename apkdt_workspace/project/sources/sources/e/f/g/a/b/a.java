package e.f.g.a.b;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import e.f.f.f.e;
import javax.annotation.Nullable;

/* compiled from: AnimatedDrawable2.java */
/* loaded from: classes.dex */
public class a extends Drawable implements Animatable, e.f.e.a.a {
    private static final Class<?> s = a.class;
    private static final e.f.g.a.b.b t = new c();

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private e.f.g.a.a.a f17427e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private e.f.g.a.c.b f17428f;

    /* renamed from: g, reason: collision with root package name */
    private volatile boolean f17429g;

    /* renamed from: h, reason: collision with root package name */
    private long f17430h;

    /* renamed from: i, reason: collision with root package name */
    private long f17431i;

    /* renamed from: j, reason: collision with root package name */
    private long f17432j;

    /* renamed from: k, reason: collision with root package name */
    private int f17433k;

    /* renamed from: l, reason: collision with root package name */
    private long f17434l;
    private long m;
    private int n;
    private volatile e.f.g.a.b.b o;

    @Nullable
    private volatile b p;

    @Nullable
    private e q;
    private final Runnable r;

    /* compiled from: AnimatedDrawable2.java */
    /* renamed from: e.f.g.a.b.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class RunnableC0192a implements Runnable {
        RunnableC0192a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            aVar.unscheduleSelf(aVar.r);
            a.this.invalidateSelf();
        }
    }

    /* compiled from: AnimatedDrawable2.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(a aVar, e.f.g.a.c.b bVar, int i2, boolean z, boolean z2, long j2, long j3, long j4, long j5, long j6, long j7, long j8);
    }

    public a() {
        this(null);
    }

    private long b() {
        return SystemClock.uptimeMillis();
    }

    private void c() {
        this.n++;
        if (e.f.c.d.a.a(2)) {
            e.f.c.d.a.b(s, "Dropped a frame. Count: %s", Integer.valueOf(this.n));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        long j2;
        long j3;
        a aVar;
        long j4;
        if (this.f17427e == null || this.f17428f == null) {
            return;
        }
        long b2 = b();
        long max = this.f17429g ? (b2 - this.f17430h) + this.m : Math.max(this.f17431i, 0L);
        int a2 = this.f17428f.a(max, this.f17431i);
        if (a2 == -1) {
            a2 = this.f17427e.a() - 1;
            this.o.c(this);
            this.f17429g = false;
        } else if (a2 == 0 && this.f17433k != -1 && b2 >= this.f17432j) {
            this.o.a(this);
        }
        int i2 = a2;
        boolean a3 = this.f17427e.a(this, canvas, i2);
        if (a3) {
            this.o.a(this, i2);
            this.f17433k = i2;
        }
        if (!a3) {
            c();
        }
        long b3 = b();
        if (this.f17429g) {
            long a4 = this.f17428f.a(b3 - this.f17430h);
            if (a4 != -1) {
                long j5 = this.f17434l + a4;
                a(j5);
                j3 = j5;
            } else {
                j3 = -1;
            }
            j2 = a4;
        } else {
            j2 = -1;
            j3 = -1;
        }
        b bVar = this.p;
        if (bVar != null) {
            bVar.a(this, this.f17428f, i2, a3, this.f17429g, this.f17430h, max, this.f17431i, b2, b3, j2, j3);
            aVar = this;
            j4 = max;
        } else {
            aVar = this;
            j4 = max;
        }
        aVar.f17431i = j4;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        e.f.g.a.a.a aVar = this.f17427e;
        if (aVar == null) {
            return super.getIntrinsicHeight();
        }
        return aVar.c();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        e.f.g.a.a.a aVar = this.f17427e;
        if (aVar == null) {
            return super.getIntrinsicWidth();
        }
        return aVar.d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f17429g;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        e.f.g.a.a.a aVar = this.f17427e;
        if (aVar != null) {
            aVar.a(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        if (this.f17429g) {
            return false;
        }
        long j2 = i2;
        if (this.f17431i == j2) {
            return false;
        }
        this.f17431i = j2;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (this.q == null) {
            this.q = new e();
        }
        this.q.a(i2);
        e.f.g.a.a.a aVar = this.f17427e;
        if (aVar != null) {
            aVar.b(i2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.q == null) {
            this.q = new e();
        }
        this.q.a(colorFilter);
        e.f.g.a.a.a aVar = this.f17427e;
        if (aVar != null) {
            aVar.a(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        e.f.g.a.a.a aVar;
        if (this.f17429g || (aVar = this.f17427e) == null || aVar.a() <= 1) {
            return;
        }
        this.f17429g = true;
        this.f17430h = b();
        this.f17432j = this.f17430h;
        this.f17431i = -1L;
        this.f17433k = -1;
        invalidateSelf();
        this.o.b(this);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.f17429g) {
            this.f17429g = false;
            this.f17430h = 0L;
            this.f17432j = this.f17430h;
            this.f17431i = -1L;
            this.f17433k = -1;
            unscheduleSelf(this.r);
            this.o.c(this);
        }
    }

    public a(@Nullable e.f.g.a.a.a aVar) {
        this.f17434l = 8L;
        this.m = 0L;
        this.o = t;
        this.p = null;
        this.r = new RunnableC0192a();
        this.f17427e = aVar;
        this.f17428f = a(this.f17427e);
    }

    private void a(long j2) {
        this.f17432j = this.f17430h + j2;
        scheduleSelf(this.r, this.f17432j);
    }

    @Nullable
    private static e.f.g.a.c.b a(@Nullable e.f.g.a.a.a aVar) {
        if (aVar == null) {
            return null;
        }
        return new e.f.g.a.c.a(aVar);
    }

    @Override // e.f.e.a.a
    public void a() {
        e.f.g.a.a.a aVar = this.f17427e;
        if (aVar != null) {
            aVar.clear();
        }
    }
}

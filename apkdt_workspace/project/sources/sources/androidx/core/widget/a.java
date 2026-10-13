package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;

/* compiled from: AutoScrollHelper.java */
/* loaded from: classes.dex */
public abstract class a implements View.OnTouchListener {
    private static final int v = ViewConfiguration.getTapTimeout();

    /* renamed from: g, reason: collision with root package name */
    final View f2017g;

    /* renamed from: h, reason: collision with root package name */
    private Runnable f2018h;

    /* renamed from: k, reason: collision with root package name */
    private int f2021k;

    /* renamed from: l, reason: collision with root package name */
    private int f2022l;
    private boolean p;
    boolean q;
    boolean r;
    boolean s;
    private boolean t;
    private boolean u;

    /* renamed from: e, reason: collision with root package name */
    final C0039a f2015e = new C0039a();

    /* renamed from: f, reason: collision with root package name */
    private final Interpolator f2016f = new AccelerateInterpolator();

    /* renamed from: i, reason: collision with root package name */
    private float[] f2019i = {0.0f, 0.0f};

    /* renamed from: j, reason: collision with root package name */
    private float[] f2020j = {Float.MAX_VALUE, Float.MAX_VALUE};
    private float[] m = {0.0f, 0.0f};
    private float[] n = {0.0f, 0.0f};
    private float[] o = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AutoScrollHelper.java */
    /* renamed from: androidx.core.widget.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0039a {

        /* renamed from: a, reason: collision with root package name */
        private int f2023a;

        /* renamed from: b, reason: collision with root package name */
        private int f2024b;

        /* renamed from: c, reason: collision with root package name */
        private float f2025c;

        /* renamed from: d, reason: collision with root package name */
        private float f2026d;

        /* renamed from: j, reason: collision with root package name */
        private float f2032j;

        /* renamed from: k, reason: collision with root package name */
        private int f2033k;

        /* renamed from: e, reason: collision with root package name */
        private long f2027e = Long.MIN_VALUE;

        /* renamed from: i, reason: collision with root package name */
        private long f2031i = -1;

        /* renamed from: f, reason: collision with root package name */
        private long f2028f = 0;

        /* renamed from: g, reason: collision with root package name */
        private int f2029g = 0;

        /* renamed from: h, reason: collision with root package name */
        private int f2030h = 0;

        C0039a() {
        }

        private float a(float f2) {
            return ((-4.0f) * f2 * f2) + (f2 * 4.0f);
        }

        public void a(int i2) {
            this.f2024b = i2;
        }

        public void b(int i2) {
            this.f2023a = i2;
        }

        public int c() {
            return this.f2030h;
        }

        public int d() {
            float f2 = this.f2025c;
            return (int) (f2 / Math.abs(f2));
        }

        public int e() {
            float f2 = this.f2026d;
            return (int) (f2 / Math.abs(f2));
        }

        public boolean f() {
            return this.f2031i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f2031i + ((long) this.f2033k);
        }

        public void g() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f2033k = a.a((int) (currentAnimationTimeMillis - this.f2027e), 0, this.f2024b);
            this.f2032j = a(currentAnimationTimeMillis);
            this.f2031i = currentAnimationTimeMillis;
        }

        public void h() {
            this.f2027e = AnimationUtils.currentAnimationTimeMillis();
            this.f2031i = -1L;
            this.f2028f = this.f2027e;
            this.f2032j = 0.5f;
            this.f2029g = 0;
            this.f2030h = 0;
        }

        private float a(long j2) {
            if (j2 < this.f2027e) {
                return 0.0f;
            }
            long j3 = this.f2031i;
            if (j3 >= 0 && j2 >= j3) {
                long j4 = j2 - j3;
                float f2 = this.f2032j;
                return (1.0f - f2) + (f2 * a.a(((float) j4) / this.f2033k, 0.0f, 1.0f));
            }
            return a.a(((float) (j2 - this.f2027e)) / this.f2023a, 0.0f, 1.0f) * 0.5f;
        }

        public int b() {
            return this.f2029g;
        }

        public void a() {
            if (this.f2028f != 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float a2 = a(a(currentAnimationTimeMillis));
                long j2 = currentAnimationTimeMillis - this.f2028f;
                this.f2028f = currentAnimationTimeMillis;
                float f2 = ((float) j2) * a2;
                this.f2029g = (int) (this.f2025c * f2);
                this.f2030h = (int) (f2 * this.f2026d);
                return;
            }
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }

        public void a(float f2, float f3) {
            this.f2025c = f2;
            this.f2026d = f3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AutoScrollHelper.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            if (aVar.s) {
                if (aVar.q) {
                    aVar.q = false;
                    aVar.f2015e.h();
                }
                C0039a c0039a = a.this.f2015e;
                if (!c0039a.f() && a.this.b()) {
                    a aVar2 = a.this;
                    if (aVar2.r) {
                        aVar2.r = false;
                        aVar2.a();
                    }
                    c0039a.a();
                    a.this.a(c0039a.b(), c0039a.c());
                    ViewCompat.a(a.this.f2017g, this);
                    return;
                }
                a.this.s = false;
            }
        }
    }

    public a(@NonNull View view) {
        this.f2017g = view;
        float f2 = Resources.getSystem().getDisplayMetrics().density;
        float f3 = (int) ((1575.0f * f2) + 0.5f);
        b(f3, f3);
        float f4 = (int) ((f2 * 315.0f) + 0.5f);
        c(f4, f4);
        d(1);
        a(Float.MAX_VALUE, Float.MAX_VALUE);
        d(0.2f, 0.2f);
        e(1.0f, 1.0f);
        c(v);
        f(500);
        e(500);
    }

    static float a(float f2, float f3, float f4) {
        return f2 > f4 ? f4 : f2 < f3 ? f3 : f2;
    }

    static int a(int i2, int i3, int i4) {
        return i2 > i4 ? i4 : i2 < i3 ? i3 : i2;
    }

    public a a(boolean z) {
        if (this.t && !z) {
            c();
        }
        this.t = z;
        return this;
    }

    public abstract void a(int i2, int i3);

    public abstract boolean a(int i2);

    @NonNull
    public a b(float f2, float f3) {
        float[] fArr = this.o;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    public abstract boolean b(int i2);

    @NonNull
    public a c(float f2, float f3) {
        float[] fArr = this.n;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    @NonNull
    public a d(int i2) {
        this.f2021k = i2;
        return this;
    }

    @NonNull
    public a e(float f2, float f3) {
        float[] fArr = this.m;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    @NonNull
    public a f(int i2) {
        this.f2015e.b(i2);
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0013, code lost:
    
        if (r0 != 3) goto L20;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            boolean r0 = r5.t
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r7.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L1e
            r6 = 3
            if (r0 == r6) goto L16
            goto L58
        L16:
            r5.c()
            goto L58
        L1a:
            r5.r = r2
            r5.p = r1
        L1e:
            float r0 = r7.getX()
            int r3 = r6.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r5.f2017g
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r5.a(r1, r0, r3, r4)
            float r7 = r7.getY()
            int r6 = r6.getHeight()
            float r6 = (float) r6
            android.view.View r3 = r5.f2017g
            int r3 = r3.getHeight()
            float r3 = (float) r3
            float r6 = r5.a(r2, r7, r6, r3)
            androidx.core.widget.a$a r7 = r5.f2015e
            r7.a(r0, r6)
            boolean r6 = r5.s
            if (r6 != 0) goto L58
            boolean r6 = r5.b()
            if (r6 == 0) goto L58
            r5.d()
        L58:
            boolean r6 = r5.u
            if (r6 == 0) goto L61
            boolean r6 = r5.s
            if (r6 == 0) goto L61
            r1 = 1
        L61:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.a.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    private float f(float f2, float f3) {
        if (f3 == 0.0f) {
            return 0.0f;
        }
        int i2 = this.f2021k;
        if (i2 == 0 || i2 == 1) {
            if (f2 < f3) {
                if (f2 >= 0.0f) {
                    return 1.0f - (f2 / f3);
                }
                if (this.s && this.f2021k == 1) {
                    return 1.0f;
                }
            }
        } else if (i2 == 2 && f2 < 0.0f) {
            return f2 / (-f3);
        }
        return 0.0f;
    }

    @NonNull
    public a d(float f2, float f3) {
        float[] fArr = this.f2019i;
        fArr[0] = f2;
        fArr[1] = f3;
        return this;
    }

    boolean b() {
        C0039a c0039a = this.f2015e;
        int e2 = c0039a.e();
        int d2 = c0039a.d();
        return (e2 != 0 && b(e2)) || (d2 != 0 && a(d2));
    }

    @NonNull
    public a c(int i2) {
        this.f2022l = i2;
        return this;
    }

    @NonNull
    public a e(int i2) {
        this.f2015e.a(i2);
        return this;
    }

    private void c() {
        if (this.q) {
            this.s = false;
        } else {
            this.f2015e.g();
        }
    }

    private void d() {
        int i2;
        if (this.f2018h == null) {
            this.f2018h = new b();
        }
        this.s = true;
        this.q = true;
        if (!this.p && (i2 = this.f2022l) > 0) {
            ViewCompat.a(this.f2017g, this.f2018h, i2);
        } else {
            this.f2018h.run();
        }
        this.p = true;
    }

    @NonNull
    public a a(float f2, float f3) {
        float[] fArr = this.f2020j;
        fArr[0] = f2;
        fArr[1] = f3;
        return this;
    }

    private float a(int i2, float f2, float f3, float f4) {
        float a2 = a(this.f2019i[i2], f3, this.f2020j[i2], f2);
        if (a2 == 0.0f) {
            return 0.0f;
        }
        float f5 = this.m[i2];
        float f6 = this.n[i2];
        float f7 = this.o[i2];
        float f8 = f5 * f4;
        if (a2 > 0.0f) {
            return a(a2 * f8, f6, f7);
        }
        return -a((-a2) * f8, f6, f7);
    }

    private float a(float f2, float f3, float f4, float f5) {
        float interpolation;
        float a2 = a(f2 * f3, 0.0f, f4);
        float f6 = f(f3 - f5, a2) - f(f5, a2);
        if (f6 < 0.0f) {
            interpolation = -this.f2016f.getInterpolation(-f6);
        } else {
            if (f6 <= 0.0f) {
                return 0.0f;
            }
            interpolation = this.f2016f.getInterpolation(f6);
        }
        return a(interpolation, -1.0f, 1.0f);
    }

    void a() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f2017g.onTouchEvent(obtain);
        obtain.recycle();
    }
}

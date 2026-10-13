package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FastScroller.java */
@VisibleForTesting
/* loaded from: classes.dex */
public class d extends RecyclerView.l implements RecyclerView.p {
    private static final int[] D = {R.attr.state_pressed};
    private static final int[] E = new int[0];

    /* renamed from: a, reason: collision with root package name */
    private final int f2750a;

    /* renamed from: b, reason: collision with root package name */
    private final int f2751b;

    /* renamed from: c, reason: collision with root package name */
    final StateListDrawable f2752c;

    /* renamed from: d, reason: collision with root package name */
    final Drawable f2753d;

    /* renamed from: e, reason: collision with root package name */
    private final int f2754e;

    /* renamed from: f, reason: collision with root package name */
    private final int f2755f;

    /* renamed from: g, reason: collision with root package name */
    private final StateListDrawable f2756g;

    /* renamed from: h, reason: collision with root package name */
    private final Drawable f2757h;

    /* renamed from: i, reason: collision with root package name */
    private final int f2758i;

    /* renamed from: j, reason: collision with root package name */
    private final int f2759j;

    /* renamed from: k, reason: collision with root package name */
    @VisibleForTesting
    int f2760k;

    /* renamed from: l, reason: collision with root package name */
    @VisibleForTesting
    int f2761l;

    @VisibleForTesting
    float m;

    @VisibleForTesting
    int n;

    @VisibleForTesting
    int o;

    @VisibleForTesting
    float p;
    private RecyclerView s;
    private int q = 0;
    private int r = 0;
    private boolean t = false;
    private boolean u = false;
    private int v = 0;
    private int w = 0;
    private final int[] x = new int[2];
    private final int[] y = new int[2];
    final ValueAnimator z = ValueAnimator.ofFloat(0.0f, 1.0f);
    int A = 0;
    private final Runnable B = new a();
    private final RecyclerView.q C = new b();

    /* compiled from: FastScroller.java */
    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.a(500);
        }
    }

    /* compiled from: FastScroller.java */
    /* loaded from: classes.dex */
    class b extends RecyclerView.q {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.q
        public void a(RecyclerView recyclerView, int i2, int i3) {
            d.this.a(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    }

    /* compiled from: FastScroller.java */
    /* loaded from: classes.dex */
    private class c extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        private boolean f2764e = false;

        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f2764e = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f2764e) {
                this.f2764e = false;
                return;
            }
            if (((Float) d.this.z.getAnimatedValue()).floatValue() == 0.0f) {
                d dVar = d.this;
                dVar.A = 0;
                dVar.b(0);
            } else {
                d dVar2 = d.this;
                dVar2.A = 2;
                dVar2.a();
            }
        }
    }

    /* compiled from: FastScroller.java */
    /* renamed from: androidx.recyclerview.widget.d$d, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private class C0049d implements ValueAnimator.AnimatorUpdateListener {
        C0049d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            d.this.f2752c.setAlpha(floatValue);
            d.this.f2753d.setAlpha(floatValue);
            d.this.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i2, int i3, int i4) {
        this.f2752c = stateListDrawable;
        this.f2753d = drawable;
        this.f2756g = stateListDrawable2;
        this.f2757h = drawable2;
        this.f2754e = Math.max(i2, stateListDrawable.getIntrinsicWidth());
        this.f2755f = Math.max(i2, drawable.getIntrinsicWidth());
        this.f2758i = Math.max(i2, stateListDrawable2.getIntrinsicWidth());
        this.f2759j = Math.max(i2, drawable2.getIntrinsicWidth());
        this.f2750a = i3;
        this.f2751b = i4;
        this.f2752c.setAlpha(255);
        this.f2753d.setAlpha(255);
        this.z.addListener(new c());
        this.z.addUpdateListener(new C0049d());
        a(recyclerView);
    }

    private void c() {
        this.s.removeCallbacks(this.B);
    }

    private void d() {
        this.s.removeItemDecoration(this);
        this.s.removeOnItemTouchListener(this);
        this.s.removeOnScrollListener(this.C);
        c();
    }

    private int[] e() {
        int[] iArr = this.y;
        int i2 = this.f2751b;
        iArr[0] = i2;
        iArr[1] = this.q - i2;
        return iArr;
    }

    private int[] f() {
        int[] iArr = this.x;
        int i2 = this.f2751b;
        iArr[0] = i2;
        iArr[1] = this.r - i2;
        return iArr;
    }

    private boolean g() {
        return ViewCompat.n(this.s) == 1;
    }

    private void h() {
        this.s.addItemDecoration(this);
        this.s.addOnItemTouchListener(this);
        this.s.addOnScrollListener(this.C);
    }

    public void a(@Nullable RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            d();
        }
        this.s = recyclerView;
        if (this.s != null) {
            h();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void a(boolean z) {
    }

    void b(int i2) {
        if (i2 == 2 && this.v != 2) {
            this.f2752c.setState(D);
            c();
        }
        if (i2 == 0) {
            a();
        } else {
            b();
        }
        if (this.v == 2 && i2 != 2) {
            this.f2752c.setState(E);
            c(1200);
        } else if (i2 == 1) {
            c(1500);
        }
        this.v = i2;
    }

    private void c(int i2) {
        c();
        this.s.postDelayed(this.B, i2);
    }

    void a() {
        this.s.invalidate();
    }

    @VisibleForTesting
    void a(int i2) {
        int i3 = this.A;
        if (i3 == 1) {
            this.z.cancel();
        } else if (i3 != 2) {
            return;
        }
        this.A = 3;
        ValueAnimator valueAnimator = this.z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
        this.z.setDuration(i2);
        this.z.start();
    }

    public void b() {
        int i2 = this.A;
        if (i2 != 0) {
            if (i2 != 3) {
                return;
            } else {
                this.z.cancel();
            }
        }
        this.A = 1;
        ValueAnimator valueAnimator = this.z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.z.setDuration(500L);
        this.z.setStartDelay(0L);
        this.z.start();
    }

    private void a(Canvas canvas) {
        int i2 = this.r;
        int i3 = this.f2758i;
        int i4 = this.o;
        int i5 = this.n;
        this.f2756g.setBounds(0, 0, i5, i3);
        this.f2757h.setBounds(0, 0, this.q, this.f2759j);
        canvas.translate(0.0f, i2 - i3);
        this.f2757h.draw(canvas);
        canvas.translate(i4 - (i5 / 2), 0.0f);
        this.f2756g.draw(canvas);
        canvas.translate(-r2, -r0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void b(Canvas canvas, RecyclerView recyclerView, RecyclerView.w wVar) {
        if (this.q == this.s.getWidth() && this.r == this.s.getHeight()) {
            if (this.A != 0) {
                if (this.t) {
                    b(canvas);
                }
                if (this.u) {
                    a(canvas);
                    return;
                }
                return;
            }
            return;
        }
        this.q = this.s.getWidth();
        this.r = this.s.getHeight();
        b(0);
    }

    void a(int i2, int i3) {
        int computeVerticalScrollRange = this.s.computeVerticalScrollRange();
        int i4 = this.r;
        this.t = computeVerticalScrollRange - i4 > 0 && i4 >= this.f2750a;
        int computeHorizontalScrollRange = this.s.computeHorizontalScrollRange();
        int i5 = this.q;
        this.u = computeHorizontalScrollRange - i5 > 0 && i5 >= this.f2750a;
        if (!this.t && !this.u) {
            if (this.v != 0) {
                b(0);
                return;
            }
            return;
        }
        if (this.t) {
            float f2 = i4;
            this.f2761l = (int) ((f2 * (i3 + (f2 / 2.0f))) / computeVerticalScrollRange);
            this.f2760k = Math.min(i4, (i4 * i4) / computeVerticalScrollRange);
        }
        if (this.u) {
            float f3 = i5;
            this.o = (int) ((f3 * (i2 + (f3 / 2.0f))) / computeHorizontalScrollRange);
            this.n = Math.min(i5, (i5 * i5) / computeHorizontalScrollRange);
        }
        int i6 = this.v;
        if (i6 == 0 || i6 == 1) {
            b(1);
        }
    }

    private void b(Canvas canvas) {
        int i2 = this.q;
        int i3 = this.f2754e;
        int i4 = i2 - i3;
        int i5 = this.f2761l;
        int i6 = this.f2760k;
        int i7 = i5 - (i6 / 2);
        this.f2752c.setBounds(0, 0, i3, i6);
        this.f2753d.setBounds(0, 0, this.f2755f, this.r);
        if (g()) {
            this.f2753d.draw(canvas);
            canvas.translate(this.f2754e, i7);
            canvas.scale(-1.0f, 1.0f);
            this.f2752c.draw(canvas);
            canvas.scale(1.0f, 1.0f);
            canvas.translate(-this.f2754e, -i7);
            return;
        }
        canvas.translate(i4, 0.0f);
        this.f2753d.draw(canvas);
        canvas.translate(0.0f, i7);
        this.f2752c.draw(canvas);
        canvas.translate(-i4, -i7);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void a(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        if (this.v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean b2 = b(motionEvent.getX(), motionEvent.getY());
            boolean a2 = a(motionEvent.getX(), motionEvent.getY());
            if (b2 || a2) {
                if (a2) {
                    this.w = 1;
                    this.p = (int) motionEvent.getX();
                } else if (b2) {
                    this.w = 2;
                    this.m = (int) motionEvent.getY();
                }
                b(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.v == 2) {
            this.m = 0.0f;
            this.p = 0.0f;
            b(1);
            this.w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.v == 2) {
            b();
            if (this.w == 1) {
                a(motionEvent.getX());
            }
            if (this.w == 2) {
                b(motionEvent.getY());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean b(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        int i2 = this.v;
        if (i2 == 1) {
            boolean b2 = b(motionEvent.getX(), motionEvent.getY());
            boolean a2 = a(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!b2 && !a2) {
                return false;
            }
            if (a2) {
                this.w = 1;
                this.p = (int) motionEvent.getX();
            } else if (b2) {
                this.w = 2;
                this.m = (int) motionEvent.getY();
            }
            b(2);
        } else if (i2 != 2) {
            return false;
        }
        return true;
    }

    private void b(float f2) {
        int[] f3 = f();
        float max = Math.max(f3[0], Math.min(f3[1], f2));
        if (Math.abs(this.f2761l - max) < 2.0f) {
            return;
        }
        int a2 = a(this.m, max, f3, this.s.computeVerticalScrollRange(), this.s.computeVerticalScrollOffset(), this.r);
        if (a2 != 0) {
            this.s.scrollBy(0, a2);
        }
        this.m = max;
    }

    private void a(float f2) {
        int[] e2 = e();
        float max = Math.max(e2[0], Math.min(e2[1], f2));
        if (Math.abs(this.o - max) < 2.0f) {
            return;
        }
        int a2 = a(this.p, max, e2, this.s.computeHorizontalScrollRange(), this.s.computeHorizontalScrollOffset(), this.q);
        if (a2 != 0) {
            this.s.scrollBy(a2, 0);
        }
        this.p = max;
    }

    @VisibleForTesting
    boolean b(float f2, float f3) {
        if (!g() ? f2 >= this.q - this.f2754e : f2 <= this.f2754e / 2) {
            int i2 = this.f2761l;
            int i3 = this.f2760k;
            if (f3 >= i2 - (i3 / 2) && f3 <= i2 + (i3 / 2)) {
                return true;
            }
        }
        return false;
    }

    private int a(float f2, float f3, int[] iArr, int i2, int i3, int i4) {
        int i5 = iArr[1] - iArr[0];
        if (i5 == 0) {
            return 0;
        }
        int i6 = i2 - i4;
        int i7 = (int) (((f3 - f2) / i5) * i6);
        int i8 = i3 + i7;
        if (i8 >= i6 || i8 < 0) {
            return 0;
        }
        return i7;
    }

    @VisibleForTesting
    boolean a(float f2, float f3) {
        if (f3 >= this.r - this.f2758i) {
            int i2 = this.o;
            int i3 = this.n;
            if (f2 >= i2 - (i3 / 2) && f2 <= i2 + (i3 / 2)) {
                return true;
            }
        }
        return false;
    }
}

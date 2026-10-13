package androidx.swiperefreshlayout.widget;

import a.i.m.i;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class CircularProgressDrawable extends Drawable implements Animatable {

    /* renamed from: k, reason: collision with root package name */
    private static final Interpolator f2836k = new LinearInterpolator();

    /* renamed from: l, reason: collision with root package name */
    private static final Interpolator f2837l = new a.l.a.a.b();
    private static final int[] m = {-16777216};

    /* renamed from: e, reason: collision with root package name */
    private final c f2838e;

    /* renamed from: f, reason: collision with root package name */
    private float f2839f;

    /* renamed from: g, reason: collision with root package name */
    private Resources f2840g;

    /* renamed from: h, reason: collision with root package name */
    private Animator f2841h;

    /* renamed from: i, reason: collision with root package name */
    float f2842i;

    /* renamed from: j, reason: collision with root package name */
    boolean f2843j;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface ProgressDrawableSize {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ c f2844e;

        a(c cVar) {
            this.f2844e = cVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            CircularProgressDrawable.this.a(floatValue, this.f2844e);
            CircularProgressDrawable.this.a(floatValue, this.f2844e, false);
            CircularProgressDrawable.this.invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Animator.AnimatorListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ c f2846e;

        b(c cVar) {
            this.f2846e = cVar;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            CircularProgressDrawable.this.a(1.0f, this.f2846e, true);
            this.f2846e.l();
            this.f2846e.j();
            CircularProgressDrawable circularProgressDrawable = CircularProgressDrawable.this;
            if (circularProgressDrawable.f2843j) {
                circularProgressDrawable.f2843j = false;
                animator.cancel();
                animator.setDuration(1332L);
                animator.start();
                this.f2846e.a(false);
                return;
            }
            circularProgressDrawable.f2842i += 1.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            CircularProgressDrawable.this.f2842i = 0.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: i, reason: collision with root package name */
        int[] f2856i;

        /* renamed from: j, reason: collision with root package name */
        int f2857j;

        /* renamed from: k, reason: collision with root package name */
        float f2858k;

        /* renamed from: l, reason: collision with root package name */
        float f2859l;
        float m;
        boolean n;
        Path o;
        float q;
        int r;
        int s;
        int u;

        /* renamed from: a, reason: collision with root package name */
        final RectF f2848a = new RectF();

        /* renamed from: b, reason: collision with root package name */
        final Paint f2849b = new Paint();

        /* renamed from: c, reason: collision with root package name */
        final Paint f2850c = new Paint();

        /* renamed from: d, reason: collision with root package name */
        final Paint f2851d = new Paint();

        /* renamed from: e, reason: collision with root package name */
        float f2852e = 0.0f;

        /* renamed from: f, reason: collision with root package name */
        float f2853f = 0.0f;

        /* renamed from: g, reason: collision with root package name */
        float f2854g = 0.0f;

        /* renamed from: h, reason: collision with root package name */
        float f2855h = 5.0f;
        float p = 1.0f;
        int t = 255;

        c() {
            this.f2849b.setStrokeCap(Paint.Cap.SQUARE);
            this.f2849b.setAntiAlias(true);
            this.f2849b.setStyle(Paint.Style.STROKE);
            this.f2850c.setStyle(Paint.Style.FILL);
            this.f2850c.setAntiAlias(true);
            this.f2851d.setColor(0);
        }

        void a(float f2, float f3) {
            this.r = (int) f2;
            this.s = (int) f3;
        }

        void b(int i2) {
            this.u = i2;
        }

        void c(int i2) {
            this.f2857j = i2;
            this.u = this.f2856i[this.f2857j];
        }

        int d() {
            return (this.f2857j + 1) % this.f2856i.length;
        }

        void e(float f2) {
            this.f2852e = f2;
        }

        void f(float f2) {
            this.f2855h = f2;
            this.f2849b.setStrokeWidth(f2);
        }

        float g() {
            return this.f2859l;
        }

        float h() {
            return this.m;
        }

        float i() {
            return this.f2858k;
        }

        void j() {
            c(d());
        }

        void k() {
            this.f2858k = 0.0f;
            this.f2859l = 0.0f;
            this.m = 0.0f;
            e(0.0f);
            c(0.0f);
            d(0.0f);
        }

        void l() {
            this.f2858k = this.f2852e;
            this.f2859l = this.f2853f;
            this.m = this.f2854g;
        }

        float b() {
            return this.f2853f;
        }

        void d(float f2) {
            this.f2854g = f2;
        }

        float e() {
            return this.f2852e;
        }

        void a(Canvas canvas, Rect rect) {
            RectF rectF = this.f2848a;
            float f2 = this.q;
            float f3 = (this.f2855h / 2.0f) + f2;
            if (f2 <= 0.0f) {
                f3 = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.r * this.p) / 2.0f, this.f2855h / 2.0f);
            }
            rectF.set(rect.centerX() - f3, rect.centerY() - f3, rect.centerX() + f3, rect.centerY() + f3);
            float f4 = this.f2852e;
            float f5 = this.f2854g;
            float f6 = (f4 + f5) * 360.0f;
            float f7 = ((this.f2853f + f5) * 360.0f) - f6;
            this.f2849b.setColor(this.u);
            this.f2849b.setAlpha(this.t);
            float f8 = this.f2855h / 2.0f;
            rectF.inset(f8, f8);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f2851d);
            float f9 = -f8;
            rectF.inset(f9, f9);
            canvas.drawArc(rectF, f6, f7, false, this.f2849b);
            a(canvas, f6, f7, rectF);
        }

        void b(float f2) {
            this.q = f2;
        }

        int c() {
            return this.f2856i[d()];
        }

        int f() {
            return this.f2856i[this.f2857j];
        }

        void c(float f2) {
            this.f2853f = f2;
        }

        void a(Canvas canvas, float f2, float f3, RectF rectF) {
            if (this.n) {
                Path path = this.o;
                if (path == null) {
                    this.o = new Path();
                    this.o.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float min = Math.min(rectF.width(), rectF.height()) / 2.0f;
                float f4 = (this.r * this.p) / 2.0f;
                this.o.moveTo(0.0f, 0.0f);
                this.o.lineTo(this.r * this.p, 0.0f);
                Path path2 = this.o;
                float f5 = this.r;
                float f6 = this.p;
                path2.lineTo((f5 * f6) / 2.0f, this.s * f6);
                this.o.offset((min + rectF.centerX()) - f4, rectF.centerY() + (this.f2855h / 2.0f));
                this.o.close();
                this.f2850c.setColor(this.u);
                this.f2850c.setAlpha(this.t);
                canvas.save();
                canvas.rotate(f2 + f3, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.o, this.f2850c);
                canvas.restore();
            }
        }

        void a(@NonNull int[] iArr) {
            this.f2856i = iArr;
            c(0);
        }

        void a(ColorFilter colorFilter) {
            this.f2849b.setColorFilter(colorFilter);
        }

        void a(int i2) {
            this.t = i2;
        }

        int a() {
            return this.t;
        }

        void a(boolean z) {
            if (this.n != z) {
                this.n = z;
            }
        }

        void a(float f2) {
            if (f2 != this.p) {
                this.p = f2;
            }
        }
    }

    public CircularProgressDrawable(@NonNull Context context) {
        i.a(context);
        this.f2840g = context.getResources();
        this.f2838e = new c();
        this.f2838e.a(m);
        c(2.5f);
        a();
    }

    private int a(float f2, int i2, int i3) {
        return ((((i2 >> 24) & 255) + ((int) ((((i3 >> 24) & 255) - r0) * f2))) << 24) | ((((i2 >> 16) & 255) + ((int) ((((i3 >> 16) & 255) - r1) * f2))) << 16) | ((((i2 >> 8) & 255) + ((int) ((((i3 >> 8) & 255) - r2) * f2))) << 8) | ((i2 & 255) + ((int) (f2 * ((i3 & 255) - r8))));
    }

    private void a(float f2, float f3, float f4, float f5) {
        c cVar = this.f2838e;
        float f6 = this.f2840g.getDisplayMetrics().density;
        cVar.f(f3 * f6);
        cVar.b(f2 * f6);
        cVar.c(0);
        cVar.a(f4 * f6, f5 * f6);
    }

    private void d(float f2) {
        this.f2839f = f2;
    }

    public void b(float f2) {
        this.f2838e.d(f2);
        invalidateSelf();
    }

    public void c(float f2) {
        this.f2838e.f(f2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f2839f, bounds.exactCenterX(), bounds.exactCenterY());
        this.f2838e.a(canvas, bounds);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f2838e.a();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f2841h.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f2838e.a(i2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f2838e.a(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f2841h.cancel();
        this.f2838e.l();
        if (this.f2838e.b() != this.f2838e.e()) {
            this.f2843j = true;
            this.f2841h.setDuration(666L);
            this.f2841h.start();
        } else {
            this.f2838e.c(0);
            this.f2838e.k();
            this.f2841h.setDuration(1332L);
            this.f2841h.start();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f2841h.cancel();
        d(0.0f);
        this.f2838e.a(false);
        this.f2838e.c(0);
        this.f2838e.k();
        invalidateSelf();
    }

    private void b(float f2, c cVar) {
        a(f2, cVar);
        float floor = (float) (Math.floor(cVar.h() / 0.8f) + 1.0d);
        cVar.e(cVar.i() + (((cVar.g() - 0.01f) - cVar.i()) * f2));
        cVar.c(cVar.g());
        cVar.d(cVar.h() + ((floor - cVar.h()) * f2));
    }

    public void a(int i2) {
        if (i2 == 0) {
            a(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            a(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    public void a(boolean z) {
        this.f2838e.a(z);
        invalidateSelf();
    }

    public void a(float f2) {
        this.f2838e.a(f2);
        invalidateSelf();
    }

    public void a(float f2, float f3) {
        this.f2838e.e(f2);
        this.f2838e.c(f3);
        invalidateSelf();
    }

    public void a(@NonNull int... iArr) {
        this.f2838e.a(iArr);
        this.f2838e.c(0);
        invalidateSelf();
    }

    void a(float f2, c cVar) {
        if (f2 > 0.75f) {
            cVar.b(a((f2 - 0.75f) / 0.25f, cVar.f(), cVar.c()));
        } else {
            cVar.b(cVar.f());
        }
    }

    void a(float f2, c cVar, boolean z) {
        float i2;
        float interpolation;
        if (this.f2843j) {
            b(f2, cVar);
            return;
        }
        if (f2 != 1.0f || z) {
            float h2 = cVar.h();
            if (f2 < 0.5f) {
                float i3 = cVar.i();
                i2 = (f2837l.getInterpolation(f2 / 0.5f) * 0.79f) + 0.01f + i3;
                interpolation = i3;
            } else {
                i2 = cVar.i() + 0.79f;
                interpolation = i2 - (((1.0f - f2837l.getInterpolation((f2 - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
            }
            float f3 = h2 + (0.20999998f * f2);
            float f4 = (f2 + this.f2842i) * 216.0f;
            cVar.e(interpolation);
            cVar.c(i2);
            cVar.d(f3);
            d(f4);
        }
    }

    private void a() {
        c cVar = this.f2838e;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new a(cVar));
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f2836k);
        ofFloat.addListener(new b(cVar));
        this.f2841h = ofFloat;
    }
}

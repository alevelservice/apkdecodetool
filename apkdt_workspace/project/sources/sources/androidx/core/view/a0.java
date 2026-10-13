package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

/* compiled from: ViewPropertyAnimatorCompat.java */
/* loaded from: classes.dex */
public final class a0 {

    /* renamed from: a, reason: collision with root package name */
    private WeakReference<View> f1910a;

    /* renamed from: b, reason: collision with root package name */
    Runnable f1911b = null;

    /* renamed from: c, reason: collision with root package name */
    Runnable f1912c = null;

    /* renamed from: d, reason: collision with root package name */
    int f1913d = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ViewPropertyAnimatorCompat.java */
    /* loaded from: classes.dex */
    public class a extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ b0 f1914e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ View f1915f;

        a(a0 a0Var, b0 b0Var, View view) {
            this.f1914e = b0Var;
            this.f1915f = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1914e.a(this.f1915f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1914e.b(this.f1915f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f1914e.c(this.f1915f);
        }
    }

    /* compiled from: ViewPropertyAnimatorCompat.java */
    /* loaded from: classes.dex */
    class b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ d0 f1916e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ View f1917f;

        b(a0 a0Var, d0 d0Var, View view) {
            this.f1916e = d0Var;
            this.f1917f = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f1916e.a(this.f1917f);
        }
    }

    /* compiled from: ViewPropertyAnimatorCompat.java */
    /* loaded from: classes.dex */
    static class c implements b0 {

        /* renamed from: a, reason: collision with root package name */
        a0 f1918a;

        /* renamed from: b, reason: collision with root package name */
        boolean f1919b;

        c(a0 a0Var) {
            this.f1918a = a0Var;
        }

        @Override // androidx.core.view.b0
        public void a(View view) {
            Object tag = view.getTag(2113929216);
            b0 b0Var = tag instanceof b0 ? (b0) tag : null;
            if (b0Var != null) {
                b0Var.a(view);
            }
        }

        @Override // androidx.core.view.b0
        @SuppressLint({"WrongConstant"})
        public void b(View view) {
            int i2 = this.f1918a.f1913d;
            if (i2 > -1) {
                view.setLayerType(i2, null);
                this.f1918a.f1913d = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.f1919b) {
                a0 a0Var = this.f1918a;
                Runnable runnable = a0Var.f1912c;
                if (runnable != null) {
                    a0Var.f1912c = null;
                    runnable.run();
                }
                Object tag = view.getTag(2113929216);
                b0 b0Var = tag instanceof b0 ? (b0) tag : null;
                if (b0Var != null) {
                    b0Var.b(view);
                }
                this.f1919b = true;
            }
        }

        @Override // androidx.core.view.b0
        public void c(View view) {
            this.f1919b = false;
            if (this.f1918a.f1913d > -1) {
                view.setLayerType(2, null);
            }
            a0 a0Var = this.f1918a;
            Runnable runnable = a0Var.f1911b;
            if (runnable != null) {
                a0Var.f1911b = null;
                runnable.run();
            }
            Object tag = view.getTag(2113929216);
            b0 b0Var = tag instanceof b0 ? (b0) tag : null;
            if (b0Var != null) {
                b0Var.c(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(View view) {
        this.f1910a = new WeakReference<>(view);
    }

    public a0 a(long j2) {
        View view = this.f1910a.get();
        if (view != null) {
            view.animate().setDuration(j2);
        }
        return this;
    }

    public a0 b(float f2) {
        View view = this.f1910a.get();
        if (view != null) {
            view.animate().translationY(f2);
        }
        return this;
    }

    public void c() {
        View view = this.f1910a.get();
        if (view != null) {
            view.animate().start();
        }
    }

    public a0 a(float f2) {
        View view = this.f1910a.get();
        if (view != null) {
            view.animate().alpha(f2);
        }
        return this;
    }

    public long b() {
        View view = this.f1910a.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    public a0 a(Interpolator interpolator) {
        View view = this.f1910a.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public a0 b(long j2) {
        View view = this.f1910a.get();
        if (view != null) {
            view.animate().setStartDelay(j2);
        }
        return this;
    }

    public void a() {
        View view = this.f1910a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public a0 a(b0 b0Var) {
        View view = this.f1910a.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                a(view, b0Var);
            } else {
                view.setTag(2113929216, b0Var);
                a(view, new c(this));
            }
        }
        return this;
    }

    private void a(View view, b0 b0Var) {
        if (b0Var != null) {
            view.animate().setListener(new a(this, b0Var, view));
        } else {
            view.animate().setListener(null);
        }
    }

    public a0 a(d0 d0Var) {
        View view = this.f1910a.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            view.animate().setUpdateListener(d0Var != null ? new b(this, d0Var, view) : null);
        }
        return this;
    }
}

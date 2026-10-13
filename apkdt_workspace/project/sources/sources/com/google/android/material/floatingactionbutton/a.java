package com.google.android.material.floatingactionbutton;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.VisibilityAwareImageButton;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FloatingActionButtonImpl.java */
/* loaded from: classes.dex */
public class a {
    static final TimeInterpolator B = e.i.b.c.l.a.f17898c;
    static final int[] C = {R.attr.state_pressed, R.attr.state_enabled};
    static final int[] D = {R.attr.state_hovered, R.attr.state_focused, R.attr.state_enabled};
    static final int[] E = {R.attr.state_focused, R.attr.state_enabled};
    static final int[] F = {R.attr.state_hovered, R.attr.state_enabled};
    static final int[] G = {R.attr.state_enabled};
    static final int[] H = new int[0];
    private ViewTreeObserver.OnPreDrawListener A;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    Animator f13804b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    e.i.b.c.l.h f13805c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    e.i.b.c.l.h f13806d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private e.i.b.c.l.h f13807e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private e.i.b.c.l.h f13808f;

    /* renamed from: h, reason: collision with root package name */
    e.i.b.c.s.a f13810h;

    /* renamed from: i, reason: collision with root package name */
    private float f13811i;

    /* renamed from: j, reason: collision with root package name */
    Drawable f13812j;

    /* renamed from: k, reason: collision with root package name */
    Drawable f13813k;

    /* renamed from: l, reason: collision with root package name */
    com.google.android.material.internal.a f13814l;
    Drawable m;
    float n;
    float o;
    float p;
    int q;
    private ArrayList<Animator.AnimatorListener> s;
    private ArrayList<Animator.AnimatorListener> t;
    final VisibilityAwareImageButton u;
    final e.i.b.c.s.b v;

    /* renamed from: a, reason: collision with root package name */
    int f13803a = 0;
    float r = 1.0f;
    private final Rect w = new Rect();
    private final RectF x = new RectF();
    private final RectF y = new RectF();
    private final Matrix z = new Matrix();

    /* renamed from: g, reason: collision with root package name */
    private final com.google.android.material.internal.i f13809g = new com.google.android.material.internal.i();

    /* compiled from: FloatingActionButtonImpl.java */
    /* renamed from: com.google.android.material.floatingactionbutton.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0102a extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        private boolean f13815e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f13816f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ g f13817g;

        C0102a(boolean z, g gVar) {
            this.f13816f = z;
            this.f13817g = gVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f13815e = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a aVar = a.this;
            aVar.f13803a = 0;
            aVar.f13804b = null;
            if (this.f13815e) {
                return;
            }
            aVar.u.internalSetVisibility(this.f13816f ? 8 : 4, this.f13816f);
            g gVar = this.f13817g;
            if (gVar != null) {
                gVar.b();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            a.this.u.internalSetVisibility(0, this.f13816f);
            a aVar = a.this;
            aVar.f13803a = 1;
            aVar.f13804b = animator;
            this.f13815e = false;
        }
    }

    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes.dex */
    class b extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f13819e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ g f13820f;

        b(boolean z, g gVar) {
            this.f13819e = z;
            this.f13820f = gVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a aVar = a.this;
            aVar.f13803a = 0;
            aVar.f13804b = null;
            g gVar = this.f13820f;
            if (gVar != null) {
                gVar.a();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            a.this.u.internalSetVisibility(0, this.f13819e);
            a aVar = a.this;
            aVar.f13803a = 2;
            aVar.f13804b = animator;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes.dex */
    public class c implements ViewTreeObserver.OnPreDrawListener {
        c() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            a.this.p();
            return true;
        }
    }

    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes.dex */
    private class d extends i {
        d(a aVar) {
            super(aVar, null);
        }

        @Override // com.google.android.material.floatingactionbutton.a.i
        protected float a() {
            return 0.0f;
        }
    }

    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes.dex */
    private class e extends i {
        e() {
            super(a.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.a.i
        protected float a() {
            a aVar = a.this;
            return aVar.n + aVar.o;
        }
    }

    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes.dex */
    private class f extends i {
        f() {
            super(a.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.a.i
        protected float a() {
            a aVar = a.this;
            return aVar.n + aVar.p;
        }
    }

    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes.dex */
    interface g {
        void a();

        void b();
    }

    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes.dex */
    private class h extends i {
        h() {
            super(a.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.a.i
        protected float a() {
            return a.this.n;
        }
    }

    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes.dex */
    private abstract class i extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e, reason: collision with root package name */
        private boolean f13826e;

        /* renamed from: f, reason: collision with root package name */
        private float f13827f;

        /* renamed from: g, reason: collision with root package name */
        private float f13828g;

        private i() {
        }

        protected abstract float a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f13810h.b(this.f13828g);
            this.f13826e = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f13826e) {
                this.f13827f = a.this.f13810h.b();
                this.f13828g = a();
                this.f13826e = true;
            }
            e.i.b.c.s.a aVar = a.this.f13810h;
            float f2 = this.f13827f;
            aVar.b(f2 + ((this.f13828g - f2) * valueAnimator.getAnimatedFraction()));
        }

        /* synthetic */ i(a aVar, C0102a c0102a) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(VisibilityAwareImageButton visibilityAwareImageButton, e.i.b.c.s.b bVar) {
        this.u = visibilityAwareImageButton;
        this.v = bVar;
        this.f13809g.a(C, a((i) new f()));
        this.f13809g.a(D, a((i) new e()));
        this.f13809g.a(E, a((i) new e()));
        this.f13809g.a(F, a((i) new e()));
        this.f13809g.a(G, a((i) new h()));
        this.f13809g.a(H, a((i) new d(this)));
        this.f13811i = this.u.getRotation();
    }

    private void t() {
        if (this.A == null) {
            this.A = new c();
        }
    }

    private e.i.b.c.l.h u() {
        if (this.f13808f == null) {
            this.f13808f = e.i.b.c.l.h.a(this.u.getContext(), e.i.b.c.a.design_fab_hide_motion_spec);
        }
        return this.f13808f;
    }

    private e.i.b.c.l.h v() {
        if (this.f13807e == null) {
            this.f13807e = e.i.b.c.l.h.a(this.u.getContext(), e.i.b.c.a.design_fab_show_motion_spec);
        }
        return this.f13807e;
    }

    private boolean w() {
        return ViewCompat.D(this.u) && !this.u.isInEditMode();
    }

    private void x() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.f13811i % 90.0f != 0.0f) {
                if (this.u.getLayerType() != 1) {
                    this.u.setLayerType(1, null);
                }
            } else if (this.u.getLayerType() != 0) {
                this.u.setLayerType(0, null);
            }
        }
        e.i.b.c.s.a aVar = this.f13810h;
        if (aVar != null) {
            aVar.a(-this.f13811i);
        }
        com.google.android.material.internal.a aVar2 = this.f13814l;
        if (aVar2 != null) {
            aVar2.b(-this.f13811i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i2) {
        Drawable[] drawableArr;
        this.f13812j = androidx.core.graphics.drawable.a.i(a());
        androidx.core.graphics.drawable.a.a(this.f13812j, colorStateList);
        if (mode != null) {
            androidx.core.graphics.drawable.a.a(this.f13812j, mode);
        }
        this.f13813k = androidx.core.graphics.drawable.a.i(a());
        androidx.core.graphics.drawable.a.a(this.f13813k, e.i.b.c.r.a.a(colorStateList2));
        if (i2 > 0) {
            this.f13814l = a(i2, colorStateList);
            drawableArr = new Drawable[]{this.f13814l, this.f13812j, this.f13813k};
        } else {
            this.f13814l = null;
            drawableArr = new Drawable[]{this.f13812j, this.f13813k};
        }
        this.m = new LayerDrawable(drawableArr);
        Context context = this.u.getContext();
        Drawable drawable = this.m;
        float b2 = this.v.b();
        float f2 = this.n;
        this.f13810h = new e.i.b.c.s.a(context, drawable, b2, f2, f2 + this.p);
        this.f13810h.a(false);
        this.v.a(this.f13810h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(ColorStateList colorStateList) {
        Drawable drawable = this.f13813k;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, e.i.b.c.r.a.a(colorStateList));
        }
    }

    void b(Rect rect) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float c() {
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(float f2) {
        if (this.p != f2) {
            this.p = f2;
            a(this.n, this.o, this.p);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float e() {
        return this.o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float f() {
        return this.p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final e.i.b.c.l.h g() {
        return this.f13805c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h() {
        return this.u.getVisibility() == 0 ? this.f13803a == 1 : this.f13803a != 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        return this.u.getVisibility() != 0 ? this.f13803a == 2 : this.f13803a != 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        this.f13809g.a();
    }

    com.google.android.material.internal.a k() {
        return new com.google.android.material.internal.a();
    }

    GradientDrawable l() {
        return new GradientDrawable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
        if (q()) {
            t();
            this.u.getViewTreeObserver().addOnPreDrawListener(this.A);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o() {
        if (this.A != null) {
            this.u.getViewTreeObserver().removeOnPreDrawListener(this.A);
            this.A = null;
        }
    }

    void p() {
        float rotation = this.u.getRotation();
        if (this.f13811i != rotation) {
            this.f13811i = rotation;
            x();
        }
    }

    boolean q() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void r() {
        c(this.r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void s() {
        Rect rect = this.w;
        a(rect);
        b(rect);
        this.v.a(rect.left, rect.top, rect.right, rect.bottom);
    }

    final void c(float f2) {
        this.r = f2;
        Matrix matrix = this.z;
        a(f2, matrix);
        this.u.setImageMatrix(matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(float f2) {
        if (this.o != f2) {
            this.o = f2;
            a(this.n, this.o, this.p);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final e.i.b.c.l.h d() {
        return this.f13806d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(@NonNull Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.s;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    public void c(@NonNull Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.t;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(@Nullable e.i.b.c.l.h hVar) {
        this.f13805c = hVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.s == null) {
            this.s = new ArrayList<>();
        }
        this.s.add(animatorListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@Nullable g gVar, boolean z) {
        if (i()) {
            return;
        }
        Animator animator = this.f13804b;
        if (animator != null) {
            animator.cancel();
        }
        if (w()) {
            if (this.u.getVisibility() != 0) {
                this.u.setAlpha(0.0f);
                this.u.setScaleY(0.0f);
                this.u.setScaleX(0.0f);
                c(0.0f);
            }
            e.i.b.c.l.h hVar = this.f13805c;
            if (hVar == null) {
                hVar = v();
            }
            AnimatorSet a2 = a(hVar, 1.0f, 1.0f, 1.0f);
            a2.addListener(new b(z, gVar));
            ArrayList<Animator.AnimatorListener> arrayList = this.s;
            if (arrayList != null) {
                Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                while (it.hasNext()) {
                    a2.addListener(it.next());
                }
            }
            a2.start();
            return;
        }
        this.u.internalSetVisibility(0, z);
        this.u.setAlpha(1.0f);
        this.u.setScaleY(1.0f);
        this.u.setScaleX(1.0f);
        c(1.0f);
        if (gVar != null) {
            gVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        Drawable drawable = this.f13812j;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, colorStateList);
        }
        com.google.android.material.internal.a aVar = this.f13814l;
        if (aVar != null) {
            aVar.a(colorStateList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(PorterDuff.Mode mode) {
        Drawable drawable = this.f13812j;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, mode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f2) {
        if (this.n != f2) {
            this.n = f2;
            a(this.n, this.o, this.p);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i2) {
        if (this.q != i2) {
            this.q = i2;
            r();
        }
    }

    private void a(float f2, Matrix matrix) {
        matrix.reset();
        if (this.u.getDrawable() == null || this.q == 0) {
            return;
        }
        RectF rectF = this.x;
        RectF rectF2 = this.y;
        rectF.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        int i2 = this.q;
        rectF2.set(0.0f, 0.0f, i2, i2);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i3 = this.q;
        matrix.postScale(f2, f2, i3 / 2.0f, i3 / 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Drawable b() {
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(@Nullable e.i.b.c.l.h hVar) {
        this.f13806d = hVar;
    }

    void a(float f2, float f3, float f4) {
        e.i.b.c.s.a aVar = this.f13810h;
        if (aVar != null) {
            aVar.a(f2, this.p + f2);
            s();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int[] iArr) {
        this.f13809g.a(iArr);
    }

    public void a(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.t == null) {
            this.t = new ArrayList<>();
        }
        this.t.add(animatorListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@Nullable g gVar, boolean z) {
        if (h()) {
            return;
        }
        Animator animator = this.f13804b;
        if (animator != null) {
            animator.cancel();
        }
        if (w()) {
            e.i.b.c.l.h hVar = this.f13806d;
            if (hVar == null) {
                hVar = u();
            }
            AnimatorSet a2 = a(hVar, 0.0f, 0.0f, 0.0f);
            a2.addListener(new C0102a(z, gVar));
            ArrayList<Animator.AnimatorListener> arrayList = this.t;
            if (arrayList != null) {
                Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                while (it.hasNext()) {
                    a2.addListener(it.next());
                }
            }
            a2.start();
            return;
        }
        this.u.internalSetVisibility(z ? 8 : 4, z);
        if (gVar != null) {
            gVar.b();
        }
    }

    @NonNull
    private AnimatorSet a(@NonNull e.i.b.c.l.h hVar, float f2, float f3, float f4) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.u, (Property<VisibilityAwareImageButton, Float>) View.ALPHA, f2);
        hVar.a("opacity").a((Animator) ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.u, (Property<VisibilityAwareImageButton, Float>) View.SCALE_X, f3);
        hVar.a("scale").a((Animator) ofFloat2);
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.u, (Property<VisibilityAwareImageButton, Float>) View.SCALE_Y, f3);
        hVar.a("scale").a((Animator) ofFloat3);
        arrayList.add(ofFloat3);
        a(f4, this.z);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this.u, new e.i.b.c.l.f(), new e.i.b.c.l.g(), new Matrix(this.z));
        hVar.a("iconScale").a((Animator) ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        e.i.b.c.l.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    void a(Rect rect) {
        this.f13810h.getPadding(rect);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.google.android.material.internal.a a(int i2, ColorStateList colorStateList) {
        Context context = this.u.getContext();
        com.google.android.material.internal.a k2 = k();
        k2.a(androidx.core.content.a.a(context, e.i.b.c.c.design_fab_stroke_top_outer_color), androidx.core.content.a.a(context, e.i.b.c.c.design_fab_stroke_top_inner_color), androidx.core.content.a.a(context, e.i.b.c.c.design_fab_stroke_end_inner_color), androidx.core.content.a.a(context, e.i.b.c.c.design_fab_stroke_end_outer_color));
        k2.a(i2);
        k2.a(colorStateList);
        return k2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GradientDrawable a() {
        GradientDrawable l2 = l();
        l2.setShape(1);
        l2.setColor(-1);
        return l2;
    }

    private ValueAnimator a(@NonNull i iVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(B);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(iVar);
        valueAnimator.addUpdateListener(iVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }
}

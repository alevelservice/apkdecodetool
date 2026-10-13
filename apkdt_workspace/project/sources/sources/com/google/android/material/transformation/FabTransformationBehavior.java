package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.circularreveal.CircularRevealHelper;
import com.google.android.material.circularreveal.b;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import e.i.b.c.f;
import e.i.b.c.l.h;
import e.i.b.c.l.i;
import e.i.b.c.l.j;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: c, reason: collision with root package name */
    private final Rect f14013c;

    /* renamed from: d, reason: collision with root package name */
    private final RectF f14014d;

    /* renamed from: e, reason: collision with root package name */
    private final RectF f14015e;

    /* renamed from: f, reason: collision with root package name */
    private final int[] f14016f;

    /* loaded from: classes.dex */
    class a extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f14017e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ View f14018f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ View f14019g;

        a(FabTransformationBehavior fabTransformationBehavior, boolean z, View view, View view2) {
            this.f14017e = z;
            this.f14018f = view;
            this.f14019g = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f14017e) {
                return;
            }
            this.f14018f.setVisibility(4);
            this.f14019g.setAlpha(1.0f);
            this.f14019g.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f14017e) {
                this.f14018f.setVisibility(0);
                this.f14019g.setAlpha(0.0f);
                this.f14019g.setVisibility(4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ View f14020e;

        b(FabTransformationBehavior fabTransformationBehavior, View view) {
            this.f14020e = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f14020e.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.google.android.material.circularreveal.b f14021e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ Drawable f14022f;

        c(FabTransformationBehavior fabTransformationBehavior, com.google.android.material.circularreveal.b bVar, Drawable drawable) {
            this.f14021e = bVar;
            this.f14022f = drawable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f14021e.setCircularRevealOverlayDrawable(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f14021e.setCircularRevealOverlayDrawable(this.f14022f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.google.android.material.circularreveal.b f14023e;

        d(FabTransformationBehavior fabTransformationBehavior, com.google.android.material.circularreveal.b bVar) {
            this.f14023e = bVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            b.e revealInfo = this.f14023e.getRevealInfo();
            revealInfo.f13788c = Float.MAX_VALUE;
            this.f14023e.setRevealInfo(revealInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public h f14024a;

        /* renamed from: b, reason: collision with root package name */
        public j f14025b;
    }

    public FabTransformationBehavior() {
        this.f14013c = new Rect();
        this.f14014d = new RectF();
        this.f14015e = new RectF();
        this.f14016f = new int[2];
    }

    @TargetApi(21)
    private void c(View view, View view2, boolean z, boolean z2, e eVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofFloat;
        float j2 = ViewCompat.j(view2) - ViewCompat.j(view);
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-j2);
            }
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -j2);
        }
        eVar.f14024a.a("elevation").a((Animator) ofFloat);
        list.add(ofFloat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void d(View view, View view2, boolean z, boolean z2, e eVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofInt;
        if ((view2 instanceof com.google.android.material.circularreveal.b) && (view instanceof ImageView)) {
            com.google.android.material.circularreveal.b bVar = (com.google.android.material.circularreveal.b) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.mutate();
            if (z) {
                if (!z2) {
                    drawable.setAlpha(255);
                }
                ofInt = ObjectAnimator.ofInt(drawable, e.i.b.c.l.e.f17903b, 0);
            } else {
                ofInt = ObjectAnimator.ofInt(drawable, e.i.b.c.l.e.f17903b, 255);
            }
            ofInt.addUpdateListener(new b(this, view2));
            eVar.f14024a.a("iconFade").a((Animator) ofInt);
            list.add(ofInt);
            list2.add(new c(this, bVar, drawable));
        }
    }

    protected abstract e a(Context context, boolean z);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view.getVisibility() != 8) {
            if (!(view2 instanceof FloatingActionButton)) {
                return false;
            }
            int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
            return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
        }
        throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    @NonNull
    protected AnimatorSet b(View view, View view2, boolean z, boolean z2) {
        e a2 = a(view2.getContext(), z);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            c(view, view2, z, z2, a2, arrayList, arrayList2);
        }
        RectF rectF = this.f14014d;
        a(view, view2, z, z2, a2, arrayList, arrayList2, rectF);
        float width = rectF.width();
        float height = rectF.height();
        d(view, view2, z, z2, a2, arrayList, arrayList2);
        a(view, view2, z, z2, a2, width, height, arrayList, arrayList2);
        b(view, view2, z, z2, a2, arrayList, arrayList2);
        a(view, view2, z, z2, a2, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        e.i.b.c.l.b.a(animatorSet, arrayList);
        animatorSet.addListener(new a(this, z, view2, view));
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            animatorSet.addListener(arrayList2.get(i2));
        }
        return animatorSet;
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f14013c = new Rect();
        this.f14014d = new RectF();
        this.f14015e = new RectF();
        this.f14016f = new int[2];
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public void a(@NonNull CoordinatorLayout.d dVar) {
        if (dVar.f1628h == 0) {
            dVar.f1628h = 80;
        }
    }

    private float c(View view, View view2, j jVar) {
        float centerX;
        float centerX2;
        float f2;
        RectF rectF = this.f14014d;
        RectF rectF2 = this.f14015e;
        a(view, rectF);
        a(view2, rectF2);
        int i2 = jVar.f17915a & 7;
        if (i2 == 1) {
            centerX = rectF2.centerX();
            centerX2 = rectF.centerX();
        } else if (i2 == 3) {
            centerX = rectF2.left;
            centerX2 = rectF.left;
        } else if (i2 == 5) {
            centerX = rectF2.right;
            centerX2 = rectF.right;
        } else {
            f2 = 0.0f;
            return f2 + jVar.f17916b;
        }
        f2 = centerX - centerX2;
        return f2 + jVar.f17916b;
    }

    private void a(View view, View view2, boolean z, boolean z2, e eVar, List<Animator> list, List<Animator.AnimatorListener> list2, RectF rectF) {
        i a2;
        i a3;
        ObjectAnimator ofFloat;
        ObjectAnimator ofFloat2;
        float c2 = c(view, view2, eVar.f14025b);
        float d2 = d(view, view2, eVar.f14025b);
        if (c2 == 0.0f || d2 == 0.0f) {
            a2 = eVar.f14024a.a("translationXLinear");
            a3 = eVar.f14024a.a("translationYLinear");
        } else if ((z && d2 < 0.0f) || (!z && d2 > 0.0f)) {
            a2 = eVar.f14024a.a("translationXCurveUpwards");
            a3 = eVar.f14024a.a("translationYCurveUpwards");
        } else {
            a2 = eVar.f14024a.a("translationXCurveDownwards");
            a3 = eVar.f14024a.a("translationYCurveDownwards");
        }
        i iVar = a2;
        i iVar2 = a3;
        if (z) {
            if (!z2) {
                view2.setTranslationX(-c2);
                view2.setTranslationY(-d2);
            }
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            ofFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            a(view2, eVar, iVar, iVar2, -c2, -d2, 0.0f, 0.0f, rectF);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -c2);
            ofFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -d2);
        }
        iVar.a((Animator) ofFloat);
        iVar2.a((Animator) ofFloat2);
        list.add(ofFloat);
        list.add(ofFloat2);
    }

    private float d(View view, View view2, j jVar) {
        float centerY;
        float centerY2;
        float f2;
        RectF rectF = this.f14014d;
        RectF rectF2 = this.f14015e;
        a(view, rectF);
        a(view2, rectF2);
        int i2 = jVar.f17915a & 112;
        if (i2 == 16) {
            centerY = rectF2.centerY();
            centerY2 = rectF.centerY();
        } else if (i2 == 48) {
            centerY = rectF2.top;
            centerY2 = rectF.top;
        } else if (i2 == 80) {
            centerY = rectF2.bottom;
            centerY2 = rectF.bottom;
        } else {
            f2 = 0.0f;
            return f2 + jVar.f17917c;
        }
        f2 = centerY - centerY2;
        return f2 + jVar.f17917c;
    }

    @Nullable
    private ViewGroup c(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void b(View view, View view2, boolean z, boolean z2, e eVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofInt;
        if (view2 instanceof com.google.android.material.circularreveal.b) {
            com.google.android.material.circularreveal.b bVar = (com.google.android.material.circularreveal.b) view2;
            int b2 = b(view);
            int i2 = 16777215 & b2;
            if (z) {
                if (!z2) {
                    bVar.setCircularRevealScrimColor(b2);
                }
                ofInt = ObjectAnimator.ofInt(bVar, b.d.f13785a, i2);
            } else {
                ofInt = ObjectAnimator.ofInt(bVar, b.d.f13785a, b2);
            }
            ofInt.setEvaluator(e.i.b.c.l.c.a());
            eVar.f14024a.a("color").a((Animator) ofInt);
            list.add(ofInt);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(View view, View view2, boolean z, boolean z2, e eVar, float f2, float f3, List<Animator> list, List<Animator.AnimatorListener> list2) {
        Animator animator;
        if (view2 instanceof com.google.android.material.circularreveal.b) {
            com.google.android.material.circularreveal.b bVar = (com.google.android.material.circularreveal.b) view2;
            float a2 = a(view, view2, eVar.f14025b);
            float b2 = b(view, view2, eVar.f14025b);
            ((FloatingActionButton) view).getContentRect(this.f14013c);
            float width = this.f14013c.width() / 2.0f;
            i a3 = eVar.f14024a.a("expansion");
            if (z) {
                if (!z2) {
                    bVar.setRevealInfo(new b.e(a2, b2, width));
                }
                if (z2) {
                    width = bVar.getRevealInfo().f13788c;
                }
                animator = com.google.android.material.circularreveal.a.a(bVar, a2, b2, e.i.b.c.p.a.a(a2, b2, 0.0f, 0.0f, f2, f3));
                animator.addListener(new d(this, bVar));
                a(view2, a3.a(), (int) a2, (int) b2, width, list);
            } else {
                float f4 = bVar.getRevealInfo().f13788c;
                Animator a4 = com.google.android.material.circularreveal.a.a(bVar, a2, b2, width);
                int i2 = (int) a2;
                int i3 = (int) b2;
                a(view2, a3.a(), i2, i3, f4, list);
                a(view2, a3.a(), a3.b(), eVar.f14024a.a(), i2, i3, width, list);
                animator = a4;
            }
            a3.a(animator);
            list.add(animator);
            list2.add(com.google.android.material.circularreveal.a.a(bVar));
        }
    }

    private float b(View view, View view2, j jVar) {
        RectF rectF = this.f14014d;
        RectF rectF2 = this.f14015e;
        a(view, rectF);
        a(view2, rectF2);
        rectF2.offset(0.0f, -d(view, view2, jVar));
        return rectF.centerY() - rectF2.top;
    }

    private int b(View view) {
        ColorStateList f2 = ViewCompat.f(view);
        if (f2 != null) {
            return f2.getColorForState(view.getDrawableState(), f2.getDefaultColor());
        }
        return 0;
    }

    private void a(View view, View view2, boolean z, boolean z2, e eVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup a2;
        ObjectAnimator ofFloat;
        if (view2 instanceof ViewGroup) {
            if (((view2 instanceof com.google.android.material.circularreveal.b) && CircularRevealHelper.f13769j == 0) || (a2 = a(view2)) == null) {
                return;
            }
            if (z) {
                if (!z2) {
                    e.i.b.c.l.d.f17902a.set(a2, Float.valueOf(0.0f));
                }
                ofFloat = ObjectAnimator.ofFloat(a2, e.i.b.c.l.d.f17902a, 1.0f);
            } else {
                ofFloat = ObjectAnimator.ofFloat(a2, e.i.b.c.l.d.f17902a, 0.0f);
            }
            eVar.f14024a.a("contentFade").a((Animator) ofFloat);
            list.add(ofFloat);
        }
    }

    private void a(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getLocationInWindow(this.f14016f);
        rectF.offsetTo(r0[0], r0[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    private float a(View view, View view2, j jVar) {
        RectF rectF = this.f14014d;
        RectF rectF2 = this.f14015e;
        a(view, rectF);
        a(view2, rectF2);
        rectF2.offset(-c(view, view2, jVar), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    private void a(View view, e eVar, i iVar, i iVar2, float f2, float f3, float f4, float f5, RectF rectF) {
        float a2 = a(eVar, iVar, f2, f4);
        float a3 = a(eVar, iVar2, f3, f5);
        Rect rect = this.f14013c;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f14014d;
        rectF2.set(rect);
        RectF rectF3 = this.f14015e;
        a(view, rectF3);
        rectF3.offset(a2, a3);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    private float a(e eVar, i iVar, float f2, float f3) {
        long a2 = iVar.a();
        long b2 = iVar.b();
        i a3 = eVar.f14024a.a("expansion");
        return e.i.b.c.l.a.a(f2, f3, iVar.c().getInterpolation(((float) (((a3.a() + a3.b()) + 17) - a2)) / ((float) b2)));
    }

    @Nullable
    private ViewGroup a(View view) {
        View findViewById = view.findViewById(f.mtrl_child_content_container);
        if (findViewById != null) {
            return c(findViewById);
        }
        if (!(view instanceof TransformationChildLayout) && !(view instanceof TransformationChildCard)) {
            return c(view);
        }
        return c(((ViewGroup) view).getChildAt(0));
    }

    private void a(View view, long j2, int i2, int i3, float f2, List<Animator> list) {
        if (Build.VERSION.SDK_INT < 21 || j2 <= 0) {
            return;
        }
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i2, i3, f2, f2);
        createCircularReveal.setStartDelay(0L);
        createCircularReveal.setDuration(j2);
        list.add(createCircularReveal);
    }

    private void a(View view, long j2, long j3, long j4, int i2, int i3, float f2, List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21) {
            long j5 = j2 + j3;
            if (j5 < j4) {
                Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i2, i3, f2, f2);
                createCircularReveal.setStartDelay(j5);
                createCircularReveal.setDuration(j4 - j5);
                list.add(createCircularReveal);
            }
        }
    }
}

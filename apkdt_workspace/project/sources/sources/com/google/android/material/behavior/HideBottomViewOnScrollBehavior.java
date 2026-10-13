package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* loaded from: classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a, reason: collision with root package name */
    private int f13635a;

    /* renamed from: b, reason: collision with root package name */
    private int f13636b;

    /* renamed from: c, reason: collision with root package name */
    private ViewPropertyAnimator f13637c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f13637c = null;
        }
    }

    public HideBottomViewOnScrollBehavior() {
        this.f13635a = 0;
        this.f13636b = 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(V v) {
        ViewPropertyAnimator viewPropertyAnimator = this.f13637c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f13636b = 2;
        a((HideBottomViewOnScrollBehavior<V>) v, 0, 225L, e.i.b.c.l.a.f17899d);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean b(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i2) {
        return i2 == 2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, V v, int i2) {
        this.f13635a = v.getMeasuredHeight();
        return super.a(coordinatorLayout, (CoordinatorLayout) v, i2);
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13635a = 0;
        this.f13636b = 2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i2, int i3, int i4, int i5) {
        if (this.f13636b != 1 && i3 > 0) {
            a((HideBottomViewOnScrollBehavior<V>) v);
        } else {
            if (this.f13636b == 2 || i3 >= 0) {
                return;
            }
            b(v);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(V v) {
        ViewPropertyAnimator viewPropertyAnimator = this.f13637c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f13636b = 1;
        a((HideBottomViewOnScrollBehavior<V>) v, this.f13635a, 175L, e.i.b.c.l.a.f17898c);
    }

    private void a(V v, int i2, long j2, TimeInterpolator timeInterpolator) {
        this.f13637c = v.animate().translationY(i2).setInterpolator(timeInterpolator).setDuration(j2).setListener(new a());
    }
}

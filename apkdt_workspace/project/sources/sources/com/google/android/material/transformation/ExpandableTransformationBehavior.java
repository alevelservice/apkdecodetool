package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private AnimatorSet f14011b;

    /* loaded from: classes.dex */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ExpandableTransformationBehavior.this.f14011b = null;
        }
    }

    public ExpandableTransformationBehavior() {
    }

    @NonNull
    protected abstract AnimatorSet b(View view, View view2, boolean z, boolean z2);

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.transformation.ExpandableBehavior
    @CallSuper
    public boolean a(View view, View view2, boolean z, boolean z2) {
        boolean z3 = this.f14011b != null;
        if (z3) {
            this.f14011b.cancel();
        }
        this.f14011b = b(view, view2, z, z3);
        this.f14011b.addListener(new a());
        this.f14011b.start();
        if (!z2) {
            this.f14011b.end();
        }
        return true;
    }
}

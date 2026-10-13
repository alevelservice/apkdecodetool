package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import e.i.b.c.o.b;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {

    /* renamed from: a, reason: collision with root package name */
    private int f14006a;

    /* loaded from: classes.dex */
    class a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ View f14007e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f14008f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ b f14009g;

        a(View view, int i2, b bVar) {
            this.f14007e = view;
            this.f14008f = i2;
            this.f14009g = bVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.f14007e.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpandableBehavior.this.f14006a == this.f14008f) {
                ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                b bVar = this.f14009g;
                expandableBehavior.a((View) bVar, this.f14007e, bVar.isExpanded(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.f14006a = 0;
    }

    protected abstract boolean a(View view, View view2, boolean z, boolean z2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean b(CoordinatorLayout coordinatorLayout, View view, View view2) {
        b bVar = (b) view2;
        if (!a(bVar.isExpanded())) {
            return false;
        }
        this.f14006a = bVar.isExpanded() ? 1 : 2;
        return a((View) bVar, view, bVar.isExpanded(), true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    protected b e(CoordinatorLayout coordinatorLayout, View view) {
        List<View> dependencies = coordinatorLayout.getDependencies(view);
        int size = dependencies.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view2 = dependencies.get(i2);
            if (a(coordinatorLayout, (CoordinatorLayout) view, view2)) {
                return (b) view2;
            }
        }
        return null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean a(CoordinatorLayout coordinatorLayout, View view, int i2) {
        b e2;
        if (ViewCompat.D(view) || (e2 = e(coordinatorLayout, view)) == null || !a(e2.isExpanded())) {
            return false;
        }
        this.f14006a = e2.isExpanded() ? 1 : 2;
        view.getViewTreeObserver().addOnPreDrawListener(new a(view, this.f14006a, e2));
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f14006a = 0;
    }

    private boolean a(boolean z) {
        if (!z) {
            return this.f14006a == 1;
        }
        int i2 = this.f14006a;
        return i2 == 0 || i2 == 2;
    }
}

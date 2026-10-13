package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.e;
import androidx.core.view.e0;
import e.b.b.a.a.a.c;
import java.util.List;

/* loaded from: classes.dex */
abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {

    /* renamed from: d, reason: collision with root package name */
    final Rect f13622d;

    /* renamed from: e, reason: collision with root package name */
    final Rect f13623e;

    /* renamed from: f, reason: collision with root package name */
    private int f13624f;

    /* renamed from: g, reason: collision with root package name */
    private int f13625g;

    public HeaderScrollingViewBehavior() {
        this.f13622d = new Rect();
        this.f13623e = new Rect();
        this.f13624f = 0;
    }

    private static int c(int i2) {
        if (i2 == 0) {
            return 8388659;
        }
        return i2;
    }

    abstract View a(List<View> list);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4, int i5) {
        View a2;
        int i6 = view.getLayoutParams().height;
        if ((i6 != -1 && i6 != -2) || (a2 = a(coordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        if (ViewCompat.k(a2) && !ViewCompat.k(view)) {
            ViewCompat.a(view, true);
            if (ViewCompat.k(view)) {
                view.requestLayout();
                return true;
            }
        }
        int size = View.MeasureSpec.getSize(i4);
        if (size == 0) {
            size = coordinatorLayout.getHeight();
        }
        coordinatorLayout.onMeasureChild(view, i2, i3, View.MeasureSpec.makeMeasureSpec((size - a2.getMeasuredHeight()) + c(a2), i6 == -1 ? 1073741824 : c.ALL_INT), i5);
        return true;
    }

    abstract float b(View view);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    public void b(CoordinatorLayout coordinatorLayout, View view, int i2) {
        View a2 = a(coordinatorLayout.getDependencies(view));
        if (a2 != null) {
            CoordinatorLayout.d dVar = (CoordinatorLayout.d) view.getLayoutParams();
            Rect rect = this.f13622d;
            rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar).leftMargin, a2.getBottom() + ((ViewGroup.MarginLayoutParams) dVar).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) dVar).rightMargin, ((coordinatorLayout.getHeight() + a2.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
            e0 lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && ViewCompat.k(coordinatorLayout) && !ViewCompat.k(view)) {
                rect.left += lastWindowInsets.e();
                rect.right -= lastWindowInsets.f();
            }
            Rect rect2 = this.f13623e;
            e.a(c(dVar.f1623c), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i2);
            int a3 = a(a2);
            view.layout(rect2.left, rect2.top - a3, rect2.right, rect2.bottom - a3);
            this.f13624f = rect2.top - a2.getBottom();
            return;
        }
        super.b(coordinatorLayout, (CoordinatorLayout) view, i2);
        this.f13624f = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c(View view) {
        return view.getMeasuredHeight();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int d() {
        return this.f13624f;
    }

    public final int c() {
        return this.f13625g;
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13622d = new Rect();
        this.f13623e = new Rect();
        this.f13624f = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(View view) {
        if (this.f13625g == 0) {
            return 0;
        }
        float b2 = b(view);
        int i2 = this.f13625g;
        return a.i.j.a.a((int) (b2 * i2), 0, i2);
    }

    public final void b(int i2) {
        this.f13625g = i2;
    }
}

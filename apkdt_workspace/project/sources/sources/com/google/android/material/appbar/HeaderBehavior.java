package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import e.b.b.a.a.a.c;

/* loaded from: classes.dex */
abstract class HeaderBehavior<V extends View> extends ViewOffsetBehavior<V> {

    /* renamed from: d, reason: collision with root package name */
    private Runnable f13612d;

    /* renamed from: e, reason: collision with root package name */
    OverScroller f13613e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f13614f;

    /* renamed from: g, reason: collision with root package name */
    private int f13615g;

    /* renamed from: h, reason: collision with root package name */
    private int f13616h;

    /* renamed from: i, reason: collision with root package name */
    private int f13617i;

    /* renamed from: j, reason: collision with root package name */
    private VelocityTracker f13618j;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        private final CoordinatorLayout f13619e;

        /* renamed from: f, reason: collision with root package name */
        private final V f13620f;

        a(CoordinatorLayout coordinatorLayout, V v) {
            this.f13619e = coordinatorLayout;
            this.f13620f = v;
        }

        @Override // java.lang.Runnable
        public void run() {
            OverScroller overScroller;
            if (this.f13620f == null || (overScroller = HeaderBehavior.this.f13613e) == null) {
                return;
            }
            if (overScroller.computeScrollOffset()) {
                HeaderBehavior headerBehavior = HeaderBehavior.this;
                headerBehavior.c(this.f13619e, (CoordinatorLayout) this.f13620f, headerBehavior.f13613e.getCurrY());
                ViewCompat.a(this.f13620f, this);
                return;
            }
            HeaderBehavior.this.e(this.f13619e, this.f13620f);
        }
    }

    public HeaderBehavior() {
        this.f13615g = -1;
        this.f13617i = -1;
    }

    private void d() {
        if (this.f13618j == null) {
            this.f13618j = VelocityTracker.obtain();
        }
    }

    abstract boolean a(V v);

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
    
        if (r0 != 3) goto L35;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(androidx.coordinatorlayout.widget.CoordinatorLayout r5, V r6, android.view.MotionEvent r7) {
        /*
            r4 = this;
            int r0 = r4.f13617i
            if (r0 >= 0) goto L12
            android.content.Context r0 = r5.getContext()
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r0)
            int r0 = r0.getScaledTouchSlop()
            r4.f13617i = r0
        L12:
            int r0 = r7.getAction()
            r1 = 2
            r2 = 1
            if (r0 != r1) goto L1f
            boolean r0 = r4.f13614f
            if (r0 == 0) goto L1f
            return r2
        L1f:
            int r0 = r7.getActionMasked()
            r3 = 0
            if (r0 == 0) goto L60
            r5 = -1
            if (r0 == r2) goto L51
            if (r0 == r1) goto L2f
            r6 = 3
            if (r0 == r6) goto L51
            goto L83
        L2f:
            int r6 = r4.f13615g
            if (r6 != r5) goto L34
            goto L83
        L34:
            int r6 = r7.findPointerIndex(r6)
            if (r6 != r5) goto L3b
            goto L83
        L3b:
            float r5 = r7.getY(r6)
            int r5 = (int) r5
            int r6 = r4.f13616h
            int r6 = r5 - r6
            int r6 = java.lang.Math.abs(r6)
            int r0 = r4.f13617i
            if (r6 <= r0) goto L83
            r4.f13614f = r2
            r4.f13616h = r5
            goto L83
        L51:
            r4.f13614f = r3
            r4.f13615g = r5
            android.view.VelocityTracker r5 = r4.f13618j
            if (r5 == 0) goto L83
            r5.recycle()
            r5 = 0
            r4.f13618j = r5
            goto L83
        L60:
            r4.f13614f = r3
            float r0 = r7.getX()
            int r0 = (int) r0
            float r1 = r7.getY()
            int r1 = (int) r1
            boolean r2 = r4.a(r6)
            if (r2 == 0) goto L83
            boolean r5 = r5.isPointInChildBounds(r6, r0, r1)
            if (r5 == 0) goto L83
            r4.f13616h = r1
            int r5 = r7.getPointerId(r3)
            r4.f13615g = r5
            r4.d()
        L83:
            android.view.VelocityTracker r5 = r4.f13618j
            if (r5 == 0) goto L8a
            r5.addMovement(r7)
        L8a:
            boolean r5 = r4.f13614f
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.HeaderBehavior.a(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    abstract int b(V v);

    abstract int b(CoordinatorLayout coordinatorLayout, V v, int i2, int i3, int i4);

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0021, code lost:
    
        if (r0 != 3) goto L39;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean b(androidx.coordinatorlayout.widget.CoordinatorLayout r12, V r13, android.view.MotionEvent r14) {
        /*
            r11 = this;
            int r0 = r11.f13617i
            if (r0 >= 0) goto L12
            android.content.Context r0 = r12.getContext()
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r0)
            int r0 = r0.getScaledTouchSlop()
            r11.f13617i = r0
        L12:
            int r0 = r14.getActionMasked()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L8d
            r3 = -1
            if (r0 == r1) goto L5c
            r4 = 2
            if (r0 == r4) goto L25
            r12 = 3
            if (r0 == r12) goto L7e
            goto Lae
        L25:
            int r0 = r11.f13615g
            int r0 = r14.findPointerIndex(r0)
            if (r0 != r3) goto L2e
            return r2
        L2e:
            float r0 = r14.getY(r0)
            int r0 = (int) r0
            int r2 = r11.f13616h
            int r2 = r2 - r0
            boolean r3 = r11.f13614f
            if (r3 != 0) goto L49
            int r3 = java.lang.Math.abs(r2)
            int r4 = r11.f13617i
            if (r3 <= r4) goto L49
            r11.f13614f = r1
            if (r2 <= 0) goto L48
            int r2 = r2 - r4
            goto L49
        L48:
            int r2 = r2 + r4
        L49:
            r6 = r2
            boolean r2 = r11.f13614f
            if (r2 == 0) goto Lae
            r11.f13616h = r0
            int r7 = r11.b(r13)
            r8 = 0
            r3 = r11
            r4 = r12
            r5 = r13
            r3.a(r4, r5, r6, r7, r8)
            goto Lae
        L5c:
            android.view.VelocityTracker r0 = r11.f13618j
            if (r0 == 0) goto L7e
            r0.addMovement(r14)
            android.view.VelocityTracker r0 = r11.f13618j
            r4 = 1000(0x3e8, float:1.401E-42)
            r0.computeCurrentVelocity(r4)
            android.view.VelocityTracker r0 = r11.f13618j
            int r4 = r11.f13615g
            float r10 = r0.getYVelocity(r4)
            int r0 = r11.c(r13)
            int r8 = -r0
            r9 = 0
            r5 = r11
            r6 = r12
            r7 = r13
            r5.a(r6, r7, r8, r9, r10)
        L7e:
            r11.f13614f = r2
            r11.f13615g = r3
            android.view.VelocityTracker r12 = r11.f13618j
            if (r12 == 0) goto Lae
            r12.recycle()
            r12 = 0
            r11.f13618j = r12
            goto Lae
        L8d:
            float r0 = r14.getX()
            int r0 = (int) r0
            float r3 = r14.getY()
            int r3 = (int) r3
            boolean r12 = r12.isPointInChildBounds(r13, r0, r3)
            if (r12 == 0) goto Lb6
            boolean r12 = r11.a(r13)
            if (r12 == 0) goto Lb6
            r11.f13616h = r3
            int r12 = r14.getPointerId(r2)
            r11.f13615g = r12
            r11.d()
        Lae:
            android.view.VelocityTracker r12 = r11.f13618j
            if (r12 == 0) goto Lb5
            r12.addMovement(r14)
        Lb5:
            return r1
        Lb6:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.HeaderBehavior.b(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    abstract int c();

    abstract int c(V v);

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c(CoordinatorLayout coordinatorLayout, V v, int i2) {
        return b(coordinatorLayout, (CoordinatorLayout) v, i2, c.ALL_INT, Integer.MAX_VALUE);
    }

    abstract void e(CoordinatorLayout coordinatorLayout, V v);

    public HeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13615g = -1;
        this.f13617i = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(CoordinatorLayout coordinatorLayout, V v, int i2, int i3, int i4) {
        return b(coordinatorLayout, (CoordinatorLayout) v, c() - i2, i3, i4);
    }

    final boolean a(CoordinatorLayout coordinatorLayout, V v, int i2, int i3, float f2) {
        Runnable runnable = this.f13612d;
        if (runnable != null) {
            v.removeCallbacks(runnable);
            this.f13612d = null;
        }
        if (this.f13613e == null) {
            this.f13613e = new OverScroller(v.getContext());
        }
        this.f13613e.fling(0, b(), 0, Math.round(f2), 0, 0, i2, i3);
        if (this.f13613e.computeScrollOffset()) {
            this.f13612d = new a(coordinatorLayout, v);
            ViewCompat.a(v, this.f13612d);
            return true;
        }
        e(coordinatorLayout, v);
        return false;
    }
}

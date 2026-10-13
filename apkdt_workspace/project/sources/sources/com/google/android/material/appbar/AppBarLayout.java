package com.google.android.material.appbar;

import a.i.m.d;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.e0;
import androidx.core.view.m;
import androidx.core.view.s;
import androidx.customview.view.AbsSavedState;
import com.alipay.zoloz.hardware.camera.CameraConstants;
import e.i.b.c.j;
import e.i.b.c.k;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@CoordinatorLayout.DefaultBehavior(Behavior.class)
/* loaded from: classes.dex */
public class AppBarLayout extends LinearLayout {
    static final int PENDING_ACTION_ANIMATE_ENABLED = 4;
    static final int PENDING_ACTION_COLLAPSED = 2;
    static final int PENDING_ACTION_EXPANDED = 1;
    static final int PENDING_ACTION_FORCE = 8;
    static final int PENDING_ACTION_NONE = 0;

    /* renamed from: e, reason: collision with root package name */
    private int f13580e;

    /* renamed from: f, reason: collision with root package name */
    private int f13581f;

    /* renamed from: g, reason: collision with root package name */
    private int f13582g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f13583h;

    /* renamed from: i, reason: collision with root package name */
    private int f13584i;

    /* renamed from: j, reason: collision with root package name */
    private e0 f13585j;

    /* renamed from: k, reason: collision with root package name */
    private List<b> f13586k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f13587l;
    private boolean m;
    private boolean n;
    private boolean o;
    private int[] p;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior<T> {

        /* renamed from: k, reason: collision with root package name */
        private int f13588k;

        /* renamed from: l, reason: collision with root package name */
        private int f13589l;
        private ValueAnimator m;
        private int n;
        private boolean o;
        private float p;
        private WeakReference<View> q;
        private b r;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a implements ValueAnimator.AnimatorUpdateListener {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ CoordinatorLayout f13593e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ AppBarLayout f13594f;

            a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
                this.f13593e = coordinatorLayout;
                this.f13594f = appBarLayout;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BaseBehavior.this.c(this.f13593e, (CoordinatorLayout) this.f13594f, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        }

        /* loaded from: classes.dex */
        public static abstract class b<T extends AppBarLayout> {
            public abstract boolean a(@NonNull T t);
        }

        public BaseBehavior() {
            this.n = -1;
        }

        private static boolean a(int i2, int i3) {
            return (i2 & i3) == i3;
        }

        private void d(CoordinatorLayout coordinatorLayout, T t) {
            int c2 = c();
            int b2 = b((BaseBehavior<T>) t, c2);
            if (b2 >= 0) {
                View childAt = t.getChildAt(b2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int a2 = layoutParams.a();
                if ((a2 & 17) == 17) {
                    int i2 = -childAt.getTop();
                    int i3 = -childAt.getBottom();
                    if (b2 == t.getChildCount() - 1) {
                        i3 += t.getTopInset();
                    }
                    if (a(a2, 2)) {
                        i3 += ViewCompat.o(childAt);
                    } else if (a(a2, 5)) {
                        int o = ViewCompat.o(childAt) + i3;
                        if (c2 < o) {
                            i2 = o;
                        } else {
                            i3 = o;
                        }
                    }
                    if (a(a2, 32)) {
                        i2 += ((LinearLayout.LayoutParams) layoutParams).topMargin;
                        i3 -= ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    }
                    if (c2 < (i3 + i2) / 2) {
                        i2 = i3;
                    }
                    a(coordinatorLayout, (CoordinatorLayout) t, a.i.j.a.a(i2, -t.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderBehavior
        public int c(T t) {
            return t.getTotalScrollRange();
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.n = -1;
        }

        private int c(T t, int i2) {
            int abs = Math.abs(i2);
            int childCount = t.getChildCount();
            int i3 = 0;
            int i4 = 0;
            while (true) {
                if (i4 >= childCount) {
                    break;
                }
                View childAt = t.getChildAt(i4);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Interpolator b2 = layoutParams.b();
                if (abs < childAt.getTop() || abs > childAt.getBottom()) {
                    i4++;
                } else if (b2 != null) {
                    int a2 = layoutParams.a();
                    if ((a2 & 1) != 0) {
                        i3 = 0 + childAt.getHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                        if ((a2 & 2) != 0) {
                            i3 -= ViewCompat.o(childAt);
                        }
                    }
                    if (ViewCompat.k(childAt)) {
                        i3 -= t.getTopInset();
                    }
                    if (i3 > 0) {
                        float f2 = i3;
                        return Integer.signum(i2) * (childAt.getTop() + Math.round(f2 * b2.getInterpolation((abs - childAt.getTop()) / f2)));
                    }
                }
            }
            return i2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* loaded from: classes.dex */
        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new a();

            /* renamed from: g, reason: collision with root package name */
            int f13590g;

            /* renamed from: h, reason: collision with root package name */
            float f13591h;

            /* renamed from: i, reason: collision with root package name */
            boolean f13592i;

            /* loaded from: classes.dex */
            static class a implements Parcelable.ClassLoaderCreator<SavedState> {
                a() {
                }

                @Override // android.os.Parcelable.Creator
                public SavedState[] newArray(int i2) {
                    return new SavedState[i2];
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.ClassLoaderCreator
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                public SavedState createFromParcel(Parcel parcel) {
                    return new SavedState(parcel, null);
                }
            }

            public SavedState(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f13590g = parcel.readInt();
                this.f13591h = parcel.readFloat();
                this.f13592i = parcel.readByte() != 0;
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                super.writeToParcel(parcel, i2);
                parcel.writeInt(this.f13590g);
                parcel.writeFloat(this.f13591h);
                parcel.writeByte(this.f13592i ? (byte) 1 : (byte) 0);
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }
        }

        private int b(T t, int i2) {
            int childCount = t.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = t.getChildAt(i3);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (a(layoutParams.a(), 32)) {
                    top -= ((LinearLayout.LayoutParams) layoutParams).topMargin;
                    bottom += ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                }
                int i4 = -i2;
                if (top <= i4 && bottom >= i4) {
                    return i3;
                }
            }
            return -1;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean b(CoordinatorLayout coordinatorLayout, T t, View view, View view2, int i2, int i3) {
            ValueAnimator valueAnimator;
            boolean z = (i2 & 2) != 0 && (t.isLiftOnScroll() || a(coordinatorLayout, (CoordinatorLayout) t, view));
            if (z && (valueAnimator = this.m) != null) {
                valueAnimator.cancel();
            }
            this.q = null;
            this.f13589l = i3;
            return z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderBehavior
        public int b(T t) {
            return -t.getDownNestedScrollRange();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable d(CoordinatorLayout coordinatorLayout, T t) {
            Parcelable d2 = super.d(coordinatorLayout, (CoordinatorLayout) t);
            int b2 = b();
            int childCount = t.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = t.getChildAt(i2);
                int bottom = childAt.getBottom() + b2;
                if (childAt.getTop() + b2 <= 0 && bottom >= 0) {
                    SavedState savedState = new SavedState(d2);
                    savedState.f13590g = i2;
                    savedState.f13592i = bottom == ViewCompat.o(childAt) + t.getTopInset();
                    savedState.f13591h = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return d2;
        }

        private boolean a(CoordinatorLayout coordinatorLayout, T t, View view) {
            return t.hasScrollableChildren() && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void a(CoordinatorLayout coordinatorLayout, T t, View view, int i2, int i3, int[] iArr, int i4) {
            int i5;
            int i6;
            if (i3 != 0) {
                if (i3 < 0) {
                    int i7 = -t.getTotalScrollRange();
                    i5 = i7;
                    i6 = t.getDownNestedPreScrollRange() + i7;
                } else {
                    i5 = -t.getUpNestedPreScrollRange();
                    i6 = 0;
                }
                if (i5 != i6) {
                    iArr[1] = a(coordinatorLayout, (CoordinatorLayout) t, i3, i5, i6);
                    a(i3, (int) t, view, i4);
                }
            }
        }

        private boolean c(CoordinatorLayout coordinatorLayout, T t) {
            List<View> dependents = coordinatorLayout.getDependents(t);
            int size = dependents.size();
            for (int i2 = 0; i2 < size; i2++) {
                CoordinatorLayout.Behavior d2 = ((CoordinatorLayout.d) dependents.get(i2).getLayoutParams()).d();
                if (d2 instanceof ScrollingViewBehavior) {
                    return ((ScrollingViewBehavior) d2).c() != 0;
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void a(CoordinatorLayout coordinatorLayout, T t, View view, int i2, int i3, int i4, int i5, int i6) {
            if (i5 < 0) {
                a(coordinatorLayout, (CoordinatorLayout) t, i5, -t.getDownNestedScrollRange(), 0);
                a(i5, (int) t, view, i6);
            }
            if (t.isLiftOnScroll()) {
                t.setLiftedState(view.getScrollY() > 0);
            }
        }

        private void a(int i2, T t, View view, int i3) {
            if (i3 == 1) {
                int c2 = c();
                if ((i2 >= 0 || c2 != 0) && (i2 <= 0 || c2 != (-t.getDownNestedScrollRange()))) {
                    return;
                }
                ViewCompat.i(view, 1);
            }
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        int c() {
            return b() + this.f13588k;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void a(CoordinatorLayout coordinatorLayout, T t, View view, int i2) {
            if (this.f13589l == 0 || i2 == 1) {
                d(coordinatorLayout, (CoordinatorLayout) t);
            }
            this.q = new WeakReference<>(view);
        }

        private void a(CoordinatorLayout coordinatorLayout, T t, int i2, float f2) {
            int height;
            int abs = Math.abs(c() - i2);
            float abs2 = Math.abs(f2);
            if (abs2 > 0.0f) {
                height = Math.round((abs / abs2) * 1000.0f) * 3;
            } else {
                height = (int) (((abs / t.getHeight()) + 1.0f) * 150.0f);
            }
            a(coordinatorLayout, (CoordinatorLayout) t, i2, height);
        }

        private void a(CoordinatorLayout coordinatorLayout, T t, int i2, int i3) {
            int c2 = c();
            if (c2 == i2) {
                ValueAnimator valueAnimator = this.m;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.m.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.m;
            if (valueAnimator2 == null) {
                this.m = new ValueAnimator();
                this.m.setInterpolator(e.i.b.c.l.a.f17900e);
                this.m.addUpdateListener(new a(coordinatorLayout, t));
            } else {
                valueAnimator2.cancel();
            }
            this.m.setDuration(Math.min(i3, CameraConstants.CAMERA_MAX_WIDTH));
            this.m.setIntValues(c2, i2);
            this.m.start();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean a(CoordinatorLayout coordinatorLayout, T t, int i2, int i3, int i4, int i5) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.d) t.getLayoutParams())).height == -2) {
                coordinatorLayout.onMeasureChild(t, i2, i3, View.MeasureSpec.makeMeasureSpec(0, 0), i5);
                return true;
            }
            return super.a(coordinatorLayout, (CoordinatorLayout) t, i2, i3, i4, i5);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean a(CoordinatorLayout coordinatorLayout, T t, int i2) {
            int round;
            boolean a2 = super.a(coordinatorLayout, (CoordinatorLayout) t, i2);
            int pendingAction = t.getPendingAction();
            int i3 = this.n;
            if (i3 >= 0 && (pendingAction & 8) == 0) {
                View childAt = t.getChildAt(i3);
                int i4 = -childAt.getBottom();
                if (this.o) {
                    round = ViewCompat.o(childAt) + t.getTopInset();
                } else {
                    round = Math.round(childAt.getHeight() * this.p);
                }
                c(coordinatorLayout, (CoordinatorLayout) t, i4 + round);
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i5 = -t.getUpNestedPreScrollRange();
                    if (z) {
                        a(coordinatorLayout, (CoordinatorLayout) t, i5, 0.0f);
                    } else {
                        c(coordinatorLayout, (CoordinatorLayout) t, i5);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        a(coordinatorLayout, (CoordinatorLayout) t, 0, 0.0f);
                    } else {
                        c(coordinatorLayout, (CoordinatorLayout) t, 0);
                    }
                }
            }
            t.resetPendingAction();
            this.n = -1;
            a(a.i.j.a.a(b(), -t.getTotalScrollRange(), 0));
            a(coordinatorLayout, (CoordinatorLayout) t, b(), 0, true);
            t.dispatchOffsetUpdates(b());
            return a2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderBehavior
        public boolean a(T t) {
            b bVar = this.r;
            if (bVar != null) {
                return bVar.a(t);
            }
            WeakReference<View> weakReference = this.q;
            if (weakReference == null) {
                return true;
            }
            View view = weakReference.get();
            return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void e(CoordinatorLayout coordinatorLayout, T t) {
            d(coordinatorLayout, (CoordinatorLayout) t);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int b(CoordinatorLayout coordinatorLayout, T t, int i2, int i3, int i4) {
            int c2 = c();
            int i5 = 0;
            if (i3 != 0 && c2 >= i3 && c2 <= i4) {
                int a2 = a.i.j.a.a(i2, i3, i4);
                if (c2 != a2) {
                    int c3 = t.hasChildWithInterpolator() ? c((BaseBehavior<T>) t, a2) : a2;
                    boolean a3 = a(c3);
                    i5 = c2 - a2;
                    this.f13588k = a2 - c3;
                    if (!a3 && t.hasChildWithInterpolator()) {
                        coordinatorLayout.dispatchDependentViewsChanged(t);
                    }
                    t.dispatchOffsetUpdates(b());
                    a(coordinatorLayout, (CoordinatorLayout) t, a2, a2 < c2 ? -1 : 1, false);
                }
            } else {
                this.f13588k = 0;
            }
            return i5;
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0056  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0061  */
        /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a(androidx.coordinatorlayout.widget.CoordinatorLayout r6, T r7, int r8, int r9, boolean r10) {
            /*
                r5 = this;
                android.view.View r0 = a(r7, r8)
                if (r0 == 0) goto L6e
                android.view.ViewGroup$LayoutParams r1 = r0.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$LayoutParams r1 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r1
                int r1 = r1.a()
                r2 = r1 & 1
                r3 = 1
                r4 = 0
                if (r2 == 0) goto L41
                int r2 = androidx.core.view.ViewCompat.o(r0)
                if (r9 <= 0) goto L2f
                r9 = r1 & 12
                if (r9 == 0) goto L2f
                int r8 = -r8
                int r9 = r0.getBottom()
                int r9 = r9 - r2
                int r0 = r7.getTopInset()
                int r9 = r9 - r0
                if (r8 < r9) goto L41
            L2d:
                r8 = 1
                goto L42
            L2f:
                r9 = r1 & 2
                if (r9 == 0) goto L41
                int r8 = -r8
                int r9 = r0.getBottom()
                int r9 = r9 - r2
                int r0 = r7.getTopInset()
                int r9 = r9 - r0
                if (r8 < r9) goto L41
                goto L2d
            L41:
                r8 = 0
            L42:
                boolean r9 = r7.isLiftOnScroll()
                if (r9 == 0) goto L57
                android.view.View r9 = r5.a(r6)
                if (r9 == 0) goto L57
                int r8 = r9.getScrollY()
                if (r8 <= 0) goto L56
                r8 = 1
                goto L57
            L56:
                r8 = 0
            L57:
                boolean r8 = r7.setLiftedState(r8)
                int r9 = android.os.Build.VERSION.SDK_INT
                r0 = 11
                if (r9 < r0) goto L6e
                if (r10 != 0) goto L6b
                if (r8 == 0) goto L6e
                boolean r6 = r5.c(r6, r7)
                if (r6 == 0) goto L6e
            L6b:
                r7.jumpDrawablesToCurrentState()
            L6e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.a(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }

        private static View a(AppBarLayout appBarLayout, int i2) {
            int abs = Math.abs(i2);
            int childCount = appBarLayout.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = appBarLayout.getChildAt(i3);
                if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        @Nullable
        private View a(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if (childAt instanceof m) {
                    return childAt;
                }
            }
            return null;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void a(CoordinatorLayout coordinatorLayout, T t, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                SavedState savedState = (SavedState) parcelable;
                super.a(coordinatorLayout, (CoordinatorLayout) t, savedState.a());
                this.n = savedState.f13590g;
                this.p = savedState.f13591h;
                this.o = savedState.f13592i;
                return;
            }
            super.a(coordinatorLayout, (CoordinatorLayout) t, parcelable);
            this.n = -1;
        }
    }

    /* loaded from: classes.dex */
    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* loaded from: classes.dex */
    public static class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        public ScrollingViewBehavior() {
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        /* bridge */ /* synthetic */ View a(List list) {
            return a((List<View>) list);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            a(view, view2);
            b(view, view2);
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        public int c(View view) {
            if (view instanceof AppBarLayout) {
                return ((AppBarLayout) view).getTotalScrollRange();
            }
            return super.c(view);
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.ScrollingViewBehavior_Layout);
            b(obtainStyledAttributes.getDimensionPixelSize(k.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            obtainStyledAttributes.recycle();
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        float b(View view) {
            int i2;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int a2 = a(appBarLayout);
                if ((downNestedPreScrollRange == 0 || totalScrollRange + a2 > downNestedPreScrollRange) && (i2 = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (a2 / i2) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean a(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout a2 = a(coordinatorLayout.getDependencies(view));
            if (a2 != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f13622d;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    a2.setExpanded(false, !z);
                    return true;
                }
            }
            return false;
        }

        private void b(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.isLiftOnScroll()) {
                    appBarLayout.setLiftedState(view.getScrollY() > 0);
                }
            }
        }

        private void a(View view, View view2) {
            CoordinatorLayout.Behavior d2 = ((CoordinatorLayout.d) view2.getLayoutParams()).d();
            if (d2 instanceof BaseBehavior) {
                ViewCompat.e(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) d2).f13588k) + d()) - a(view2));
            }
        }

        private static int a(AppBarLayout appBarLayout) {
            CoordinatorLayout.Behavior d2 = ((CoordinatorLayout.d) appBarLayout.getLayoutParams()).d();
            if (d2 instanceof BaseBehavior) {
                return ((BaseBehavior) d2).c();
            }
            return 0;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        AppBarLayout a(List<View> list) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = list.get(i2);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    class a implements s {
        a() {
        }

        @Override // androidx.core.view.s
        public e0 a(View view, e0 e0Var) {
            return AppBarLayout.this.onWindowInsetChanged(e0Var);
        }
    }

    /* loaded from: classes.dex */
    public interface b<T extends AppBarLayout> {
        void a(T t, int i2);
    }

    /* loaded from: classes.dex */
    public interface c extends b<AppBarLayout> {
    }

    public AppBarLayout(Context context) {
        this(context, null);
    }

    private boolean a() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (((LayoutParams) getChildAt(i2).getLayoutParams()).c()) {
                return true;
            }
        }
        return false;
    }

    private void b() {
        this.f13580e = -1;
        this.f13581f = -1;
        this.f13582g = -1;
    }

    public void addOnOffsetChangedListener(b bVar) {
        if (this.f13586k == null) {
            this.f13586k = new ArrayList();
        }
        if (bVar == null || this.f13586k.contains(bVar)) {
            return;
        }
        this.f13586k.add(bVar);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    void dispatchOffsetUpdates(int i2) {
        List<b> list = this.f13586k;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                b bVar = this.f13586k.get(i3);
                if (bVar != null) {
                    bVar.a(this, i2);
                }
            }
        }
    }

    int getDownNestedPreScrollRange() {
        int topInset;
        int i2 = this.f13581f;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i4 = layoutParams.f13596a;
            if ((i4 & 5) != 5) {
                if (i3 > 0) {
                    break;
                }
            } else {
                int i5 = i3 + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                if ((i4 & 8) != 0) {
                    i3 = i5 + ViewCompat.o(childAt);
                } else {
                    if ((i4 & 2) != 0) {
                        topInset = ViewCompat.o(childAt);
                    } else {
                        topInset = getTopInset();
                    }
                    i3 = i5 + (measuredHeight - topInset);
                }
            }
        }
        int max = Math.max(0, i3);
        this.f13581f = max;
        return max;
    }

    int getDownNestedScrollRange() {
        int i2 = this.f13582g;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
            int i5 = layoutParams.f13596a;
            if ((i5 & 1) == 0) {
                break;
            }
            i4 += measuredHeight;
            if ((i5 & 2) != 0) {
                i4 -= ViewCompat.o(childAt) + getTopInset();
                break;
            }
            i3++;
        }
        int max = Math.max(0, i4);
        this.f13582g = max;
        return max;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int o = ViewCompat.o(this);
        if (o == 0) {
            int childCount = getChildCount();
            o = childCount >= 1 ? ViewCompat.o(getChildAt(childCount - 1)) : 0;
            if (o == 0) {
                return getHeight() / 3;
            }
        }
        return (o * 2) + topInset;
    }

    int getPendingAction() {
        return this.f13584i;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    @VisibleForTesting
    final int getTopInset() {
        e0 e0Var = this.f13585j;
        if (e0Var != null) {
            return e0Var.g();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i2 = this.f13580e;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = layoutParams.f13596a;
            if ((i5 & 1) == 0) {
                break;
            }
            i4 += measuredHeight + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
            if ((i5 & 2) != 0) {
                i4 -= ViewCompat.o(childAt);
                break;
            }
            i3++;
        }
        int max = Math.max(0, i4 - getTopInset());
        this.f13580e = max;
        return max;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    boolean hasChildWithInterpolator() {
        return this.f13583h;
    }

    boolean hasScrollableChildren() {
        return getTotalScrollRange() != 0;
    }

    public boolean isLiftOnScroll() {
        return this.o;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i2) {
        if (this.p == null) {
            this.p = new int[4];
        }
        int[] iArr = this.p;
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + iArr.length);
        iArr[0] = this.m ? e.i.b.c.b.state_liftable : -e.i.b.c.b.state_liftable;
        iArr[1] = (this.m && this.n) ? e.i.b.c.b.state_lifted : -e.i.b.c.b.state_lifted;
        iArr[2] = this.m ? e.i.b.c.b.state_collapsible : -e.i.b.c.b.state_collapsible;
        iArr[3] = (this.m && this.n) ? e.i.b.c.b.state_collapsed : -e.i.b.c.b.state_collapsed;
        return LinearLayout.mergeDrawableStates(onCreateDrawableState, iArr);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        b();
        this.f13583h = false;
        int childCount = getChildCount();
        int i6 = 0;
        while (true) {
            if (i6 >= childCount) {
                break;
            }
            if (((LayoutParams) getChildAt(i6).getLayoutParams()).b() != null) {
                this.f13583h = true;
                break;
            }
            i6++;
        }
        if (this.f13587l) {
            return;
        }
        a(this.o || a());
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        b();
    }

    e0 onWindowInsetChanged(e0 e0Var) {
        e0 e0Var2 = ViewCompat.k(this) ? e0Var : null;
        if (!d.a(this.f13585j, e0Var2)) {
            this.f13585j = e0Var2;
            b();
        }
        return e0Var;
    }

    public void removeOnOffsetChangedListener(b bVar) {
        List<b> list = this.f13586k;
        if (list == null || bVar == null) {
            return;
        }
        list.remove(bVar);
    }

    void resetPendingAction() {
        this.f13584i = 0;
    }

    public void setExpanded(boolean z) {
        setExpanded(z, ViewCompat.D(this));
    }

    public void setLiftOnScroll(boolean z) {
        this.o = z;
    }

    public boolean setLiftable(boolean z) {
        this.f13587l = true;
        return a(z);
    }

    public boolean setLifted(boolean z) {
        return setLiftedState(z);
    }

    boolean setLiftedState(boolean z) {
        if (this.n == z) {
            return false;
        }
        this.n = z;
        refreshDrawableState();
        return true;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i2) {
        if (i2 == 1) {
            super.setOrientation(i2);
            return;
        }
        throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
    }

    @Deprecated
    public void setTargetElevation(float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            com.google.android.material.appbar.b.a(this, f2);
        }
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13580e = -1;
        this.f13581f = -1;
        this.f13582g = -1;
        this.f13584i = 0;
        setOrientation(1);
        if (Build.VERSION.SDK_INT >= 21) {
            com.google.android.material.appbar.b.a(this);
            com.google.android.material.appbar.b.a(this, attributeSet, 0, j.Widget_Design_AppBarLayout);
        }
        TypedArray c2 = com.google.android.material.internal.k.c(context, attributeSet, k.AppBarLayout, 0, j.Widget_Design_AppBarLayout, new int[0]);
        ViewCompat.a(this, c2.getDrawable(k.AppBarLayout_android_background));
        if (c2.hasValue(k.AppBarLayout_expanded)) {
            a(c2.getBoolean(k.AppBarLayout_expanded, false), false, false);
        }
        if (Build.VERSION.SDK_INT >= 21 && c2.hasValue(k.AppBarLayout_elevation)) {
            com.google.android.material.appbar.b.a(this, c2.getDimensionPixelSize(k.AppBarLayout_elevation, 0));
        }
        if (Build.VERSION.SDK_INT >= 26) {
            if (c2.hasValue(k.AppBarLayout_android_keyboardNavigationCluster)) {
                setKeyboardNavigationCluster(c2.getBoolean(k.AppBarLayout_android_keyboardNavigationCluster, false));
            }
            if (c2.hasValue(k.AppBarLayout_android_touchscreenBlocksFocus)) {
                setTouchscreenBlocksFocus(c2.getBoolean(k.AppBarLayout_android_touchscreenBlocksFocus, false));
            }
        }
        this.o = c2.getBoolean(k.AppBarLayout_liftOnScroll, false);
        c2.recycle();
        ViewCompat.a(this, new a());
    }

    public void setExpanded(boolean z, boolean z2) {
        a(z, z2, true);
    }

    private void a(boolean z, boolean z2, boolean z3) {
        this.f13584i = (z ? 1 : 2) | (z2 ? 4 : 0) | (z3 ? 8 : 0);
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    public void removeOnOffsetChangedListener(c cVar) {
        removeOnOffsetChangedListener((b) cVar);
    }

    private boolean a(boolean z) {
        if (this.m == z) {
            return false;
        }
        this.m = z;
        refreshDrawableState();
        return true;
    }

    public void addOnOffsetChangedListener(c cVar) {
        addOnOffsetChangedListener((b) cVar);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (Build.VERSION.SDK_INT >= 19 && (layoutParams instanceof LinearLayout.LayoutParams)) {
            return new LayoutParams((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends LinearLayout.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        int f13596a;

        /* renamed from: b, reason: collision with root package name */
        Interpolator f13597b;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
        /* loaded from: classes.dex */
        public @interface ScrollFlags {
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f13596a = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.AppBarLayout_Layout);
            this.f13596a = obtainStyledAttributes.getInt(k.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (obtainStyledAttributes.hasValue(k.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.f13597b = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(k.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public int a() {
            return this.f13596a;
        }

        public Interpolator b() {
            return this.f13597b;
        }

        boolean c() {
            int i2 = this.f13596a;
            return (i2 & 1) == 1 && (i2 & 10) != 0;
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.f13596a = 1;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f13596a = 1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f13596a = 1;
        }

        @RequiresApi(19)
        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f13596a = 1;
        }
    }
}

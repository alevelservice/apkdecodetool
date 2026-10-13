package com.google.android.material.bottomsheet;

import a.k.a.c;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import e.i.b.c.d;
import e.i.b.c.k;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a, reason: collision with root package name */
    private boolean f13704a;

    /* renamed from: b, reason: collision with root package name */
    private float f13705b;

    /* renamed from: c, reason: collision with root package name */
    private int f13706c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f13707d;

    /* renamed from: e, reason: collision with root package name */
    private int f13708e;

    /* renamed from: f, reason: collision with root package name */
    private int f13709f;

    /* renamed from: g, reason: collision with root package name */
    int f13710g;

    /* renamed from: h, reason: collision with root package name */
    int f13711h;

    /* renamed from: i, reason: collision with root package name */
    int f13712i;

    /* renamed from: j, reason: collision with root package name */
    boolean f13713j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f13714k;

    /* renamed from: l, reason: collision with root package name */
    int f13715l;
    a.k.a.c m;
    private boolean n;
    private int o;
    private boolean p;
    int q;
    WeakReference<V> r;
    WeakReference<View> s;
    private b t;
    private VelocityTracker u;
    int v;
    private int w;
    boolean x;
    private Map<View, Integer> y;
    private final c.AbstractC0012c z;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface State {
    }

    /* loaded from: classes.dex */
    class a extends c.AbstractC0012c {
        a() {
        }

        @Override // a.k.a.c.AbstractC0012c
        public void a(@NonNull View view, int i2, int i3, int i4, int i5) {
            BottomSheetBehavior.this.a(i3);
        }

        @Override // a.k.a.c.AbstractC0012c
        public boolean b(@NonNull View view, int i2) {
            WeakReference<V> weakReference;
            View view2;
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i3 = bottomSheetBehavior.f13715l;
            if (i3 == 1 || bottomSheetBehavior.x) {
                return false;
            }
            return ((i3 == 3 && bottomSheetBehavior.v == i2 && (view2 = bottomSheetBehavior.s.get()) != null && view2.canScrollVertically(-1)) || (weakReference = BottomSheetBehavior.this.r) == null || weakReference.get() != view) ? false : true;
        }

        @Override // a.k.a.c.AbstractC0012c
        public void c(int i2) {
            if (i2 == 1) {
                BottomSheetBehavior.this.c(1);
            }
        }

        @Override // a.k.a.c.AbstractC0012c
        public void a(@NonNull View view, float f2, float f3) {
            int i2;
            int i3;
            int i4;
            int i5 = 4;
            if (f3 < 0.0f) {
                if (BottomSheetBehavior.this.f13704a) {
                    i4 = BottomSheetBehavior.this.f13710g;
                    i5 = 3;
                } else {
                    int top = view.getTop();
                    int i6 = BottomSheetBehavior.this.f13711h;
                    if (top > i6) {
                        i4 = i6;
                        i5 = 6;
                    }
                    i4 = 0;
                    i5 = 3;
                }
            } else {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.f13713j && bottomSheetBehavior.a(view, f3) && (view.getTop() > BottomSheetBehavior.this.f13712i || Math.abs(f2) < Math.abs(f3))) {
                    i4 = BottomSheetBehavior.this.q;
                    i5 = 5;
                } else if (f3 != 0.0f && Math.abs(f2) <= Math.abs(f3)) {
                    i4 = BottomSheetBehavior.this.f13712i;
                } else {
                    int top2 = view.getTop();
                    if (BottomSheetBehavior.this.f13704a) {
                        if (Math.abs(top2 - BottomSheetBehavior.this.f13710g) < Math.abs(top2 - BottomSheetBehavior.this.f13712i)) {
                            i4 = BottomSheetBehavior.this.f13710g;
                            i5 = 3;
                        } else {
                            i2 = BottomSheetBehavior.this.f13712i;
                        }
                    } else {
                        BottomSheetBehavior bottomSheetBehavior2 = BottomSheetBehavior.this;
                        int i7 = bottomSheetBehavior2.f13711h;
                        if (top2 < i7) {
                            if (top2 >= Math.abs(top2 - bottomSheetBehavior2.f13712i)) {
                                i3 = BottomSheetBehavior.this.f13711h;
                            }
                            i4 = 0;
                            i5 = 3;
                        } else if (Math.abs(top2 - i7) < Math.abs(top2 - BottomSheetBehavior.this.f13712i)) {
                            i3 = BottomSheetBehavior.this.f13711h;
                        } else {
                            i2 = BottomSheetBehavior.this.f13712i;
                        }
                        i4 = i3;
                        i5 = 6;
                    }
                    i4 = i2;
                }
            }
            if (BottomSheetBehavior.this.m.d(view.getLeft(), i4)) {
                BottomSheetBehavior.this.c(2);
                ViewCompat.a(view, new c(view, i5));
            } else {
                BottomSheetBehavior.this.c(i5);
            }
        }

        @Override // a.k.a.c.AbstractC0012c
        public int b(@NonNull View view, int i2, int i3) {
            int c2 = BottomSheetBehavior.this.c();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return a.i.j.a.a(i2, c2, bottomSheetBehavior.f13713j ? bottomSheetBehavior.q : bottomSheetBehavior.f13712i);
        }

        @Override // a.k.a.c.AbstractC0012c
        public int b(@NonNull View view) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            if (bottomSheetBehavior.f13713j) {
                return bottomSheetBehavior.q;
            }
            return bottomSheetBehavior.f13712i;
        }

        @Override // a.k.a.c.AbstractC0012c
        public int a(@NonNull View view, int i2, int i3) {
            return view.getLeft();
        }
    }

    /* loaded from: classes.dex */
    public static abstract class b {
        public abstract void a(@NonNull View view, float f2);

        public abstract void a(@NonNull View view, int i2);
    }

    /* loaded from: classes.dex */
    private class c implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        private final View f13718e;

        /* renamed from: f, reason: collision with root package name */
        private final int f13719f;

        c(View view, int i2) {
            this.f13718e = view;
            this.f13719f = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.k.a.c cVar = BottomSheetBehavior.this.m;
            if (cVar != null && cVar.a(true)) {
                ViewCompat.a(this.f13718e, this);
            } else {
                BottomSheetBehavior.this.c(this.f13719f);
            }
        }
    }

    public BottomSheetBehavior() {
        this.f13704a = true;
        this.f13715l = 4;
        this.z = new a();
    }

    private void e() {
        this.v = -1;
        VelocityTracker velocityTracker = this.u;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.u = null;
        }
    }

    public void c(boolean z) {
        this.f13714k = z;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public Parcelable d(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState(super.d(coordinatorLayout, v), this.f13715l);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: g, reason: collision with root package name */
        final int f13716g;

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
                return new SavedState(parcel, (ClassLoader) null);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f13716g = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f13716g);
        }

        public SavedState(Parcelable parcelable, int i2) {
            super(parcelable);
            this.f13716g = i2;
        }
    }

    private float d() {
        VelocityTracker velocityTracker = this.u;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.f13705b);
        return this.u.getYVelocity(this.v);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.a(coordinatorLayout, (CoordinatorLayout) v, savedState.a());
        int i2 = savedState.f13716g;
        if (i2 != 1 && i2 != 2) {
            this.f13715l = i2;
        } else {
            this.f13715l = 4;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f13715l == 1 && actionMasked == 0) {
            return true;
        }
        a.k.a.c cVar = this.m;
        if (cVar != null) {
            cVar.a(motionEvent);
        }
        if (actionMasked == 0) {
            e();
        }
        if (this.u == null) {
            this.u = VelocityTracker.obtain();
        }
        this.u.addMovement(motionEvent);
        if (actionMasked == 2 && !this.n && Math.abs(this.w - motionEvent.getY()) > this.m.e()) {
            this.m.a(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.n;
    }

    void c(int i2) {
        b bVar;
        if (this.f13715l == i2) {
            return;
        }
        this.f13715l = i2;
        if (i2 == 6 || i2 == 3) {
            d(true);
        } else if (i2 == 5 || i2 == 4) {
            d(false);
        }
        V v = this.r.get();
        if (v == null || (bVar = this.t) == null) {
            return;
        }
        bVar.a((View) v, i2);
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i2;
        this.f13704a = true;
        this.f13715l = 4;
        this.z = new a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.BottomSheetBehavior_Layout);
        TypedValue peekValue = obtainStyledAttributes.peekValue(k.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (peekValue != null && (i2 = peekValue.data) == -1) {
            b(i2);
        } else {
            b(obtainStyledAttributes.getDimensionPixelSize(k.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        }
        b(obtainStyledAttributes.getBoolean(k.BottomSheetBehavior_Layout_behavior_hideable, false));
        a(obtainStyledAttributes.getBoolean(k.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        c(obtainStyledAttributes.getBoolean(k.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        obtainStyledAttributes.recycle();
        this.f13705b = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    private void d(boolean z) {
        WeakReference<V> weakReference = this.r;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z) {
                if (this.y != null) {
                    return;
                } else {
                    this.y = new HashMap(childCount);
                }
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if (childAt != this.r.get()) {
                    if (!z) {
                        Map<View, Integer> map = this.y;
                        if (map != null && map.containsKey(childAt)) {
                            ViewCompat.g(childAt, this.y.get(childAt).intValue());
                        }
                    } else {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.y.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        ViewCompat.g(childAt, 4);
                    }
                }
            }
            if (z) {
                return;
            }
            this.y = null;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, V v, int i2) {
        if (ViewCompat.k(coordinatorLayout) && !ViewCompat.k(v)) {
            v.setFitsSystemWindows(true);
        }
        int top = v.getTop();
        coordinatorLayout.onLayoutChild(v, i2);
        this.q = coordinatorLayout.getHeight();
        if (this.f13707d) {
            if (this.f13708e == 0) {
                this.f13708e = coordinatorLayout.getResources().getDimensionPixelSize(d.design_bottom_sheet_peek_height_min);
            }
            this.f13709f = Math.max(this.f13708e, this.q - ((coordinatorLayout.getWidth() * 9) / 16));
        } else {
            this.f13709f = this.f13706c;
        }
        this.f13710g = Math.max(0, this.q - v.getHeight());
        this.f13711h = this.q / 2;
        b();
        int i3 = this.f13715l;
        if (i3 == 3) {
            ViewCompat.e(v, c());
        } else if (i3 == 6) {
            ViewCompat.e(v, this.f13711h);
        } else if (this.f13713j && i3 == 5) {
            ViewCompat.e(v, this.q);
        } else {
            int i4 = this.f13715l;
            if (i4 == 4) {
                ViewCompat.e(v, this.f13712i);
            } else if (i4 == 1 || i4 == 2) {
                ViewCompat.e(v, top - v.getTop());
            }
        }
        if (this.m == null) {
            this.m = a.k.a.c.a(coordinatorLayout, this.z);
        }
        this.r = new WeakReference<>(v);
        this.s = new WeakReference<>(a(v));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c() {
        if (this.f13704a) {
            return this.f13710g;
        }
        return 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i2, int i3) {
        this.o = 0;
        this.p = false;
        return (i2 & 2) != 0;
    }

    public final void b(int i2) {
        WeakReference<V> weakReference;
        V v;
        boolean z = true;
        if (i2 == -1) {
            if (!this.f13707d) {
                this.f13707d = true;
            }
            z = false;
        } else {
            if (this.f13707d || this.f13706c != i2) {
                this.f13707d = false;
                this.f13706c = Math.max(0, i2);
                this.f13712i = this.q - i2;
            }
            z = false;
        }
        if (!z || this.f13715l != 4 || (weakReference = this.r) == null || (v = weakReference.get()) == null) {
            return;
        }
        v.requestLayout();
    }

    public void b(boolean z) {
        this.f13713j = z;
    }

    private void b() {
        if (this.f13704a) {
            this.f13712i = Math.max(this.q - this.f13709f, this.f13710g);
        } else {
            this.f13712i = this.q - this.f13709f;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        a.k.a.c cVar;
        if (!v.isShown()) {
            this.n = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            e();
        }
        if (this.u == null) {
            this.u = VelocityTracker.obtain();
        }
        this.u.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.w = (int) motionEvent.getY();
            WeakReference<View> weakReference = this.s;
            View view = weakReference != null ? weakReference.get() : null;
            if (view != null && coordinatorLayout.isPointInChildBounds(view, x, this.w)) {
                this.v = motionEvent.getPointerId(motionEvent.getActionIndex());
                this.x = true;
            }
            this.n = this.v == -1 && !coordinatorLayout.isPointInChildBounds(v, x, this.w);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.x = false;
            this.v = -1;
            if (this.n) {
                this.n = false;
                return false;
            }
        }
        if (!this.n && (cVar = this.m) != null && cVar.b(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.s;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.n || this.f13715l == 1 || coordinatorLayout.isPointInChildBounds(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.m == null || Math.abs(((float) this.w) - motionEvent.getY()) <= ((float) this.m.e())) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i2, int i3, @NonNull int[] iArr, int i4) {
        if (i4 != 1 && view == this.s.get()) {
            int top = v.getTop();
            int i5 = top - i3;
            if (i3 > 0) {
                if (i5 < c()) {
                    iArr[1] = top - c();
                    ViewCompat.e(v, -iArr[1]);
                    c(3);
                } else {
                    iArr[1] = i3;
                    ViewCompat.e(v, -i3);
                    c(1);
                }
            } else if (i3 < 0 && !view.canScrollVertically(-1)) {
                int i6 = this.f13712i;
                if (i5 > i6 && !this.f13713j) {
                    iArr[1] = top - i6;
                    ViewCompat.e(v, -iArr[1]);
                    c(4);
                } else {
                    iArr[1] = i3;
                    ViewCompat.e(v, -i3);
                    c(1);
                }
            }
            a(v.getTop());
            this.o = i3;
            this.p = true;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i2) {
        int i3;
        int i4 = 3;
        if (v.getTop() == c()) {
            c(3);
            return;
        }
        if (view == this.s.get() && this.p) {
            if (this.o > 0) {
                i3 = c();
            } else if (this.f13713j && a(v, d())) {
                i3 = this.q;
                i4 = 5;
            } else {
                if (this.o == 0) {
                    int top = v.getTop();
                    if (this.f13704a) {
                        if (Math.abs(top - this.f13710g) < Math.abs(top - this.f13712i)) {
                            i3 = this.f13710g;
                        } else {
                            i3 = this.f13712i;
                        }
                    } else {
                        int i5 = this.f13711h;
                        if (top < i5) {
                            if (top < Math.abs(top - this.f13712i)) {
                                i3 = 0;
                            } else {
                                i3 = this.f13711h;
                            }
                        } else if (Math.abs(top - i5) < Math.abs(top - this.f13712i)) {
                            i3 = this.f13711h;
                        } else {
                            i3 = this.f13712i;
                        }
                        i4 = 6;
                    }
                } else {
                    i3 = this.f13712i;
                }
                i4 = 4;
            }
            if (this.m.b(v, v.getLeft(), i3)) {
                c(2);
                ViewCompat.a(v, new c(v, i4));
            } else {
                c(i4);
            }
            this.p = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, float f2, float f3) {
        return view == this.s.get() && (this.f13715l != 3 || super.a(coordinatorLayout, (CoordinatorLayout) v, view, f2, f3));
    }

    public void a(boolean z) {
        if (this.f13704a == z) {
            return;
        }
        this.f13704a = z;
        if (this.r != null) {
            b();
        }
        c((this.f13704a && this.f13715l == 6) ? 3 : this.f13715l);
    }

    boolean a(View view, float f2) {
        if (this.f13714k) {
            return true;
        }
        return view.getTop() >= this.f13712i && Math.abs((((float) view.getTop()) + (f2 * 0.1f)) - ((float) this.f13712i)) / ((float) this.f13706c) > 0.5f;
    }

    @VisibleForTesting
    View a(View view) {
        if (ViewCompat.E(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View a2 = a(viewGroup.getChildAt(i2));
            if (a2 != null) {
                return a2;
            }
        }
        return null;
    }

    void a(int i2) {
        b bVar;
        V v = this.r.get();
        if (v == null || (bVar = this.t) == null) {
            return;
        }
        if (i2 > this.f13712i) {
            bVar.a(v, (r2 - i2) / (this.q - r2));
        } else {
            bVar.a(v, (r2 - i2) / (r2 - c()));
        }
    }
}

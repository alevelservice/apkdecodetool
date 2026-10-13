package androidx.coordinatorlayout.widget;

import a.i.m.h;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.core.view.e0;
import androidx.core.view.o;
import androidx.core.view.r;
import androidx.core.view.s;
import androidx.customview.view.AbsSavedState;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements o {
    static final Class<?>[] CONSTRUCTOR_PARAMS;
    static final int EVENT_NESTED_SCROLL = 1;
    static final int EVENT_PRE_DRAW = 0;
    static final int EVENT_VIEW_REMOVED = 2;
    static final String TAG = "CoordinatorLayout";
    static final Comparator<View> TOP_SORTED_CHILDREN_COMPARATOR;
    static final String WIDGET_PACKAGE_NAME;
    static final ThreadLocal<Map<String, Constructor<Behavior>>> sConstructors;
    private static final a.i.m.f<Rect> w;

    /* renamed from: e, reason: collision with root package name */
    private final List<View> f1610e;

    /* renamed from: f, reason: collision with root package name */
    private final androidx.coordinatorlayout.widget.a<View> f1611f;

    /* renamed from: g, reason: collision with root package name */
    private final List<View> f1612g;

    /* renamed from: h, reason: collision with root package name */
    private final List<View> f1613h;

    /* renamed from: i, reason: collision with root package name */
    private final int[] f1614i;

    /* renamed from: j, reason: collision with root package name */
    private Paint f1615j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f1616k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f1617l;
    private int[] m;
    ViewGroup.OnHierarchyChangeListener mOnHierarchyChangeListener;
    private View n;
    private View o;
    private e p;
    private boolean q;
    private e0 r;
    private boolean s;
    private Drawable t;
    private s u;
    private final r v;

    /* loaded from: classes.dex */
    public static abstract class Behavior<V extends View> {
        public Behavior() {
        }

        @NonNull
        public e0 a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull e0 e0Var) {
            return e0Var;
        }

        public void a() {
        }

        public void a(@NonNull d dVar) {
        }

        public void a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Parcelable parcelable) {
        }

        @Deprecated
        public void a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i2, int i3, int i4, int i5) {
        }

        @Deprecated
        public void a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i2, int i3, @NonNull int[] iArr) {
        }

        @Deprecated
        public void a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i2) {
        }

        public boolean a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
            return c(coordinatorLayout, v) > 0.0f;
        }

        public boolean a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i2) {
            return false;
        }

        public boolean a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i2, int i3, int i4, int i5) {
            return false;
        }

        public boolean a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Rect rect) {
            return false;
        }

        public boolean a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Rect rect, boolean z) {
            return false;
        }

        public boolean a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
            return false;
        }

        public boolean a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
            return false;
        }

        public boolean a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, float f2, float f3) {
            return false;
        }

        public boolean a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, float f2, float f3, boolean z) {
            return false;
        }

        @ColorInt
        public int b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
            return -16777216;
        }

        public boolean b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
            return false;
        }

        public boolean b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
            return false;
        }

        @Deprecated
        public boolean b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i2) {
            return false;
        }

        public boolean b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i2, int i3) {
            if (i3 == 0) {
                return b(coordinatorLayout, v, view, view2, i2);
            }
            return false;
        }

        @FloatRange(from = 0.0d, to = 1.0d)
        public float c(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
            return 0.0f;
        }

        public void c(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
        }

        @Nullable
        public Parcelable d(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        public void d(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
        }

        public void a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i2, int i3) {
            if (i3 == 0) {
                a(coordinatorLayout, (CoordinatorLayout) v, view, view2, i2);
            }
        }

        public void a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i2) {
            if (i2 == 0) {
                d(coordinatorLayout, v, view);
            }
        }

        public void a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i2, int i3, int i4, int i5, int i6) {
            if (i6 == 0) {
                a(coordinatorLayout, (CoordinatorLayout) v, view, i2, i3, i4, i5);
            }
        }

        public void a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i2, int i3, @NonNull int[] iArr, int i4) {
            if (i4 == 0) {
                a(coordinatorLayout, (CoordinatorLayout) v, view, i2, i3, iArr);
            }
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* loaded from: classes.dex */
    public @interface DefaultBehavior {
        Class<? extends Behavior> value();
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface DispatchChangeEvent {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements s {
        a() {
        }

        @Override // androidx.core.view.s
        public e0 a(View view, e0 e0Var) {
            return CoordinatorLayout.this.setWindowInsets(e0Var);
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        @NonNull
        Behavior getBehavior();
    }

    /* loaded from: classes.dex */
    private class c implements ViewGroup.OnHierarchyChangeListener {
        c() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.mOnHierarchyChangeListener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.onChildViewsChanged(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.mOnHierarchyChangeListener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements ViewTreeObserver.OnPreDrawListener {
        e() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.onChildViewsChanged(0);
            return true;
        }
    }

    /* loaded from: classes.dex */
    static class f implements Comparator<View> {
        f() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            float w = ViewCompat.w(view);
            float w2 = ViewCompat.w(view2);
            if (w > w2) {
                return -1;
            }
            return w < w2 ? 1 : 0;
        }
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        WIDGET_PACKAGE_NAME = r0 != null ? r0.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            TOP_SORTED_CHILDREN_COMPARATOR = new f();
        } else {
            TOP_SORTED_CHILDREN_COMPARATOR = null;
        }
        CONSTRUCTOR_PARAMS = new Class[]{Context.class, AttributeSet.class};
        sConstructors = new ThreadLocal<>();
        w = new h(12);
    }

    public CoordinatorLayout(@NonNull Context context) {
        this(context, null);
    }

    private static int a(int i2, int i3, int i4) {
        return i2 < i3 ? i3 : i2 > i4 ? i4 : i2;
    }

    @NonNull
    private static Rect a() {
        Rect a2 = w.a();
        return a2 == null ? new Rect() : a2;
    }

    private static int b(int i2) {
        if (i2 == 0) {
            return 17;
        }
        return i2;
    }

    private void b() {
        this.f1610e.clear();
        this.f1611f.a();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            d resolvedLayoutParams = getResolvedLayoutParams(childAt);
            resolvedLayoutParams.a(this, childAt);
            this.f1611f.a((androidx.coordinatorlayout.widget.a<View>) childAt);
            for (int i3 = 0; i3 < childCount; i3++) {
                if (i3 != i2) {
                    View childAt2 = getChildAt(i3);
                    if (resolvedLayoutParams.a(this, childAt, childAt2)) {
                        if (!this.f1611f.b(childAt2)) {
                            this.f1611f.a((androidx.coordinatorlayout.widget.a<View>) childAt2);
                        }
                        this.f1611f.a(childAt2, childAt);
                    }
                }
            }
        }
        this.f1610e.addAll(this.f1611f.b());
        Collections.reverse(this.f1610e);
    }

    private static int c(int i2) {
        if ((i2 & 7) == 0) {
            i2 |= 8388611;
        }
        return (i2 & 112) == 0 ? i2 | 48 : i2;
    }

    private void c(View view, int i2) {
        d dVar = (d) view.getLayoutParams();
        int i3 = dVar.f1630j;
        if (i3 != i2) {
            ViewCompat.e(view, i2 - i3);
            dVar.f1630j = i2;
        }
    }

    private static int d(int i2) {
        if (i2 == 0) {
            return 8388661;
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static Behavior parseBehavior(Context context, AttributeSet attributeSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0 && !TextUtils.isEmpty(WIDGET_PACKAGE_NAME)) {
            str = WIDGET_PACKAGE_NAME + '.' + str;
        }
        try {
            Map map = sConstructors.get();
            if (map == null) {
                map = new HashMap();
                sConstructors.set(map);
            }
            Constructor<?> constructor = (Constructor) map.get(str);
            if (constructor == null) {
                constructor = context.getClassLoader().loadClass(str).getConstructor(CONSTRUCTOR_PARAMS);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return (Behavior) constructor.newInstance(context, attributeSet);
        } catch (Exception e2) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e2);
        }
    }

    void addPreDrawListener() {
        if (this.f1617l) {
            if (this.p == null) {
                this.p = new e();
            }
            getViewTreeObserver().addOnPreDrawListener(this.p);
        }
        this.q = true;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof d) && super.checkLayoutParams(layoutParams);
    }

    public void dispatchDependentViewsChanged(@NonNull View view) {
        List c2 = this.f1611f.c(view);
        if (c2 == null || c2.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < c2.size(); i2++) {
            View view2 = (View) c2.get(i2);
            Behavior d2 = ((d) view2.getLayoutParams()).d();
            if (d2 != null) {
                d2.b(this, (CoordinatorLayout) view2, view);
            }
        }
    }

    public boolean doViewsOverlap(@NonNull View view, @NonNull View view2) {
        boolean z = false;
        if (view.getVisibility() != 0 || view2.getVisibility() != 0) {
            return false;
        }
        Rect a2 = a();
        getChildRect(view, view.getParent() != this, a2);
        Rect a3 = a();
        getChildRect(view2, view2.getParent() != this, a3);
        try {
            if (a2.left <= a3.right && a2.top <= a3.bottom && a2.right >= a3.left) {
                if (a2.bottom >= a3.top) {
                    z = true;
                }
            }
            return z;
        } finally {
            a(a2);
            a(a3);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j2) {
        d dVar = (d) view.getLayoutParams();
        Behavior behavior = dVar.f1621a;
        if (behavior != null) {
            float c2 = behavior.c(this, view);
            if (c2 > 0.0f) {
                if (this.f1615j == null) {
                    this.f1615j = new Paint();
                }
                this.f1615j.setColor(dVar.f1621a.b(this, view));
                this.f1615j.setAlpha(a(Math.round(c2 * 255.0f), 0, 255));
                int save = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.f1615j);
                canvas.restoreToCount(save);
            }
        }
        return super.drawChild(canvas, view, j2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.t;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    void ensurePreDrawListener() {
        int childCount = getChildCount();
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            if (a(getChildAt(i2))) {
                z = true;
                break;
            }
            i2++;
        }
        if (z != this.q) {
            if (z) {
                addPreDrawListener();
            } else {
                removePreDrawListener();
            }
        }
    }

    void getChildRect(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            getDescendantRect(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    @NonNull
    public List<View> getDependencies(@NonNull View view) {
        List<View> d2 = this.f1611f.d(view);
        this.f1613h.clear();
        if (d2 != null) {
            this.f1613h.addAll(d2);
        }
        return this.f1613h;
    }

    @VisibleForTesting
    final List<View> getDependencySortedChildren() {
        b();
        return Collections.unmodifiableList(this.f1610e);
    }

    @NonNull
    public List<View> getDependents(@NonNull View view) {
        List c2 = this.f1611f.c(view);
        this.f1613h.clear();
        if (c2 != null) {
            this.f1613h.addAll(c2);
        }
        return this.f1613h;
    }

    void getDescendantRect(View view, Rect rect) {
        androidx.coordinatorlayout.widget.b.a(this, view, rect);
    }

    void getDesiredAnchoredChildRect(View view, int i2, Rect rect, Rect rect2) {
        d dVar = (d) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        a(view, i2, rect, rect2, dVar, measuredWidth, measuredHeight);
        a(dVar, rect2, measuredWidth, measuredHeight);
    }

    void getLastChildRect(View view, Rect rect) {
        rect.set(((d) view.getLayoutParams()).f());
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    public final e0 getLastWindowInsets() {
        return this.r;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.v.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    d getResolvedLayoutParams(View view) {
        d dVar = (d) view.getLayoutParams();
        if (!dVar.f1622b) {
            if (view instanceof b) {
                dVar.a(((b) view).getBehavior());
                dVar.f1622b = true;
            } else {
                DefaultBehavior defaultBehavior = null;
                for (Class<?> cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                    defaultBehavior = (DefaultBehavior) cls.getAnnotation(DefaultBehavior.class);
                    if (defaultBehavior != null) {
                        break;
                    }
                }
                if (defaultBehavior != null) {
                    try {
                        dVar.a(defaultBehavior.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception unused) {
                        String str = "Default behavior class " + defaultBehavior.value().getName() + " could not be instantiated. Did you forget a default constructor?";
                    }
                }
                dVar.f1622b = true;
            }
        }
        return dVar;
    }

    @Nullable
    public Drawable getStatusBarBackground() {
        return this.t;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    public boolean isPointInChildBounds(@NonNull View view, int i2, int i3) {
        Rect a2 = a();
        getDescendantRect(view, a2);
        try {
            return a2.contains(i2, i3);
        } finally {
            a(a2);
        }
    }

    void offsetChildToAnchor(View view, int i2) {
        Behavior d2;
        d dVar = (d) view.getLayoutParams();
        if (dVar.f1631k != null) {
            Rect a2 = a();
            Rect a3 = a();
            Rect a4 = a();
            getDescendantRect(dVar.f1631k, a2);
            getChildRect(view, false, a3);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            a(view, i2, a2, a4, dVar, measuredWidth, measuredHeight);
            boolean z = (a4.left == a3.left && a4.top == a3.top) ? false : true;
            a(dVar, a4, measuredWidth, measuredHeight);
            int i3 = a4.left - a3.left;
            int i4 = a4.top - a3.top;
            if (i3 != 0) {
                ViewCompat.d(view, i3);
            }
            if (i4 != 0) {
                ViewCompat.e(view, i4);
            }
            if (z && (d2 = dVar.d()) != null) {
                d2.b(this, (CoordinatorLayout) view, dVar.f1631k);
            }
            a(a2);
            a(a3);
            a(a4);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a(false);
        if (this.q) {
            if (this.p == null) {
                this.p = new e();
            }
            getViewTreeObserver().addOnPreDrawListener(this.p);
        }
        if (this.r == null && ViewCompat.k(this)) {
            ViewCompat.I(this);
        }
        this.f1617l = true;
    }

    final void onChildViewsChanged(int i2) {
        boolean z;
        int n = ViewCompat.n(this);
        int size = this.f1610e.size();
        Rect a2 = a();
        Rect a3 = a();
        Rect a4 = a();
        for (int i3 = 0; i3 < size; i3++) {
            View view = this.f1610e.get(i3);
            d dVar = (d) view.getLayoutParams();
            if (i2 != 0 || view.getVisibility() != 8) {
                for (int i4 = 0; i4 < i3; i4++) {
                    if (dVar.f1632l == this.f1610e.get(i4)) {
                        offsetChildToAnchor(view, n);
                    }
                }
                getChildRect(view, true, a3);
                if (dVar.f1627g != 0 && !a3.isEmpty()) {
                    int a5 = androidx.core.view.e.a(dVar.f1627g, n);
                    int i5 = a5 & 112;
                    if (i5 == 48) {
                        a2.top = Math.max(a2.top, a3.bottom);
                    } else if (i5 == 80) {
                        a2.bottom = Math.max(a2.bottom, getHeight() - a3.top);
                    }
                    int i6 = a5 & 7;
                    if (i6 == 3) {
                        a2.left = Math.max(a2.left, a3.right);
                    } else if (i6 == 5) {
                        a2.right = Math.max(a2.right, getWidth() - a3.left);
                    }
                }
                if (dVar.f1628h != 0 && view.getVisibility() == 0) {
                    a(view, a2, n);
                }
                if (i2 != 2) {
                    getLastChildRect(view, a4);
                    if (!a4.equals(a3)) {
                        recordLastChildRect(view, a3);
                    }
                }
                for (int i7 = i3 + 1; i7 < size; i7++) {
                    View view2 = this.f1610e.get(i7);
                    d dVar2 = (d) view2.getLayoutParams();
                    Behavior d2 = dVar2.d();
                    if (d2 != null && d2.a(this, (CoordinatorLayout) view2, view)) {
                        if (i2 == 0 && dVar2.e()) {
                            dVar2.g();
                        } else {
                            if (i2 != 2) {
                                z = d2.b(this, (CoordinatorLayout) view2, view);
                            } else {
                                d2.c(this, view2, view);
                                z = true;
                            }
                            if (i2 == 1) {
                                dVar2.a(z);
                            }
                        }
                    }
                }
            }
        }
        a(a2);
        a(a3);
        a(a4);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a(false);
        if (this.q && this.p != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.p);
        }
        View view = this.o;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f1617l = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.s || this.t == null) {
            return;
        }
        e0 e0Var = this.r;
        int g2 = e0Var != null ? e0Var.g() : 0;
        if (g2 > 0) {
            this.t.setBounds(0, 0, getWidth(), g2);
            this.t.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            a(true);
        }
        boolean a2 = a(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            a(true);
        }
        return a2;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        Behavior d2;
        int n = ViewCompat.n(this);
        int size = this.f1610e.size();
        for (int i6 = 0; i6 < size; i6++) {
            View view = this.f1610e.get(i6);
            if (view.getVisibility() != 8 && ((d2 = ((d) view.getLayoutParams()).d()) == null || !d2.a(this, (CoordinatorLayout) view, n))) {
                onLayoutChild(view, n);
            }
        }
    }

    public void onLayoutChild(@NonNull View view, int i2) {
        d dVar = (d) view.getLayoutParams();
        if (!dVar.a()) {
            View view2 = dVar.f1631k;
            if (view2 != null) {
                a(view, view2, i2);
                return;
            }
            int i3 = dVar.f1625e;
            if (i3 >= 0) {
                a(view, i3, i2);
                return;
            } else {
                a(view, i2);
                return;
            }
        }
        throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0117, code lost:
    
        if (r0.a(r30, (androidx.coordinatorlayout.widget.CoordinatorLayout) r20, r11, r21, r23, 0) == false) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x011a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r31, int r32) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    public void onMeasureChild(View view, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        Behavior d2;
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                if (dVar.a(0) && (d2 = dVar.d()) != null) {
                    z2 |= d2.a(this, (CoordinatorLayout) childAt, view, f2, f3, z);
                }
            }
        }
        if (z2) {
            onChildViewsChanged(1);
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public boolean onNestedPreFling(View view, float f2, float f3) {
        Behavior d2;
        int childCount = getChildCount();
        boolean z = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                if (dVar.a(0) && (d2 = dVar.d()) != null) {
                    z |= d2.a(this, (CoordinatorLayout) childAt, view, f2, f3);
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
        onNestedPreScroll(view, i2, i3, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        onNestedScroll(view, i2, i3, i4, i5, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        onNestedScrollAccepted(view, view2, i2, 0);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        SparseArray<Parcelable> sparseArray = savedState.f1618g;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            Behavior d2 = getResolvedLayoutParams(childAt).d();
            if (id != -1 && d2 != null && (parcelable2 = sparseArray.get(id)) != null) {
                d2.a(this, (CoordinatorLayout) childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable d2;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            Behavior d3 = ((d) childAt.getLayoutParams()).d();
            if (id != -1 && d3 != null && (d2 = d3.d(this, childAt)) != null) {
                sparseArray.append(id, d2);
            }
        }
        savedState.f1618g = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return onStartNestedScroll(view, view2, i2, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if (r3 != false) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0031  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r18.getActionMasked()
            android.view.View r3 = r0.n
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L15
            boolean r3 = r0.a(r1, r4)
            if (r3 == 0) goto L2b
            goto L16
        L15:
            r3 = 0
        L16:
            android.view.View r6 = r0.n
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$d r6 = (androidx.coordinatorlayout.widget.CoordinatorLayout.d) r6
            androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r6 = r6.d()
            if (r6 == 0) goto L2b
            android.view.View r7 = r0.n
            boolean r6 = r6.b(r0, r7, r1)
            goto L2c
        L2b:
            r6 = 0
        L2c:
            android.view.View r7 = r0.n
            r8 = 0
            if (r7 != 0) goto L37
            boolean r1 = super.onTouchEvent(r18)
            r6 = r6 | r1
            goto L4a
        L37:
            if (r3 == 0) goto L4a
            long r11 = android.os.SystemClock.uptimeMillis()
            r13 = 3
            r14 = 0
            r15 = 0
            r16 = 0
            r9 = r11
            android.view.MotionEvent r8 = android.view.MotionEvent.obtain(r9, r11, r13, r14, r15, r16)
            super.onTouchEvent(r8)
        L4a:
            if (r8 == 0) goto L4f
            r8.recycle()
        L4f:
            if (r2 == r4) goto L54
            r1 = 3
            if (r2 != r1) goto L57
        L54:
            r0.a(r5)
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    void recordLastChildRect(View view, Rect rect) {
        ((d) view.getLayoutParams()).a(rect);
    }

    void removePreDrawListener() {
        if (this.f1617l && this.p != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.p);
        }
        this.q = false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        Behavior d2 = ((d) view.getLayoutParams()).d();
        if (d2 == null || !d2.a(this, (CoordinatorLayout) view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.f1616k) {
            return;
        }
        a(false);
        this.f1616k = true;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        c();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.mOnHierarchyChangeListener = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.t;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            this.t = drawable != null ? drawable.mutate() : null;
            Drawable drawable3 = this.t;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.t.setState(getDrawableState());
                }
                androidx.core.graphics.drawable.a.a(this.t, ViewCompat.n(this));
                this.t.setVisible(getVisibility() == 0, false);
                this.t.setCallback(this);
            }
            ViewCompat.H(this);
        }
    }

    public void setStatusBarBackgroundColor(@ColorInt int i2) {
        setStatusBarBackground(new ColorDrawable(i2));
    }

    public void setStatusBarBackgroundResource(@DrawableRes int i2) {
        setStatusBarBackground(i2 != 0 ? androidx.core.content.a.c(getContext(), i2) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z = i2 == 0;
        Drawable drawable = this.t;
        if (drawable == null || drawable.isVisible() == z) {
            return;
        }
        this.t.setVisible(z, false);
    }

    final e0 setWindowInsets(e0 e0Var) {
        if (a.i.m.d.a(this.r, e0Var)) {
            return e0Var;
        }
        this.r = e0Var;
        this.s = e0Var != null && e0Var.g() > 0;
        setWillNotDraw(!this.s && getBackground() == null);
        e0 a2 = a(e0Var);
        requestLayout();
        return a2;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.t;
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, a.h.a.coordinatorLayoutStyle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public d generateDefaultLayoutParams() {
        return new d(-2, -2);
    }

    @Override // androidx.core.view.o
    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr, int i4) {
        Behavior d2;
        int childCount = getChildCount();
        boolean z = false;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                if (dVar.a(i4) && (d2 = dVar.d()) != null) {
                    int[] iArr2 = this.f1614i;
                    iArr2[1] = 0;
                    iArr2[0] = 0;
                    d2.a(this, (CoordinatorLayout) childAt, view, i2, i3, iArr2, i4);
                    int[] iArr3 = this.f1614i;
                    int max = i2 > 0 ? Math.max(i5, iArr3[0]) : Math.min(i5, iArr3[0]);
                    int[] iArr4 = this.f1614i;
                    i5 = max;
                    i6 = i3 > 0 ? Math.max(i6, iArr4[1]) : Math.min(i6, iArr4[1]);
                    z = true;
                }
            }
        }
        iArr[0] = i5;
        iArr[1] = i6;
        if (z) {
            onChildViewsChanged(1);
        }
    }

    @Override // androidx.core.view.o
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5, int i6) {
        Behavior d2;
        int childCount = getChildCount();
        boolean z = false;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                if (dVar.a(i6) && (d2 = dVar.d()) != null) {
                    d2.a(this, childAt, view, i2, i3, i4, i5, i6);
                    z = true;
                }
            }
        }
        if (z) {
            onChildViewsChanged(1);
        }
    }

    @Override // androidx.core.view.o
    public void onNestedScrollAccepted(View view, View view2, int i2, int i3) {
        Behavior d2;
        this.v.a(view, view2, i2, i3);
        this.o = view2;
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            d dVar = (d) childAt.getLayoutParams();
            if (dVar.a(i3) && (d2 = dVar.d()) != null) {
                d2.a(this, (CoordinatorLayout) childAt, view, view2, i2, i3);
            }
        }
    }

    @Override // androidx.core.view.o
    public boolean onStartNestedScroll(View view, View view2, int i2, int i3) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                Behavior d2 = dVar.d();
                if (d2 != null) {
                    boolean b2 = d2.b(this, childAt, view, view2, i2, i3);
                    dVar.a(i3, b2);
                    z |= b2;
                } else {
                    dVar.a(i3, false);
                }
            }
        }
        return z;
    }

    @Override // androidx.core.view.o
    public void onStopNestedScroll(View view, int i2) {
        this.v.a(view, i2);
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            d dVar = (d) childAt.getLayoutParams();
            if (dVar.a(i2)) {
                Behavior d2 = dVar.d();
                if (d2 != null) {
                    d2.a(this, (CoordinatorLayout) childAt, view, i2);
                }
                dVar.b(i2);
                dVar.g();
            }
        }
        this.o = null;
    }

    /* loaded from: classes.dex */
    public static class d extends ViewGroup.MarginLayoutParams {

        /* renamed from: a, reason: collision with root package name */
        Behavior f1621a;

        /* renamed from: b, reason: collision with root package name */
        boolean f1622b;

        /* renamed from: c, reason: collision with root package name */
        public int f1623c;

        /* renamed from: d, reason: collision with root package name */
        public int f1624d;

        /* renamed from: e, reason: collision with root package name */
        public int f1625e;

        /* renamed from: f, reason: collision with root package name */
        int f1626f;

        /* renamed from: g, reason: collision with root package name */
        public int f1627g;

        /* renamed from: h, reason: collision with root package name */
        public int f1628h;

        /* renamed from: i, reason: collision with root package name */
        int f1629i;

        /* renamed from: j, reason: collision with root package name */
        int f1630j;

        /* renamed from: k, reason: collision with root package name */
        View f1631k;

        /* renamed from: l, reason: collision with root package name */
        View f1632l;
        private boolean m;
        private boolean n;
        private boolean o;
        private boolean p;
        final Rect q;

        public d(int i2, int i3) {
            super(i2, i3);
            this.f1622b = false;
            this.f1623c = 0;
            this.f1624d = 0;
            this.f1625e = -1;
            this.f1626f = -1;
            this.f1627g = 0;
            this.f1628h = 0;
            this.q = new Rect();
        }

        public void a(@Nullable Behavior behavior) {
            Behavior behavior2 = this.f1621a;
            if (behavior2 != behavior) {
                if (behavior2 != null) {
                    behavior2.a();
                }
                this.f1621a = behavior;
                this.f1622b = true;
                if (behavior != null) {
                    behavior.a(this);
                }
            }
        }

        boolean b() {
            if (this.f1621a == null) {
                this.m = false;
            }
            return this.m;
        }

        @IdRes
        public int c() {
            return this.f1626f;
        }

        @Nullable
        public Behavior d() {
            return this.f1621a;
        }

        boolean e() {
            return this.p;
        }

        Rect f() {
            return this.q;
        }

        void g() {
            this.p = false;
        }

        void h() {
            this.m = false;
        }

        boolean b(CoordinatorLayout coordinatorLayout, View view) {
            boolean z = this.m;
            if (z) {
                return true;
            }
            Behavior behavior = this.f1621a;
            boolean a2 = (behavior != null ? behavior.a(coordinatorLayout, view) : false) | z;
            this.m = a2;
            return a2;
        }

        void a(Rect rect) {
            this.q.set(rect);
        }

        boolean a() {
            return this.f1631k == null && this.f1626f != -1;
        }

        void b(int i2) {
            a(i2, false);
        }

        private boolean b(View view, CoordinatorLayout coordinatorLayout) {
            if (this.f1631k.getId() != this.f1626f) {
                return false;
            }
            View view2 = this.f1631k;
            for (ViewParent parent = view2.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent != null && parent != view) {
                    if (parent instanceof View) {
                        view2 = parent;
                    }
                } else {
                    this.f1632l = null;
                    this.f1631k = null;
                    return false;
                }
            }
            this.f1632l = view2;
            return true;
        }

        void a(int i2, boolean z) {
            if (i2 == 0) {
                this.n = z;
            } else {
                if (i2 != 1) {
                    return;
                }
                this.o = z;
            }
        }

        d(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1622b = false;
            this.f1623c = 0;
            this.f1624d = 0;
            this.f1625e = -1;
            this.f1626f = -1;
            this.f1627g = 0;
            this.f1628h = 0;
            this.q = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.c.CoordinatorLayout_Layout);
            this.f1623c = obtainStyledAttributes.getInteger(a.h.c.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f1626f = obtainStyledAttributes.getResourceId(a.h.c.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f1624d = obtainStyledAttributes.getInteger(a.h.c.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f1625e = obtainStyledAttributes.getInteger(a.h.c.CoordinatorLayout_Layout_layout_keyline, -1);
            this.f1627g = obtainStyledAttributes.getInt(a.h.c.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.f1628h = obtainStyledAttributes.getInt(a.h.c.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            this.f1622b = obtainStyledAttributes.hasValue(a.h.c.CoordinatorLayout_Layout_layout_behavior);
            if (this.f1622b) {
                this.f1621a = CoordinatorLayout.parseBehavior(context, attributeSet, obtainStyledAttributes.getString(a.h.c.CoordinatorLayout_Layout_layout_behavior));
            }
            obtainStyledAttributes.recycle();
            Behavior behavior = this.f1621a;
            if (behavior != null) {
                behavior.a(this);
            }
        }

        boolean a(int i2) {
            if (i2 == 0) {
                return this.n;
            }
            if (i2 != 1) {
                return false;
            }
            return this.o;
        }

        void a(boolean z) {
            this.p = z;
        }

        boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            Behavior behavior;
            return view2 == this.f1632l || a(view2, ViewCompat.n(coordinatorLayout)) || ((behavior = this.f1621a) != null && behavior.a(coordinatorLayout, (CoordinatorLayout) view, view2));
        }

        View a(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f1626f == -1) {
                this.f1632l = null;
                this.f1631k = null;
                return null;
            }
            if (this.f1631k == null || !b(view, coordinatorLayout)) {
                a(view, coordinatorLayout);
            }
            return this.f1631k;
        }

        private void a(View view, CoordinatorLayout coordinatorLayout) {
            this.f1631k = coordinatorLayout.findViewById(this.f1626f);
            View view2 = this.f1631k;
            if (view2 == null) {
                if (coordinatorLayout.isInEditMode()) {
                    this.f1632l = null;
                    this.f1631k = null;
                    return;
                }
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f1626f) + " to anchor view " + view);
            }
            if (view2 == coordinatorLayout) {
                if (coordinatorLayout.isInEditMode()) {
                    this.f1632l = null;
                    this.f1631k = null;
                    return;
                }
                throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
            }
            for (ViewParent parent = view2.getParent(); parent != coordinatorLayout && parent != null; parent = parent.getParent()) {
                if (parent == view) {
                    if (coordinatorLayout.isInEditMode()) {
                        this.f1632l = null;
                        this.f1631k = null;
                        return;
                    }
                    throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                }
                if (parent instanceof View) {
                    view2 = parent;
                }
            }
            this.f1632l = view2;
        }

        public d(d dVar) {
            super((ViewGroup.MarginLayoutParams) dVar);
            this.f1622b = false;
            this.f1623c = 0;
            this.f1624d = 0;
            this.f1625e = -1;
            this.f1626f = -1;
            this.f1627g = 0;
            this.f1628h = 0;
            this.q = new Rect();
        }

        private boolean a(View view, int i2) {
            int a2 = androidx.core.view.e.a(((d) view.getLayoutParams()).f1627g, i2);
            return a2 != 0 && (androidx.core.view.e.a(this.f1628h, i2) & a2) == a2;
        }

        public d(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1622b = false;
            this.f1623c = 0;
            this.f1624d = 0;
            this.f1625e = -1;
            this.f1626f = -1;
            this.f1627g = 0;
            this.f1628h = 0;
            this.q = new Rect();
        }

        public d(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1622b = false;
            this.f1623c = 0;
            this.f1624d = 0;
            this.f1625e = -1;
            this.f1626f = -1;
            this.f1627g = 0;
            this.f1628h = 0;
            this.q = new Rect();
        }
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2) {
        super(context, attributeSet, i2);
        TypedArray obtainStyledAttributes;
        this.f1610e = new ArrayList();
        this.f1611f = new androidx.coordinatorlayout.widget.a<>();
        this.f1612g = new ArrayList();
        this.f1613h = new ArrayList();
        this.f1614i = new int[2];
        this.v = new r(this);
        if (i2 == 0) {
            obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.c.CoordinatorLayout, 0, a.h.b.Widget_Support_CoordinatorLayout);
        } else {
            obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.c.CoordinatorLayout, i2, 0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(a.h.c.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.m = resources.getIntArray(resourceId);
            float f2 = resources.getDisplayMetrics().density;
            int length = this.m.length;
            for (int i3 = 0; i3 < length; i3++) {
                this.m[i3] = (int) (r1[i3] * f2);
            }
        }
        this.t = obtainStyledAttributes.getDrawable(a.h.c.CoordinatorLayout_statusBarBackground);
        obtainStyledAttributes.recycle();
        c();
        super.setOnHierarchyChangeListener(new c());
    }

    private static void a(@NonNull Rect rect) {
        rect.setEmpty();
        w.a(rect);
    }

    @Override // android.view.ViewGroup
    public d generateLayoutParams(AttributeSet attributeSet) {
        return new d(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public d generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof d) {
            return new d((d) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new d((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new d(layoutParams);
    }

    private void a(boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            Behavior d2 = ((d) childAt.getLayoutParams()).d();
            if (d2 != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    d2.a(this, (CoordinatorLayout) childAt, obtain);
                } else {
                    d2.b(this, (CoordinatorLayout) childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            ((d) getChildAt(i3).getLayoutParams()).h();
        }
        this.n = null;
        this.f1616k = false;
    }

    private void c() {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (ViewCompat.k(this)) {
            if (this.u == null) {
                this.u = new a();
            }
            ViewCompat.a(this, this.u);
            setSystemUiVisibility(1280);
            return;
        }
        ViewCompat.a(this, (s) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: g, reason: collision with root package name */
        SparseArray<Parcelable> f1618g;

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
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.f1618g = new SparseArray<>(readInt);
            for (int i2 = 0; i2 < readInt; i2++) {
                this.f1618g.append(iArr[i2], readParcelableArray[i2]);
            }
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            SparseArray<Parcelable> sparseArray = this.f1618g;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i3 = 0; i3 < size; i3++) {
                iArr[i3] = this.f1618g.keyAt(i3);
                parcelableArr[i3] = this.f1618g.valueAt(i3);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i2);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    private void b(View view, int i2) {
        d dVar = (d) view.getLayoutParams();
        int i3 = dVar.f1629i;
        if (i3 != i2) {
            ViewCompat.d(view, i2 - i3);
            dVar.f1629i = i2;
        }
    }

    private void a(List<View> list) {
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i2) : i2));
        }
        Comparator<View> comparator = TOP_SORTED_CHILDREN_COMPARATOR;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    private boolean a(MotionEvent motionEvent, int i2) {
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.f1612g;
        a(list);
        int size = list.size();
        MotionEvent motionEvent2 = null;
        boolean z = false;
        boolean z2 = false;
        for (int i3 = 0; i3 < size; i3++) {
            View view = list.get(i3);
            d dVar = (d) view.getLayoutParams();
            Behavior d2 = dVar.d();
            if (!(z || z2) || actionMasked == 0) {
                if (!z && d2 != null) {
                    if (i2 == 0) {
                        z = d2.a(this, (CoordinatorLayout) view, motionEvent);
                    } else if (i2 == 1) {
                        z = d2.b(this, (CoordinatorLayout) view, motionEvent);
                    }
                    if (z) {
                        this.n = view;
                    }
                }
                boolean b2 = dVar.b();
                boolean b3 = dVar.b(this, view);
                boolean z3 = b3 && !b2;
                if (b3 && !z3) {
                    break;
                }
                z2 = z3;
            } else if (d2 != null) {
                if (motionEvent2 == null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i2 == 0) {
                    d2.a(this, (CoordinatorLayout) view, motionEvent2);
                } else if (i2 == 1) {
                    d2.b(this, (CoordinatorLayout) view, motionEvent2);
                }
            }
        }
        list.clear();
        return z;
    }

    private int a(int i2) {
        int[] iArr = this.m;
        if (iArr == null) {
            String str = "No keylines defined for " + this + " - attempted index lookup " + i2;
            return 0;
        }
        if (i2 >= 0 && i2 < iArr.length) {
            return iArr[i2];
        }
        String str2 = "Keyline index " + i2 + " out of range for " + this;
        return 0;
    }

    private e0 a(e0 e0Var) {
        Behavior d2;
        if (e0Var.j()) {
            return e0Var;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (ViewCompat.k(childAt) && (d2 = ((d) childAt.getLayoutParams()).d()) != null) {
                e0Var = d2.a(this, (CoordinatorLayout) childAt, e0Var);
                if (e0Var.j()) {
                    break;
                }
            }
        }
        return e0Var;
    }

    private void a(View view, int i2, Rect rect, Rect rect2, d dVar, int i3, int i4) {
        int width;
        int height;
        int a2 = androidx.core.view.e.a(b(dVar.f1623c), i2);
        int a3 = androidx.core.view.e.a(c(dVar.f1624d), i2);
        int i5 = a2 & 7;
        int i6 = a2 & 112;
        int i7 = a3 & 7;
        int i8 = a3 & 112;
        if (i7 == 1) {
            width = rect.left + (rect.width() / 2);
        } else if (i7 != 5) {
            width = rect.left;
        } else {
            width = rect.right;
        }
        if (i8 == 16) {
            height = rect.top + (rect.height() / 2);
        } else if (i8 != 80) {
            height = rect.top;
        } else {
            height = rect.bottom;
        }
        if (i5 == 1) {
            width -= i3 / 2;
        } else if (i5 != 5) {
            width -= i3;
        }
        if (i6 == 16) {
            height -= i4 / 2;
        } else if (i6 != 80) {
            height -= i4;
        }
        rect2.set(width, height, i3 + width, i4 + height);
    }

    private void a(d dVar, Rect rect, int i2, int i3) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i2) - ((ViewGroup.MarginLayoutParams) dVar).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i3) - ((ViewGroup.MarginLayoutParams) dVar).bottomMargin));
        rect.set(max, max2, i2 + max, i3 + max2);
    }

    private void a(View view, View view2, int i2) {
        Rect a2 = a();
        Rect a3 = a();
        try {
            getDescendantRect(view2, a2);
            getDesiredAnchoredChildRect(view, i2, a2, a3);
            view.layout(a3.left, a3.top, a3.right, a3.bottom);
        } finally {
            a(a2);
            a(a3);
        }
    }

    private void a(View view, int i2, int i3) {
        d dVar = (d) view.getLayoutParams();
        int a2 = androidx.core.view.e.a(d(dVar.f1623c), i3);
        int i4 = a2 & 7;
        int i5 = a2 & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i3 == 1) {
            i2 = width - i2;
        }
        int a3 = a(i2) - measuredWidth;
        int i6 = 0;
        if (i4 == 1) {
            a3 += measuredWidth / 2;
        } else if (i4 == 5) {
            a3 += measuredWidth;
        }
        if (i5 == 16) {
            i6 = 0 + (measuredHeight / 2);
        } else if (i5 == 80) {
            i6 = measuredHeight + 0;
        }
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar).leftMargin, Math.min(a3, ((width - getPaddingRight()) - measuredWidth) - ((ViewGroup.MarginLayoutParams) dVar).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar).topMargin, Math.min(i6, ((height - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) dVar).bottomMargin));
        view.layout(max, max2, measuredWidth + max, measuredHeight + max2);
    }

    private void a(View view, int i2) {
        d dVar = (d) view.getLayoutParams();
        Rect a2 = a();
        a2.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) dVar).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
        if (this.r != null && ViewCompat.k(this) && !ViewCompat.k(view)) {
            a2.left += this.r.e();
            a2.top += this.r.g();
            a2.right -= this.r.f();
            a2.bottom -= this.r.d();
        }
        Rect a3 = a();
        androidx.core.view.e.a(c(dVar.f1623c), view.getMeasuredWidth(), view.getMeasuredHeight(), a2, a3, i2);
        view.layout(a3.left, a3.top, a3.right, a3.bottom);
        a(a2);
        a(a3);
    }

    private void a(View view, Rect rect, int i2) {
        boolean z;
        boolean z2;
        int width;
        int i3;
        int i4;
        int i5;
        int height;
        int i6;
        int i7;
        int i8;
        if (ViewCompat.D(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            d dVar = (d) view.getLayoutParams();
            Behavior d2 = dVar.d();
            Rect a2 = a();
            Rect a3 = a();
            a3.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (d2 != null && d2.a(this, (CoordinatorLayout) view, a2)) {
                if (!a3.contains(a2)) {
                    throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + a2.toShortString() + " | Bounds:" + a3.toShortString());
                }
            } else {
                a2.set(a3);
            }
            a(a3);
            if (a2.isEmpty()) {
                a(a2);
                return;
            }
            int a4 = androidx.core.view.e.a(dVar.f1628h, i2);
            if ((a4 & 48) != 48 || (i7 = (a2.top - ((ViewGroup.MarginLayoutParams) dVar).topMargin) - dVar.f1630j) >= (i8 = rect.top)) {
                z = false;
            } else {
                c(view, i8 - i7);
                z = true;
            }
            if ((a4 & 80) == 80 && (height = ((getHeight() - a2.bottom) - ((ViewGroup.MarginLayoutParams) dVar).bottomMargin) + dVar.f1630j) < (i6 = rect.bottom)) {
                c(view, height - i6);
                z = true;
            }
            if (!z) {
                c(view, 0);
            }
            if ((a4 & 3) != 3 || (i4 = (a2.left - ((ViewGroup.MarginLayoutParams) dVar).leftMargin) - dVar.f1629i) >= (i5 = rect.left)) {
                z2 = false;
            } else {
                b(view, i5 - i4);
                z2 = true;
            }
            if ((a4 & 5) == 5 && (width = ((getWidth() - a2.right) - ((ViewGroup.MarginLayoutParams) dVar).rightMargin) + dVar.f1629i) < (i3 = rect.right)) {
                b(view, width - i3);
                z2 = true;
            }
            if (!z2) {
                b(view, 0);
            }
            a(a2);
        }
    }

    private boolean a(View view) {
        return this.f1611f.e(view);
    }
}

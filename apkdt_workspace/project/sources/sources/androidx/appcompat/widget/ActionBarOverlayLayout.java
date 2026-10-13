package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.m;
import androidx.core.view.ViewCompat;
import androidx.core.view.e0;

@SuppressLint({"UnknownNullness"})
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements n, androidx.core.view.q, androidx.core.view.o, androidx.core.view.p {
    static final int[] ATTRS = {a.a.a.actionBarSize, R.attr.windowContentOverlay};
    private d A;
    private OverScroller B;
    private final Runnable C;
    private final Runnable D;
    private final androidx.core.view.r E;

    /* renamed from: e, reason: collision with root package name */
    private int f1067e;

    /* renamed from: f, reason: collision with root package name */
    private int f1068f;

    /* renamed from: g, reason: collision with root package name */
    private ContentFrameLayout f1069g;

    /* renamed from: h, reason: collision with root package name */
    private o f1070h;

    /* renamed from: i, reason: collision with root package name */
    private Drawable f1071i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f1072j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f1073k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f1074l;
    private boolean m;
    ActionBarContainer mActionBarTop;
    boolean mAnimatingForFling;
    ViewPropertyAnimator mCurrentActionBarTopAnimator;
    final AnimatorListenerAdapter mTopAnimatorListener;
    private int n;
    private int o;
    private final Rect p;
    private final Rect q;
    private final Rect r;
    private final Rect s;
    private final Rect t;
    private final Rect u;
    private final Rect v;

    @NonNull
    private androidx.core.view.e0 w;

    @NonNull
    private androidx.core.view.e0 x;

    @NonNull
    private androidx.core.view.e0 y;

    @NonNull
    private androidx.core.view.e0 z;

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    /* loaded from: classes.dex */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.mCurrentActionBarTopAnimator = null;
            actionBarOverlayLayout.mAnimatingForFling = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.mCurrentActionBarTopAnimator = null;
            actionBarOverlayLayout.mAnimatingForFling = false;
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.haltActionBarHideOffsetAnimations();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.mCurrentActionBarTopAnimator = actionBarOverlayLayout.mActionBarTop.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.mTopAnimatorListener);
        }
    }

    /* loaded from: classes.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.haltActionBarHideOffsetAnimations();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.mCurrentActionBarTopAnimator = actionBarOverlayLayout.mActionBarTop.animate().translationY(-ActionBarOverlayLayout.this.mActionBarTop.getHeight()).setListener(ActionBarOverlayLayout.this.mTopAnimatorListener);
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        void a();

        void a(boolean z);

        void b();

        void c();

        void d();

        void onWindowVisibilityChanged(int i2);
    }

    public ActionBarOverlayLayout(@NonNull Context context) {
        this(context, null);
    }

    private void a(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(ATTRS);
        this.f1067e = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f1071i = obtainStyledAttributes.getDrawable(1);
        setWillNotDraw(this.f1071i == null);
        obtainStyledAttributes.recycle();
        this.f1072j = context.getApplicationInfo().targetSdkVersion < 19;
        this.B = new OverScroller(context);
    }

    private void b() {
        haltActionBarHideOffsetAnimations();
        postDelayed(this.D, 600L);
    }

    private void c() {
        haltActionBarHideOffsetAnimations();
        postDelayed(this.C, 600L);
    }

    private void d() {
        haltActionBarHideOffsetAnimations();
        this.C.run();
    }

    @Override // androidx.appcompat.widget.n
    public boolean canShowOverflowMenu() {
        pullChildren();
        return this.f1070h.canShowOverflowMenu();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.appcompat.widget.n
    public void dismissPopups() {
        pullChildren();
        this.f1070h.a();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f1071i == null || this.f1072j) {
            return;
        }
        int bottom = this.mActionBarTop.getVisibility() == 0 ? (int) (this.mActionBarTop.getBottom() + this.mActionBarTop.getTranslationY() + 0.5f) : 0;
        this.f1071i.setBounds(0, bottom, getWidth(), this.f1071i.getIntrinsicHeight() + bottom);
        this.f1071i.draw(canvas);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            return super.fitSystemWindows(rect);
        }
        pullChildren();
        boolean a2 = a(this.mActionBarTop, rect, true, true, false, true);
        this.s.set(rect);
        j0.a(this, this.s, this.p);
        if (!this.t.equals(this.s)) {
            this.t.set(this.s);
            a2 = true;
        }
        if (!this.q.equals(this.p)) {
            this.q.set(this.p);
            a2 = true;
        }
        if (a2) {
            requestLayout();
        }
        return true;
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.mActionBarTop;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.E.a();
    }

    public CharSequence getTitle() {
        pullChildren();
        return this.f1070h.getTitle();
    }

    void haltActionBarHideOffsetAnimations() {
        removeCallbacks(this.C);
        removeCallbacks(this.D);
        ViewPropertyAnimator viewPropertyAnimator = this.mCurrentActionBarTopAnimator;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public boolean hasIcon() {
        pullChildren();
        return this.f1070h.e();
    }

    public boolean hasLogo() {
        pullChildren();
        return this.f1070h.g();
    }

    @Override // androidx.appcompat.widget.n
    public boolean hideOverflowMenu() {
        pullChildren();
        return this.f1070h.hideOverflowMenu();
    }

    @Override // androidx.appcompat.widget.n
    public void initFeature(int i2) {
        pullChildren();
        if (i2 == 2) {
            this.f1070h.i();
        } else if (i2 == 5) {
            this.f1070h.j();
        } else {
            if (i2 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    public boolean isHideOnContentScrollEnabled() {
        return this.m;
    }

    public boolean isInOverlayMode() {
        return this.f1073k;
    }

    @Override // androidx.appcompat.widget.n
    public boolean isOverflowMenuShowPending() {
        pullChildren();
        return this.f1070h.isOverflowMenuShowPending();
    }

    @Override // androidx.appcompat.widget.n
    public boolean isOverflowMenuShowing() {
        pullChildren();
        return this.f1070h.isOverflowMenuShowing();
    }

    @Override // android.view.View
    @RequiresApi(21)
    public WindowInsets onApplyWindowInsets(@NonNull WindowInsets windowInsets) {
        pullChildren();
        androidx.core.view.e0 a2 = androidx.core.view.e0.a(windowInsets);
        boolean a3 = a(this.mActionBarTop, new Rect(a2.e(), a2.g(), a2.f(), a2.d()), true, true, false, true);
        this.p.setEmpty();
        ViewCompat.a(this, this.w, this.p);
        Rect rect = this.p;
        this.w = a2.a(rect.left, rect.top, rect.right, rect.bottom);
        if (!this.x.equals(this.w)) {
            this.x = this.w;
            a3 = true;
        }
        if (!this.q.equals(this.p)) {
            this.q.set(this.p);
            a3 = true;
        }
        if (a3) {
            requestLayout();
        }
        return a2.a().c().b().k();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        a(getContext());
        ViewCompat.I(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        haltActionBarHideOffsetAnimations();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i7 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + paddingLeft;
                int i8 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + paddingTop;
                childAt.layout(i7, i8, measuredWidth + i7, measuredHeight + i8);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        int measuredHeight;
        pullChildren();
        measureChildWithMargins(this.mActionBarTop, i2, 0, i3, 0);
        LayoutParams layoutParams = (LayoutParams) this.mActionBarTop.getLayoutParams();
        int max = Math.max(0, this.mActionBarTop.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
        int max2 = Math.max(0, this.mActionBarTop.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.mActionBarTop.getMeasuredState());
        boolean z = (ViewCompat.v(this) & 256) != 0;
        if (z) {
            measuredHeight = this.f1067e;
            if (this.f1074l && this.mActionBarTop.getTabContainer() != null) {
                measuredHeight += this.f1067e;
            }
        } else {
            measuredHeight = this.mActionBarTop.getVisibility() != 8 ? this.mActionBarTop.getMeasuredHeight() : 0;
        }
        this.r.set(this.p);
        if (Build.VERSION.SDK_INT >= 21) {
            this.y = this.w;
        } else {
            this.u.set(this.s);
        }
        if (!this.f1073k && !z) {
            Rect rect = this.r;
            rect.top += measuredHeight;
            rect.bottom += 0;
            if (Build.VERSION.SDK_INT >= 21) {
                this.y = this.y.a(0, measuredHeight, 0, 0);
            }
        } else if (Build.VERSION.SDK_INT >= 21) {
            a.i.h.b a2 = a.i.h.b.a(this.y.e(), this.y.g() + measuredHeight, this.y.f(), this.y.d() + 0);
            e0.a aVar = new e0.a(this.y);
            aVar.b(a2);
            this.y = aVar.a();
        } else {
            Rect rect2 = this.u;
            rect2.top += measuredHeight;
            rect2.bottom += 0;
        }
        a(this.f1069g, this.r, true, true, true, true);
        if (Build.VERSION.SDK_INT >= 21 && !this.z.equals(this.y)) {
            androidx.core.view.e0 e0Var = this.y;
            this.z = e0Var;
            ViewCompat.a(this.f1069g, e0Var);
        } else if (Build.VERSION.SDK_INT < 21 && !this.v.equals(this.u)) {
            this.v.set(this.u);
            this.f1069g.dispatchFitSystemWindows(this.u);
        }
        measureChildWithMargins(this.f1069g, i2, 0, i3, 0);
        LayoutParams layoutParams2 = (LayoutParams) this.f1069g.getLayoutParams();
        int max3 = Math.max(max, this.f1069g.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
        int max4 = Math.max(max2, this.f1069g.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f1069g.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i2, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i3, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        if (!this.m || !z) {
            return false;
        }
        if (a(f3)) {
            a();
        } else {
            d();
        }
        this.mAnimatingForFling = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
    }

    @Override // androidx.core.view.o
    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr, int i4) {
        if (i4 == 0) {
            onNestedPreScroll(view, i2, i3, iArr);
        }
    }

    @Override // androidx.core.view.p
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        onNestedScroll(view, i2, i3, i4, i5, i6);
    }

    @Override // androidx.core.view.o
    public void onNestedScrollAccepted(View view, View view2, int i2, int i3) {
        if (i3 == 0) {
            onNestedScrollAccepted(view, view2, i2);
        }
    }

    @Override // androidx.core.view.o
    public boolean onStartNestedScroll(View view, View view2, int i2, int i3) {
        return i3 == 0 && onStartNestedScroll(view, view2, i2);
    }

    @Override // androidx.core.view.o
    public void onStopNestedScroll(View view, int i2) {
        if (i2 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i2);
        }
        pullChildren();
        int i3 = this.o ^ i2;
        this.o = i2;
        boolean z = (i2 & 4) == 0;
        boolean z2 = (i2 & 256) != 0;
        d dVar = this.A;
        if (dVar != null) {
            dVar.a(!z2);
            if (!z && z2) {
                this.A.c();
            } else {
                this.A.a();
            }
        }
        if ((i3 & 256) == 0 || this.A == null) {
            return;
        }
        ViewCompat.I(this);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.f1068f = i2;
        d dVar = this.A;
        if (dVar != null) {
            dVar.onWindowVisibilityChanged(i2);
        }
    }

    void pullChildren() {
        if (this.f1069g == null) {
            this.f1069g = (ContentFrameLayout) findViewById(a.a.f.action_bar_activity_content);
            this.mActionBarTop = (ActionBarContainer) findViewById(a.a.f.action_bar_container);
            this.f1070h = a(findViewById(a.a.f.action_bar));
        }
    }

    public void restoreToolbarHierarchyState(SparseArray<Parcelable> sparseArray) {
        pullChildren();
        this.f1070h.b(sparseArray);
    }

    public void saveToolbarHierarchyState(SparseArray<Parcelable> sparseArray) {
        pullChildren();
        this.f1070h.a(sparseArray);
    }

    public void setActionBarHideOffset(int i2) {
        haltActionBarHideOffsetAnimations();
        this.mActionBarTop.setTranslationY(-Math.max(0, Math.min(i2, this.mActionBarTop.getHeight())));
    }

    public void setActionBarVisibilityCallback(d dVar) {
        this.A = dVar;
        if (getWindowToken() != null) {
            this.A.onWindowVisibilityChanged(this.f1068f);
            int i2 = this.o;
            if (i2 != 0) {
                onWindowSystemUiVisibilityChanged(i2);
                ViewCompat.I(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f1074l = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.m) {
            this.m = z;
            if (z) {
                return;
            }
            haltActionBarHideOffsetAnimations();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i2) {
        pullChildren();
        this.f1070h.setIcon(i2);
    }

    public void setLogo(int i2) {
        pullChildren();
        this.f1070h.b(i2);
    }

    @Override // androidx.appcompat.widget.n
    public void setMenu(Menu menu, m.a aVar) {
        pullChildren();
        this.f1070h.setMenu(menu, aVar);
    }

    @Override // androidx.appcompat.widget.n
    public void setMenuPrepared() {
        pullChildren();
        this.f1070h.setMenuPrepared();
    }

    public void setOverlayMode(boolean z) {
        this.f1073k = z;
        this.f1072j = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i2) {
    }

    @Override // androidx.appcompat.widget.n
    public void setWindowCallback(Window.Callback callback) {
        pullChildren();
        this.f1070h.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.n
    public void setWindowTitle(CharSequence charSequence) {
        pullChildren();
        this.f1070h.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // androidx.appcompat.widget.n
    public boolean showOverflowMenu() {
        pullChildren();
        return this.f1070h.showOverflowMenu();
    }

    public ActionBarOverlayLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1068f = 0;
        this.p = new Rect();
        this.q = new Rect();
        this.r = new Rect();
        this.s = new Rect();
        this.t = new Rect();
        this.u = new Rect();
        this.v = new Rect();
        androidx.core.view.e0 e0Var = androidx.core.view.e0.f1938b;
        this.w = e0Var;
        this.x = e0Var;
        this.y = e0Var;
        this.z = e0Var;
        this.mTopAnimatorListener = new a();
        this.C = new b();
        this.D = new c();
        a(context);
        this.E = new androidx.core.view.r(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.core.view.o
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5, int i6) {
        if (i6 == 0) {
            onNestedScroll(view, i2, i3, i4, i5);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        this.E.a(view, view2, i2);
        this.n = getActionBarHideOffset();
        haltActionBarHideOffsetAnimations();
        d dVar = this.A;
        if (dVar != null) {
            dVar.d();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        if ((i2 & 2) == 0 || this.mActionBarTop.getVisibility() != 0) {
            return false;
        }
        return this.m;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public void onStopNestedScroll(View view) {
        if (this.m && !this.mAnimatingForFling) {
            if (this.n <= this.mActionBarTop.getHeight()) {
                c();
            } else {
                b();
            }
        }
        d dVar = this.A;
        if (dVar != null) {
            dVar.b();
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        this.n += i3;
        setActionBarHideOffset(this.n);
    }

    public void setIcon(Drawable drawable) {
        pullChildren();
        this.f1070h.setIcon(drawable);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(@androidx.annotation.NonNull android.view.View r3, @androidx.annotation.NonNull android.graphics.Rect r4, boolean r5, boolean r6, boolean r7, boolean r8) {
        /*
            r2 = this;
            android.view.ViewGroup$LayoutParams r3 = r3.getLayoutParams()
            androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams r3 = (androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams) r3
            r0 = 1
            if (r5 == 0) goto L13
            int r5 = r3.leftMargin
            int r1 = r4.left
            if (r5 == r1) goto L13
            r3.leftMargin = r1
            r5 = 1
            goto L14
        L13:
            r5 = 0
        L14:
            if (r6 == 0) goto L1f
            int r6 = r3.topMargin
            int r1 = r4.top
            if (r6 == r1) goto L1f
            r3.topMargin = r1
            r5 = 1
        L1f:
            if (r8 == 0) goto L2a
            int r6 = r3.rightMargin
            int r8 = r4.right
            if (r6 == r8) goto L2a
            r3.rightMargin = r8
            r5 = 1
        L2a:
            if (r7 == 0) goto L35
            int r6 = r3.bottomMargin
            int r4 = r4.bottom
            if (r6 == r4) goto L35
            r3.bottomMargin = r4
            r5 = 1
        L35:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.a(android.view.View, android.graphics.Rect, boolean, boolean, boolean, boolean):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private o a(View view) {
        if (view instanceof o) {
            return (o) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    private void a() {
        haltActionBarHideOffsetAnimations();
        this.D.run();
    }

    private boolean a(float f2) {
        this.B.fling(0, 0, 0, (int) f2, 0, 0, e.b.b.a.a.a.c.ALL_INT, Integer.MAX_VALUE);
        return this.B.getFinalY() > this.mActionBarTop.getHeight();
    }
}

package androidx.swiperefreshlayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;
import android.widget.ListView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.core.view.m;
import androidx.core.view.n;
import androidx.core.view.q;
import androidx.core.view.r;

/* loaded from: classes.dex */
public class SwipeRefreshLayout extends ViewGroup implements q, m {

    @VisibleForTesting
    static final int CIRCLE_DIAMETER = 40;

    @VisibleForTesting
    static final int CIRCLE_DIAMETER_LARGE = 56;
    public static final int DEFAULT = 1;
    public static final int DEFAULT_SLINGSHOT_DISTANCE = -1;
    private static final String F = SwipeRefreshLayout.class.getSimpleName();
    private static final int[] G = {R.attr.enabled};
    public static final int LARGE = 0;
    private int A;
    private i B;
    private Animation.AnimationListener C;
    private final Animation D;
    private final Animation E;

    /* renamed from: e, reason: collision with root package name */
    private View f2860e;

    /* renamed from: f, reason: collision with root package name */
    private int f2861f;

    /* renamed from: g, reason: collision with root package name */
    private float f2862g;

    /* renamed from: h, reason: collision with root package name */
    private float f2863h;

    /* renamed from: i, reason: collision with root package name */
    private final r f2864i;

    /* renamed from: j, reason: collision with root package name */
    private final n f2865j;

    /* renamed from: k, reason: collision with root package name */
    private final int[] f2866k;

    /* renamed from: l, reason: collision with root package name */
    private final int[] f2867l;
    private boolean m;
    androidx.swiperefreshlayout.widget.a mCircleView;
    int mCurrentTargetOffsetTop;
    int mCustomSlingshotDistance;
    protected int mFrom;
    j mListener;
    boolean mNotify;
    protected int mOriginalOffsetTop;
    CircularProgressDrawable mProgress;
    boolean mRefreshing;
    boolean mScale;
    int mSpinnerOffsetEnd;
    float mStartingScale;
    boolean mUsingCustomStart;
    private int n;
    private float o;
    private float p;
    private boolean q;
    private int r;
    private boolean s;
    private final DecelerateInterpolator t;
    private int u;
    private Animation v;
    private Animation w;
    private Animation x;
    private Animation y;
    private Animation z;

    /* loaded from: classes.dex */
    class a implements Animation.AnimationListener {
        a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            j jVar;
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (swipeRefreshLayout.mRefreshing) {
                swipeRefreshLayout.mProgress.setAlpha(255);
                SwipeRefreshLayout.this.mProgress.start();
                SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
                if (swipeRefreshLayout2.mNotify && (jVar = swipeRefreshLayout2.mListener) != null) {
                    jVar.a();
                }
                SwipeRefreshLayout swipeRefreshLayout3 = SwipeRefreshLayout.this;
                swipeRefreshLayout3.mCurrentTargetOffsetTop = swipeRefreshLayout3.mCircleView.getTop();
                return;
            }
            swipeRefreshLayout.reset();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b extends Animation {
        b() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f2, Transformation transformation) {
            SwipeRefreshLayout.this.setAnimationProgress(f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends Animation {
        c() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f2, Transformation transformation) {
            SwipeRefreshLayout.this.setAnimationProgress(1.0f - f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d extends Animation {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f2871e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f2872f;

        d(int i2, int i3) {
            this.f2871e = i2;
            this.f2872f = i3;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f2, Transformation transformation) {
            SwipeRefreshLayout.this.mProgress.setAlpha((int) (this.f2871e + ((this.f2872f - r0) * f2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements Animation.AnimationListener {
        e() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (swipeRefreshLayout.mScale) {
                return;
            }
            swipeRefreshLayout.startScaleDownAnimation(null);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* loaded from: classes.dex */
    class f extends Animation {
        f() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f2, Transformation transformation) {
            int i2;
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (!swipeRefreshLayout.mUsingCustomStart) {
                i2 = swipeRefreshLayout.mSpinnerOffsetEnd - Math.abs(swipeRefreshLayout.mOriginalOffsetTop);
            } else {
                i2 = swipeRefreshLayout.mSpinnerOffsetEnd;
            }
            SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
            SwipeRefreshLayout.this.setTargetOffsetTopAndBottom((swipeRefreshLayout2.mFrom + ((int) ((i2 - r1) * f2))) - swipeRefreshLayout2.mCircleView.getTop());
            SwipeRefreshLayout.this.mProgress.a(1.0f - f2);
        }
    }

    /* loaded from: classes.dex */
    class g extends Animation {
        g() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f2, Transformation transformation) {
            SwipeRefreshLayout.this.moveToStart(f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class h extends Animation {
        h() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f2, Transformation transformation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            float f3 = swipeRefreshLayout.mStartingScale;
            swipeRefreshLayout.setAnimationProgress(f3 + ((-f3) * f2));
            SwipeRefreshLayout.this.moveToStart(f2);
        }
    }

    /* loaded from: classes.dex */
    public interface i {
        boolean a(@NonNull SwipeRefreshLayout swipeRefreshLayout, @Nullable View view);
    }

    /* loaded from: classes.dex */
    public interface j {
        void a();
    }

    public SwipeRefreshLayout(@NonNull Context context) {
        this(context, null);
    }

    private void a() {
        this.mCircleView = new androidx.swiperefreshlayout.widget.a(getContext(), -328966);
        this.mProgress = new CircularProgressDrawable(getContext());
        this.mProgress.a(1);
        this.mCircleView.setImageDrawable(this.mProgress);
        this.mCircleView.setVisibility(8);
        addView(this.mCircleView);
    }

    private void b() {
        if (this.f2860e == null) {
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                View childAt = getChildAt(i2);
                if (!childAt.equals(this.mCircleView)) {
                    this.f2860e = childAt;
                    return;
                }
            }
        }
    }

    private void c() {
        this.y = a(this.mProgress.getAlpha(), 255);
    }

    private void d() {
        this.x = a(this.mProgress.getAlpha(), 76);
    }

    private void setColorViewAlpha(int i2) {
        this.mCircleView.getBackground().setAlpha(i2);
        this.mProgress.setAlpha(i2);
    }

    public boolean canChildScrollUp() {
        i iVar = this.B;
        if (iVar != null) {
            return iVar.a(this, this.f2860e);
        }
        View view = this.f2860e;
        if (view instanceof ListView) {
            return androidx.core.widget.g.a((ListView) view, -1);
        }
        return view.canScrollVertically(-1);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f2, float f3, boolean z) {
        return this.f2865j.a(f2, f3, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return this.f2865j.a(f2, f3);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return this.f2865j.a(i2, i3, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return this.f2865j.a(i2, i3, i4, i5, iArr);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i2, int i3) {
        int i4 = this.u;
        return i4 < 0 ? i3 : i3 == i2 + (-1) ? i4 : i3 >= i4 ? i3 + 1 : i3;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f2864i.a();
    }

    public int getProgressCircleDiameter() {
        return this.A;
    }

    public int getProgressViewEndOffset() {
        return this.mSpinnerOffsetEnd;
    }

    public int getProgressViewStartOffset() {
        return this.mOriginalOffsetTop;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.f2865j.a();
    }

    @Override // android.view.View, androidx.core.view.m
    public boolean isNestedScrollingEnabled() {
        return this.f2865j.b();
    }

    public boolean isRefreshing() {
        return this.mRefreshing;
    }

    void moveToStart(float f2) {
        setTargetOffsetTopAndBottom((this.mFrom + ((int) ((this.mOriginalOffsetTop - r0) * f2))) - this.mCircleView.getTop());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        reset();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int findPointerIndex;
        b();
        int actionMasked = motionEvent.getActionMasked();
        if (this.s && actionMasked == 0) {
            this.s = false;
        }
        if (!isEnabled() || this.s || canChildScrollUp() || this.mRefreshing || this.m) {
            return false;
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i2 = this.r;
                    if (i2 == -1 || (findPointerIndex = motionEvent.findPointerIndex(i2)) < 0) {
                        return false;
                    }
                    c(motionEvent.getY(findPointerIndex));
                } else if (actionMasked != 3) {
                    if (actionMasked == 6) {
                        a(motionEvent);
                    }
                }
            }
            this.q = false;
            this.r = -1;
        } else {
            setTargetOffsetTopAndBottom(this.mOriginalOffsetTop - this.mCircleView.getTop());
            this.r = motionEvent.getPointerId(0);
            this.q = false;
            int findPointerIndex2 = motionEvent.findPointerIndex(this.r);
            if (findPointerIndex2 < 0) {
                return false;
            }
            this.p = motionEvent.getY(findPointerIndex2);
        }
        return this.q;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.f2860e == null) {
            b();
        }
        View view = this.f2860e;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.mCircleView.getMeasuredWidth();
        int measuredHeight2 = this.mCircleView.getMeasuredHeight();
        int i6 = measuredWidth / 2;
        int i7 = measuredWidth2 / 2;
        int i8 = this.mCurrentTargetOffsetTop;
        this.mCircleView.layout(i6 - i7, i8, i6 + i7, measuredHeight2 + i8);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f2860e == null) {
            b();
        }
        View view = this.f2860e;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.mCircleView.measure(View.MeasureSpec.makeMeasureSpec(this.A, 1073741824), View.MeasureSpec.makeMeasureSpec(this.A, 1073741824));
        this.u = -1;
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            if (getChildAt(i4) == this.mCircleView) {
                this.u = i4;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        return dispatchNestedFling(f2, f3, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return dispatchNestedPreFling(f2, f3);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
        if (i3 > 0) {
            float f2 = this.f2863h;
            if (f2 > 0.0f) {
                float f3 = i3;
                if (f3 > f2) {
                    iArr[1] = i3 - ((int) f2);
                    this.f2863h = 0.0f;
                } else {
                    this.f2863h = f2 - f3;
                    iArr[1] = i3;
                }
                b(this.f2863h);
            }
        }
        if (this.mUsingCustomStart && i3 > 0 && this.f2863h == 0.0f && Math.abs(i3 - iArr[1]) > 0) {
            this.mCircleView.setVisibility(8);
        }
        int[] iArr2 = this.f2866k;
        if (dispatchNestedPreScroll(i2 - iArr[0], i3 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        dispatchNestedScroll(i2, i3, i4, i5, this.f2867l);
        if (i5 + this.f2867l[1] >= 0 || canChildScrollUp()) {
            return;
        }
        this.f2863h += Math.abs(r11);
        b(this.f2863h);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        this.f2864i.a(view, view2, i2);
        startNestedScroll(i2 & 2);
        this.f2863h = 0.0f;
        this.m = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return (!isEnabled() || this.s || this.mRefreshing || (i2 & 2) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public void onStopNestedScroll(View view) {
        this.f2864i.a(view);
        this.m = false;
        float f2 = this.f2863h;
        if (f2 > 0.0f) {
            a(f2);
            this.f2863h = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.s && actionMasked == 0) {
            this.s = false;
        }
        if (!isEnabled() || this.s || canChildScrollUp() || this.mRefreshing || this.m) {
            return false;
        }
        if (actionMasked == 0) {
            this.r = motionEvent.getPointerId(0);
            this.q = false;
        } else {
            if (actionMasked == 1) {
                int findPointerIndex = motionEvent.findPointerIndex(this.r);
                if (findPointerIndex < 0) {
                    return false;
                }
                if (this.q) {
                    float y = (motionEvent.getY(findPointerIndex) - this.o) * 0.5f;
                    this.q = false;
                    a(y);
                }
                this.r = -1;
                return false;
            }
            if (actionMasked == 2) {
                int findPointerIndex2 = motionEvent.findPointerIndex(this.r);
                if (findPointerIndex2 < 0) {
                    return false;
                }
                float y2 = motionEvent.getY(findPointerIndex2);
                c(y2);
                if (this.q) {
                    float f2 = (y2 - this.o) * 0.5f;
                    if (f2 <= 0.0f) {
                        return false;
                    }
                    b(f2);
                }
            } else {
                if (actionMasked == 3) {
                    return false;
                }
                if (actionMasked == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    if (actionIndex < 0) {
                        return false;
                    }
                    this.r = motionEvent.getPointerId(actionIndex);
                } else if (actionMasked == 6) {
                    a(motionEvent);
                }
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (Build.VERSION.SDK_INT >= 21 || !(this.f2860e instanceof AbsListView)) {
            View view = this.f2860e;
            if (view == null || ViewCompat.E(view)) {
                super.requestDisallowInterceptTouchEvent(z);
            }
        }
    }

    void reset() {
        this.mCircleView.clearAnimation();
        this.mProgress.stop();
        this.mCircleView.setVisibility(8);
        setColorViewAlpha(255);
        if (this.mScale) {
            setAnimationProgress(0.0f);
        } else {
            setTargetOffsetTopAndBottom(this.mOriginalOffsetTop - this.mCurrentTargetOffsetTop);
        }
        this.mCurrentTargetOffsetTop = this.mCircleView.getTop();
    }

    void setAnimationProgress(float f2) {
        this.mCircleView.setScaleX(f2);
        this.mCircleView.setScaleY(f2);
    }

    @Deprecated
    public void setColorScheme(@ColorRes int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(@ColorInt int... iArr) {
        b();
        this.mProgress.a(iArr);
    }

    public void setColorSchemeResources(@ColorRes int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr2[i2] = androidx.core.content.a.a(context, iArr[i2]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i2) {
        this.f2862g = i2;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            return;
        }
        reset();
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.f2865j.a(z);
    }

    public void setOnChildScrollUpCallback(@Nullable i iVar) {
        this.B = iVar;
    }

    public void setOnRefreshListener(@Nullable j jVar) {
        this.mListener = jVar;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i2) {
        setProgressBackgroundColorSchemeResource(i2);
    }

    public void setProgressBackgroundColorSchemeColor(@ColorInt int i2) {
        this.mCircleView.setBackgroundColor(i2);
    }

    public void setProgressBackgroundColorSchemeResource(@ColorRes int i2) {
        setProgressBackgroundColorSchemeColor(androidx.core.content.a.a(getContext(), i2));
    }

    public void setProgressViewEndTarget(boolean z, int i2) {
        this.mSpinnerOffsetEnd = i2;
        this.mScale = z;
        this.mCircleView.invalidate();
    }

    public void setProgressViewOffset(boolean z, int i2, int i3) {
        this.mScale = z;
        this.mOriginalOffsetTop = i2;
        this.mSpinnerOffsetEnd = i3;
        this.mUsingCustomStart = true;
        reset();
        this.mRefreshing = false;
    }

    public void setRefreshing(boolean z) {
        int i2;
        if (z && this.mRefreshing != z) {
            this.mRefreshing = z;
            if (!this.mUsingCustomStart) {
                i2 = this.mSpinnerOffsetEnd + this.mOriginalOffsetTop;
            } else {
                i2 = this.mSpinnerOffsetEnd;
            }
            setTargetOffsetTopAndBottom(i2 - this.mCurrentTargetOffsetTop);
            this.mNotify = false;
            a(this.C);
            return;
        }
        a(z, false);
    }

    public void setSize(int i2) {
        if (i2 == 0 || i2 == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i2 == 0) {
                this.A = (int) (displayMetrics.density * 56.0f);
            } else {
                this.A = (int) (displayMetrics.density * 40.0f);
            }
            this.mCircleView.setImageDrawable(null);
            this.mProgress.a(i2);
            this.mCircleView.setImageDrawable(this.mProgress);
        }
    }

    public void setSlingshotDistance(@Px int i2) {
        this.mCustomSlingshotDistance = i2;
    }

    void setTargetOffsetTopAndBottom(int i2) {
        this.mCircleView.bringToFront();
        ViewCompat.e(this.mCircleView, i2);
        this.mCurrentTargetOffsetTop = this.mCircleView.getTop();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i2) {
        return this.f2865j.b(i2);
    }

    void startScaleDownAnimation(Animation.AnimationListener animationListener) {
        this.w = new c();
        this.w.setDuration(150L);
        this.mCircleView.a(animationListener);
        this.mCircleView.clearAnimation();
        this.mCircleView.startAnimation(this.w);
    }

    @Override // android.view.View, androidx.core.view.m
    public void stopNestedScroll() {
        this.f2865j.c();
    }

    public SwipeRefreshLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRefreshing = false;
        this.f2862g = -1.0f;
        this.f2866k = new int[2];
        this.f2867l = new int[2];
        this.r = -1;
        this.u = -1;
        this.C = new a();
        this.D = new f();
        this.E = new g();
        this.f2861f = ViewConfiguration.get(context).getScaledTouchSlop();
        this.n = getResources().getInteger(R.integer.config_mediumAnimTime);
        setWillNotDraw(false);
        this.t = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.A = (int) (displayMetrics.density * 40.0f);
        a();
        setChildrenDrawingOrderEnabled(true);
        this.mSpinnerOffsetEnd = (int) (displayMetrics.density * 64.0f);
        this.f2862g = this.mSpinnerOffsetEnd;
        this.f2864i = new r(this);
        this.f2865j = new n(this);
        setNestedScrollingEnabled(true);
        int i2 = -this.A;
        this.mCurrentTargetOffsetTop = i2;
        this.mOriginalOffsetTop = i2;
        moveToStart(1.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, G);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
    }

    private void c(float f2) {
        float f3 = this.p;
        float f4 = f2 - f3;
        int i2 = this.f2861f;
        if (f4 <= i2 || this.q) {
            return;
        }
        this.o = f3 + i2;
        this.q = true;
        this.mProgress.setAlpha(76);
    }

    private void b(float f2) {
        this.mProgress.a(true);
        float min = Math.min(1.0f, Math.abs(f2 / this.f2862g));
        double d2 = min;
        Double.isNaN(d2);
        float max = (((float) Math.max(d2 - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float abs = Math.abs(f2) - this.f2862g;
        int i2 = this.mCustomSlingshotDistance;
        if (i2 <= 0) {
            i2 = this.mUsingCustomStart ? this.mSpinnerOffsetEnd - this.mOriginalOffsetTop : this.mSpinnerOffsetEnd;
        }
        float f3 = i2;
        double max2 = Math.max(0.0f, Math.min(abs, f3 * 2.0f) / f3) / 4.0f;
        double pow = Math.pow(max2, 2.0d);
        Double.isNaN(max2);
        float f4 = ((float) (max2 - pow)) * 2.0f;
        int i3 = this.mOriginalOffsetTop + ((int) ((f3 * min) + (f3 * f4 * 2.0f)));
        if (this.mCircleView.getVisibility() != 0) {
            this.mCircleView.setVisibility(0);
        }
        if (!this.mScale) {
            this.mCircleView.setScaleX(1.0f);
            this.mCircleView.setScaleY(1.0f);
        }
        if (this.mScale) {
            setAnimationProgress(Math.min(1.0f, f2 / this.f2862g));
        }
        if (f2 < this.f2862g) {
            if (this.mProgress.getAlpha() > 76 && !a(this.x)) {
                d();
            }
        } else if (this.mProgress.getAlpha() < 255 && !a(this.y)) {
            c();
        }
        this.mProgress.a(0.0f, Math.min(0.8f, max * 0.8f));
        this.mProgress.a(Math.min(1.0f, max));
        this.mProgress.b((((max * 0.4f) - 0.25f) + (f4 * 2.0f)) * 0.5f);
        setTargetOffsetTopAndBottom(i3 - this.mCurrentTargetOffsetTop);
    }

    private void a(Animation.AnimationListener animationListener) {
        this.mCircleView.setVisibility(0);
        this.mProgress.setAlpha(255);
        this.v = new b();
        this.v.setDuration(this.n);
        if (animationListener != null) {
            this.mCircleView.a(animationListener);
        }
        this.mCircleView.clearAnimation();
        this.mCircleView.startAnimation(this.v);
    }

    private void c(int i2, Animation.AnimationListener animationListener) {
        this.mFrom = i2;
        this.mStartingScale = this.mCircleView.getScaleX();
        this.z = new h();
        this.z.setDuration(150L);
        if (animationListener != null) {
            this.mCircleView.a(animationListener);
        }
        this.mCircleView.clearAnimation();
        this.mCircleView.startAnimation(this.z);
    }

    private void a(boolean z, boolean z2) {
        if (this.mRefreshing != z) {
            this.mNotify = z2;
            b();
            this.mRefreshing = z;
            if (this.mRefreshing) {
                a(this.mCurrentTargetOffsetTop, this.C);
            } else {
                startScaleDownAnimation(this.C);
            }
        }
    }

    private Animation a(int i2, int i3) {
        d dVar = new d(i2, i3);
        dVar.setDuration(300L);
        this.mCircleView.a(null);
        this.mCircleView.clearAnimation();
        this.mCircleView.startAnimation(dVar);
        return dVar;
    }

    private boolean a(Animation animation) {
        return (animation == null || !animation.hasStarted() || animation.hasEnded()) ? false : true;
    }

    private void a(float f2) {
        if (f2 > this.f2862g) {
            a(true, true);
            return;
        }
        this.mRefreshing = false;
        this.mProgress.a(0.0f, 0.0f);
        b(this.mCurrentTargetOffsetTop, this.mScale ? null : new e());
        this.mProgress.a(false);
    }

    private void b(int i2, Animation.AnimationListener animationListener) {
        if (this.mScale) {
            c(i2, animationListener);
            return;
        }
        this.mFrom = i2;
        this.E.reset();
        this.E.setDuration(200L);
        this.E.setInterpolator(this.t);
        if (animationListener != null) {
            this.mCircleView.a(animationListener);
        }
        this.mCircleView.clearAnimation();
        this.mCircleView.startAnimation(this.E);
    }

    private void a(int i2, Animation.AnimationListener animationListener) {
        this.mFrom = i2;
        this.D.reset();
        this.D.setDuration(200L);
        this.D.setInterpolator(this.t);
        if (animationListener != null) {
            this.mCircleView.a(animationListener);
        }
        this.mCircleView.clearAnimation();
        this.mCircleView.startAnimation(this.D);
    }

    private void a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.r) {
            this.r = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }
}

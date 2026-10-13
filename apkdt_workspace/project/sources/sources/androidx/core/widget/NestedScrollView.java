package androidx.core.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.core.view.f0.d;
import androidx.core.view.l;
import androidx.core.view.n;
import androidx.core.view.p;
import androidx.core.view.r;
import androidx.core.view.v;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements p, l, v {
    static final int ANIMATED_SCROLL_GAP = 250;
    private static final a E = new a();
    private static final int[] F = {R.attr.fillViewport};
    static final float MAX_SCROLL_FACTOR = 0.5f;
    private final r A;
    private final n B;
    private float C;
    private b D;

    /* renamed from: e, reason: collision with root package name */
    private long f1996e;

    /* renamed from: f, reason: collision with root package name */
    private final Rect f1997f;

    /* renamed from: g, reason: collision with root package name */
    private OverScroller f1998g;

    /* renamed from: h, reason: collision with root package name */
    private EdgeEffect f1999h;

    /* renamed from: i, reason: collision with root package name */
    private EdgeEffect f2000i;

    /* renamed from: j, reason: collision with root package name */
    private int f2001j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f2002k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f2003l;
    private View m;
    private boolean n;
    private VelocityTracker o;
    private boolean p;
    private boolean q;
    private int r;
    private int s;
    private int t;
    private int u;
    private final int[] v;
    private final int[] w;
    private int x;
    private int y;
    private SavedState z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: e, reason: collision with root package name */
        public int f2004e;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @NonNull
        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f2004e + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f2004e);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f2004e = parcel.readInt();
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(NestedScrollView nestedScrollView, int i2, int i3, int i4, int i5);
    }

    public NestedScrollView(@NonNull Context context) {
        this(context, null);
    }

    private static int a(int i2, int i3, int i4) {
        if (i3 >= i4 || i2 < 0) {
            return 0;
        }
        return i3 + i2 > i4 ? i4 - i3 : i2;
    }

    private void a(int i2, int i3, @Nullable int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i2);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.B.a(0, scrollY2, 0, i2 - scrollY2, null, i3, iArr);
    }

    private boolean b() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    private void c() {
        this.n = false;
        h();
        stopNestedScroll(0);
        EdgeEffect edgeEffect = this.f1999h;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            this.f2000i.onRelease();
        }
    }

    private void d() {
        if (getOverScrollMode() != 2) {
            if (this.f1999h == null) {
                Context context = getContext();
                this.f1999h = new EdgeEffect(context);
                this.f2000i = new EdgeEffect(context);
                return;
            }
            return;
        }
        this.f1999h = null;
        this.f2000i = null;
    }

    private void e() {
        VelocityTracker velocityTracker = this.o;
        if (velocityTracker == null) {
            this.o = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    private void f() {
        this.f1998g = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.r = viewConfiguration.getScaledTouchSlop();
        this.s = viewConfiguration.getScaledMinimumFlingVelocity();
        this.t = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    private void g() {
        if (this.o == null) {
            this.o = VelocityTracker.obtain();
        }
    }

    private float getVerticalScrollFactorCompat() {
        if (this.C == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                this.C = typedValue.getDimension(context.getResources().getDisplayMetrics());
            } else {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
        }
        return this.C;
    }

    private void h() {
        VelocityTracker velocityTracker = this.o;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.o = null;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() <= 0) {
            super.addView(view);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    public boolean arrowScroll(int i2) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i2);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus != null && a(findNextFocus, maxScrollAmount, getHeight())) {
            findNextFocus.getDrawingRect(this.f1997f);
            offsetDescendantRectToMyCoords(findNextFocus, this.f1997f);
            a(computeScrollDeltaToGetChildRectOnScreen(this.f1997f));
            findNextFocus.requestFocus(i2);
        } else {
            if (i2 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i2 == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getScrollY() + getHeight()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i2 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            a(maxScrollAmount);
        }
        if (findFocus == null || !findFocus.isFocused() || !a(findFocus)) {
            return true;
        }
        int descendantFocusability = getDescendantFocusability();
        setDescendantFocusability(AntDetector.SCENE_ID_LOGIN_REGIST);
        requestFocus();
        setDescendantFocusability(descendantFocusability);
        return true;
    }

    @Override // android.view.View
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f1998g.isFinished()) {
            return;
        }
        this.f1998g.computeScrollOffset();
        int currY = this.f1998g.getCurrY();
        int i2 = currY - this.y;
        this.y = currY;
        int[] iArr = this.w;
        boolean z = false;
        iArr[1] = 0;
        dispatchNestedPreScroll(0, i2, iArr, null, 1);
        int i3 = i2 - this.w[1];
        int scrollRange = getScrollRange();
        if (i3 != 0) {
            int scrollY = getScrollY();
            overScrollByCompat(0, i3, getScrollX(), scrollY, 0, scrollRange, 0, 0, false);
            int scrollY2 = getScrollY() - scrollY;
            int i4 = i3 - scrollY2;
            int[] iArr2 = this.w;
            iArr2[1] = 0;
            dispatchNestedScroll(0, scrollY2, 0, i4, this.v, 1, iArr2);
            i3 = i4 - this.w[1];
        }
        if (i3 != 0) {
            int overScrollMode = getOverScrollMode();
            if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                z = true;
            }
            if (z) {
                d();
                if (i3 < 0) {
                    if (this.f1999h.isFinished()) {
                        this.f1999h.onAbsorb((int) this.f1998g.getCurrVelocity());
                    }
                } else if (this.f2000i.isFinished()) {
                    this.f2000i.onAbsorb((int) this.f1998g.getCurrVelocity());
                }
            }
            a();
        }
        if (!this.f1998g.isFinished()) {
            ViewCompat.H(this);
        } else {
            stopNestedScroll(1);
        }
    }

    protected int computeScrollDeltaToGetChildRectOnScreen(Rect rect) {
        int i2;
        int i3;
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i5 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i4 - verticalFadingEdgeLength : i4;
        if (rect.bottom > i5 && rect.top > scrollY) {
            if (rect.height() > height) {
                i3 = rect.top - scrollY;
            } else {
                i3 = rect.bottom - i5;
            }
            return Math.min(i3 + 0, (childAt.getBottom() + layoutParams.bottomMargin) - i4);
        }
        if (rect.top >= scrollY || rect.bottom >= i5) {
            return 0;
        }
        if (rect.height() > height) {
            i2 = 0 - (i5 - rect.bottom);
        } else {
            i2 = 0 - (scrollY - rect.top);
        }
        return Math.max(i2, -getScrollY());
    }

    @Override // android.view.View
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        return scrollY < 0 ? bottom - scrollY : scrollY > max ? bottom + (scrollY - max) : bottom;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f2, float f3, boolean z) {
        return this.B.a(f2, f3, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return this.B.a(f2, f3);
    }

    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return this.B.a(i2, i3, iArr, iArr2, i4);
    }

    public void dispatchNestedScroll(int i2, int i3, int i4, int i5, @Nullable int[] iArr, int i6, @NonNull int[] iArr2) {
        this.B.a(i2, i3, i4, i5, iArr, i6, iArr2);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int paddingLeft;
        super.draw(canvas);
        if (this.f1999h != null) {
            int scrollY = getScrollY();
            int i2 = 0;
            if (!this.f1999h.isFinished()) {
                int save = canvas.save();
                int width = getWidth();
                int height = getHeight();
                int min = Math.min(0, scrollY);
                if (Build.VERSION.SDK_INT < 21 || getClipToPadding()) {
                    width -= getPaddingLeft() + getPaddingRight();
                    paddingLeft = getPaddingLeft() + 0;
                } else {
                    paddingLeft = 0;
                }
                if (Build.VERSION.SDK_INT >= 21 && getClipToPadding()) {
                    height -= getPaddingTop() + getPaddingBottom();
                    min += getPaddingTop();
                }
                canvas.translate(paddingLeft, min);
                this.f1999h.setSize(width, height);
                if (this.f1999h.draw(canvas)) {
                    ViewCompat.H(this);
                }
                canvas.restoreToCount(save);
            }
            if (this.f2000i.isFinished()) {
                return;
            }
            int save2 = canvas.save();
            int width2 = getWidth();
            int height2 = getHeight();
            int max = Math.max(getScrollRange(), scrollY) + height2;
            if (Build.VERSION.SDK_INT < 21 || getClipToPadding()) {
                width2 -= getPaddingLeft() + getPaddingRight();
                i2 = 0 + getPaddingLeft();
            }
            if (Build.VERSION.SDK_INT >= 21 && getClipToPadding()) {
                height2 -= getPaddingTop() + getPaddingBottom();
                max -= getPaddingBottom();
            }
            canvas.translate(i2 - width2, max);
            canvas.rotate(180.0f, width2, 0.0f);
            this.f2000i.setSize(width2, height2);
            if (this.f2000i.draw(canvas)) {
                ViewCompat.H(this);
            }
            canvas.restoreToCount(save2);
        }
    }

    public boolean executeKeyEvent(@NonNull KeyEvent keyEvent) {
        this.f1997f.setEmpty();
        if (!b()) {
            if (!isFocused() || keyEvent.getKeyCode() == 4) {
                return false;
            }
            View findFocus = findFocus();
            if (findFocus == this) {
                findFocus = null;
            }
            View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, 130);
            return (findNextFocus == null || findNextFocus == this || !findNextFocus.requestFocus(130)) ? false : true;
        }
        if (keyEvent.getAction() != 0) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 19) {
            if (!keyEvent.isAltPressed()) {
                return arrowScroll(33);
            }
            return fullScroll(33);
        }
        if (keyCode == 20) {
            if (!keyEvent.isAltPressed()) {
                return arrowScroll(130);
            }
            return fullScroll(130);
        }
        if (keyCode != 62) {
            return false;
        }
        pageScroll(keyEvent.isShiftPressed() ? 33 : 130);
        return false;
    }

    public void fling(int i2) {
        if (getChildCount() > 0) {
            this.f1998g.fling(getScrollX(), getScrollY(), 0, i2, 0, 0, e.b.b.a.a.a.c.ALL_INT, Integer.MAX_VALUE, 0, 0);
            a(true);
        }
    }

    public boolean fullScroll(int i2) {
        int childCount;
        boolean z = i2 == 130;
        int height = getHeight();
        Rect rect = this.f1997f;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f1997f.bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
            Rect rect2 = this.f1997f;
            rect2.top = rect2.bottom - height;
        }
        Rect rect3 = this.f1997f;
        return b(i2, rect3.top, rect3.bottom);
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * MAX_SCROLL_FACTOR);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.A.a();
    }

    int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public boolean hasNestedScrollingParent(int i2) {
        return this.B.a(i2);
    }

    public boolean isFillViewport() {
        return this.p;
    }

    @Override // android.view.View, androidx.core.view.m
    public boolean isNestedScrollingEnabled() {
        return this.B.b();
    }

    public boolean isSmoothScrollingEnabled() {
        return this.q;
    }

    @Override // android.view.ViewGroup
    protected void measureChild(View view, int i2, int i3) {
        view.measure(FrameLayout.getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(FrameLayout.getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2003l = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8 && !this.n) {
            float axisValue = motionEvent.getAxisValue(9);
            if (axisValue != 0.0f) {
                int verticalScrollFactorCompat = (int) (axisValue * getVerticalScrollFactorCompat());
                int scrollRange = getScrollRange();
                int scrollY = getScrollY();
                int i2 = scrollY - verticalScrollFactorCompat;
                if (i2 < 0) {
                    i2 = 0;
                } else if (i2 > scrollRange) {
                    i2 = scrollRange;
                }
                if (i2 != scrollY) {
                    super.scrollTo(getScrollX(), i2);
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 2 && this.n) {
            return true;
        }
        int i2 = action & 255;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    int i3 = this.u;
                    if (i3 != -1) {
                        int findPointerIndex = motionEvent.findPointerIndex(i3);
                        if (findPointerIndex == -1) {
                            String str = "Invalid pointerId=" + i3 + " in onInterceptTouchEvent";
                        } else {
                            int y = (int) motionEvent.getY(findPointerIndex);
                            if (Math.abs(y - this.f2001j) > this.r && (2 & getNestedScrollAxes()) == 0) {
                                this.n = true;
                                this.f2001j = y;
                                g();
                                this.o.addMovement(motionEvent);
                                this.x = 0;
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                            }
                        }
                    }
                } else if (i2 != 3) {
                    if (i2 == 6) {
                        a(motionEvent);
                    }
                }
            }
            this.n = false;
            this.u = -1;
            h();
            if (this.f1998g.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                ViewCompat.H(this);
            }
            stopNestedScroll(0);
        } else {
            int y2 = (int) motionEvent.getY();
            if (!a((int) motionEvent.getX(), y2)) {
                this.n = false;
                h();
            } else {
                this.f2001j = y2;
                this.u = motionEvent.getPointerId(0);
                e();
                this.o.addMovement(motionEvent);
                this.f1998g.computeScrollOffset();
                this.n = !this.f1998g.isFinished();
                startNestedScroll(2, 0);
            }
        }
        return this.n;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        int i6 = 0;
        this.f2002k = false;
        View view = this.m;
        if (view != null && a(view, this)) {
            b(this.m);
        }
        this.m = null;
        if (!this.f2003l) {
            if (this.z != null) {
                scrollTo(getScrollX(), this.z.f2004e);
                this.z = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i6 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = ((i5 - i3) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int a2 = a(scrollY, paddingTop, i6);
            if (a2 != scrollY) {
                scrollTo(getScrollX(), a2);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f2003l = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.p && View.MeasureSpec.getMode(i3) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(FrameLayout.getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public boolean onNestedFling(@NonNull View view, float f2, float f3, boolean z) {
        if (z) {
            return false;
        }
        dispatchNestedFling(0.0f, f3, true);
        fling((int) f3);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public boolean onNestedPreFling(@NonNull View view, float f2, float f3) {
        return dispatchNestedPreFling(f2, f3);
    }

    @Override // androidx.core.view.o
    public void onNestedPreScroll(@NonNull View view, int i2, int i3, @NonNull int[] iArr, int i4) {
        dispatchNestedPreScroll(i2, i3, iArr, null, i4);
    }

    @Override // androidx.core.view.p
    public void onNestedScroll(@NonNull View view, int i2, int i3, int i4, int i5, int i6, @NonNull int[] iArr) {
        a(i5, i6, iArr);
    }

    @Override // androidx.core.view.o
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i2, int i3) {
        this.A.a(view, view2, i2, i3);
        startNestedScroll(2, i3);
    }

    @Override // android.view.View
    protected void onOverScrolled(int i2, int i3, boolean z, boolean z2) {
        super.scrollTo(i2, i3);
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i2, Rect rect) {
        View findNextFocusFromRect;
        if (i2 == 2) {
            i2 = 130;
        } else if (i2 == 1) {
            i2 = 33;
        }
        if (rect == null) {
            findNextFocusFromRect = FocusFinder.getInstance().findNextFocus(this, null, i2);
        } else {
            findNextFocusFromRect = FocusFinder.getInstance().findNextFocusFromRect(this, rect, i2);
        }
        if (findNextFocusFromRect == null || a(findNextFocusFromRect)) {
            return false;
        }
        return findNextFocusFromRect.requestFocus(i2, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.z = savedState;
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f2004e = getScrollY();
        return savedState;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i2, int i3, int i4, int i5) {
        super.onScrollChanged(i2, i3, i4, i5);
        b bVar = this.D;
        if (bVar != null) {
            bVar.a(this, i2, i3, i4, i5);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        View findFocus = findFocus();
        if (findFocus == null || this == findFocus || !a(findFocus, 0, i5)) {
            return;
        }
        findFocus.getDrawingRect(this.f1997f);
        offsetDescendantRectToMyCoords(findFocus, this.f1997f);
        a(computeScrollDeltaToGetChildRectOnScreen(this.f1997f));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i2) {
        return onStartNestedScroll(view, view2, i2, 0);
    }

    @Override // androidx.core.view.o
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i2, int i3) {
        return (i2 & 2) != 0;
    }

    @Override // androidx.core.view.o
    public void onStopNestedScroll(@NonNull View view, int i2) {
        this.A.a(view, i2);
        stopNestedScroll(i2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        g();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.x = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(0.0f, this.x);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.o;
                velocityTracker.computeCurrentVelocity(1000, this.t);
                int yVelocity = (int) velocityTracker.getYVelocity(this.u);
                if (Math.abs(yVelocity) >= this.s) {
                    int i2 = -yVelocity;
                    float f2 = i2;
                    if (!dispatchNestedPreFling(0.0f, f2)) {
                        dispatchNestedFling(0.0f, f2, true);
                        fling(i2);
                    }
                } else if (this.f1998g.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    ViewCompat.H(this);
                }
                this.u = -1;
                c();
            } else if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.u);
                if (findPointerIndex == -1) {
                    String str = "Invalid pointerId=" + this.u + " in onTouchEvent";
                } else {
                    int y = (int) motionEvent.getY(findPointerIndex);
                    int i3 = this.f2001j - y;
                    if (!this.n && Math.abs(i3) > this.r) {
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.n = true;
                        i3 = i3 > 0 ? i3 - this.r : i3 + this.r;
                    }
                    int i4 = i3;
                    if (this.n) {
                        if (dispatchNestedPreScroll(0, i4, this.w, this.v, 0)) {
                            i4 -= this.w[1];
                            this.x += this.v[1];
                        }
                        int i5 = i4;
                        this.f2001j = y - this.v[1];
                        int scrollY = getScrollY();
                        int scrollRange = getScrollRange();
                        int overScrollMode = getOverScrollMode();
                        boolean z = overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0);
                        if (overScrollByCompat(0, i5, 0, getScrollY(), 0, scrollRange, 0, 0, true) && !hasNestedScrollingParent(0)) {
                            this.o.clear();
                        }
                        int scrollY2 = getScrollY() - scrollY;
                        int[] iArr = this.w;
                        iArr[1] = 0;
                        dispatchNestedScroll(0, scrollY2, 0, i5 - scrollY2, this.v, 0, iArr);
                        int i6 = this.f2001j;
                        int[] iArr2 = this.v;
                        this.f2001j = i6 - iArr2[1];
                        this.x += iArr2[1];
                        if (z) {
                            int i7 = i5 - this.w[1];
                            d();
                            int i8 = scrollY + i7;
                            if (i8 < 0) {
                                d.a(this.f1999h, i7 / getHeight(), motionEvent.getX(findPointerIndex) / getWidth());
                                if (!this.f2000i.isFinished()) {
                                    this.f2000i.onRelease();
                                }
                            } else if (i8 > scrollRange) {
                                d.a(this.f2000i, i7 / getHeight(), 1.0f - (motionEvent.getX(findPointerIndex) / getWidth()));
                                if (!this.f1999h.isFinished()) {
                                    this.f1999h.onRelease();
                                }
                            }
                            EdgeEffect edgeEffect = this.f1999h;
                            if (edgeEffect != null && (!edgeEffect.isFinished() || !this.f2000i.isFinished())) {
                                ViewCompat.H(this);
                            }
                        }
                    }
                }
            } else if (actionMasked == 3) {
                if (this.n && getChildCount() > 0 && this.f1998g.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    ViewCompat.H(this);
                }
                this.u = -1;
                c();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f2001j = (int) motionEvent.getY(actionIndex);
                this.u = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                a(motionEvent);
                this.f2001j = (int) motionEvent.getY(motionEvent.findPointerIndex(this.u));
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            boolean z2 = !this.f1998g.isFinished();
            this.n = z2;
            if (z2 && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f1998g.isFinished()) {
                a();
            }
            this.f2001j = (int) motionEvent.getY();
            this.u = motionEvent.getPointerId(0);
            startNestedScroll(2, 0);
        }
        VelocityTracker velocityTracker2 = this.o;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0083 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean overScrollByCompat(int r13, int r14, int r15, int r16, int r17, int r18, int r19, int r20, boolean r21) {
        /*
            r12 = this;
            r0 = r12
            int r1 = r12.getOverScrollMode()
            int r2 = r12.computeHorizontalScrollRange()
            int r3 = r12.computeHorizontalScrollExtent()
            r4 = 0
            r5 = 1
            if (r2 <= r3) goto L13
            r2 = 1
            goto L14
        L13:
            r2 = 0
        L14:
            int r3 = r12.computeVerticalScrollRange()
            int r6 = r12.computeVerticalScrollExtent()
            if (r3 <= r6) goto L20
            r3 = 1
            goto L21
        L20:
            r3 = 0
        L21:
            if (r1 == 0) goto L2a
            if (r1 != r5) goto L28
            if (r2 == 0) goto L28
            goto L2a
        L28:
            r2 = 0
            goto L2b
        L2a:
            r2 = 1
        L2b:
            if (r1 == 0) goto L34
            if (r1 != r5) goto L32
            if (r3 == 0) goto L32
            goto L34
        L32:
            r1 = 0
            goto L35
        L34:
            r1 = 1
        L35:
            int r3 = r15 + r13
            if (r2 != 0) goto L3b
            r2 = 0
            goto L3d
        L3b:
            r2 = r19
        L3d:
            int r6 = r16 + r14
            if (r1 != 0) goto L43
            r1 = 0
            goto L45
        L43:
            r1 = r20
        L45:
            int r7 = -r2
            int r2 = r2 + r17
            int r8 = -r1
            int r1 = r1 + r18
            if (r3 <= r2) goto L50
            r7 = r2
        L4e:
            r2 = 1
            goto L55
        L50:
            if (r3 >= r7) goto L53
            goto L4e
        L53:
            r7 = r3
            r2 = 0
        L55:
            if (r6 <= r1) goto L5a
            r6 = r1
        L58:
            r1 = 1
            goto L5f
        L5a:
            if (r6 >= r8) goto L5e
            r6 = r8
            goto L58
        L5e:
            r1 = 0
        L5f:
            if (r1 == 0) goto L7e
            boolean r3 = r12.hasNestedScrollingParent(r5)
            if (r3 != 0) goto L7e
            android.widget.OverScroller r3 = r0.f1998g
            r8 = 0
            r9 = 0
            r10 = 0
            int r11 = r12.getScrollRange()
            r13 = r3
            r14 = r7
            r15 = r6
            r16 = r8
            r17 = r9
            r18 = r10
            r19 = r11
            r13.springBack(r14, r15, r16, r17, r18, r19)
        L7e:
            r12.onOverScrolled(r7, r6, r2, r1)
            if (r2 != 0) goto L85
            if (r1 == 0) goto L86
        L85:
            r4 = 1
        L86:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.overScrollByCompat(int, int, int, int, int, int, int, int, boolean):boolean");
    }

    public boolean pageScroll(int i2) {
        boolean z = i2 == 130;
        int height = getHeight();
        if (z) {
            this.f1997f.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
                Rect rect = this.f1997f;
                if (rect.top + height > bottom) {
                    rect.top = bottom - height;
                }
            }
        } else {
            this.f1997f.top = getScrollY() - height;
            Rect rect2 = this.f1997f;
            if (rect2.top < 0) {
                rect2.top = 0;
            }
        }
        Rect rect3 = this.f1997f;
        int i3 = rect3.top;
        rect3.bottom = height + i3;
        return b(i2, i3, rect3.bottom);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f2002k) {
            b(view2);
        } else {
            this.m = view2;
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return a(rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            h();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f2002k = true;
        super.requestLayout();
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i3) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int a2 = a(i2, width, width2);
            int a3 = a(i3, height, height2);
            if (a2 == getScrollX() && a3 == getScrollY()) {
                return;
            }
            super.scrollTo(a2, a3);
        }
    }

    public void setFillViewport(boolean z) {
        if (z != this.p) {
            this.p = z;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.B.a(z);
    }

    public void setOnScrollChangeListener(@Nullable b bVar) {
        this.D = bVar;
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.q = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    public final void smoothScrollBy(int i2, int i3) {
        a(i2, i3, ANIMATED_SCROLL_GAP, false);
    }

    public final void smoothScrollTo(int i2, int i3) {
        smoothScrollTo(i2, i3, ANIMATED_SCROLL_GAP, false);
    }

    public boolean startNestedScroll(int i2, int i3) {
        return this.B.a(i2, i3);
    }

    @Override // androidx.core.view.k
    public void stopNestedScroll(int i2) {
        this.B.c(i2);
    }

    public NestedScrollView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return dispatchNestedPreScroll(i2, i3, iArr, iArr2, 0);
    }

    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        return this.B.a(i2, i3, i4, i5, iArr, i6);
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return hasNestedScrollingParent(0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public void onNestedPreScroll(@NonNull View view, int i2, int i3, @NonNull int[] iArr) {
        onNestedPreScroll(view, i2, i3, iArr, 0);
    }

    @Override // androidx.core.view.o
    public void onNestedScroll(@NonNull View view, int i2, int i3, int i4, int i5, int i6) {
        a(i5, i6, (int[]) null);
    }

    public final void smoothScrollBy(int i2, int i3, int i4) {
        a(i2, i3, i4, false);
    }

    public final void smoothScrollTo(int i2, int i3, int i4) {
        smoothScrollTo(i2, i3, i4, false);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i2) {
        return startNestedScroll(i2, 0);
    }

    @Override // android.view.View, androidx.core.view.m
    public void stopNestedScroll() {
        stopNestedScroll(0);
    }

    public NestedScrollView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f1997f = new Rect();
        this.f2002k = true;
        this.f2003l = false;
        this.m = null;
        this.n = false;
        this.q = true;
        this.u = -1;
        this.v = new int[2];
        this.w = new int[2];
        f();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, F, i2, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.A = new r(this);
        this.B = new n(this);
        setNestedScrollingEnabled(true);
        ViewCompat.a(this, E);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return this.B.a(i2, i3, i4, i5, iArr);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public void onNestedScroll(@NonNull View view, int i2, int i3, int i4, int i5) {
        a(i5, 0, (int[]) null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i2) {
        onNestedScrollAccepted(view, view2, i2, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.q
    public void onStopNestedScroll(@NonNull View view) {
        onStopNestedScroll(view, 0);
    }

    void smoothScrollTo(int i2, int i3, boolean z) {
        smoothScrollTo(i2, i3, ANIMATED_SCROLL_GAP, z);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2) {
        if (getChildCount() <= 0) {
            super.addView(view, i2);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    void smoothScrollTo(int i2, int i3, int i4, boolean z) {
        a(i2 - getScrollX(), i3 - getScrollY(), i4, z);
    }

    private boolean a(int i2, int i3) {
        if (getChildCount() <= 0) {
            return false;
        }
        int scrollY = getScrollY();
        View childAt = getChildAt(0);
        return i3 >= childAt.getTop() - scrollY && i3 < childAt.getBottom() - scrollY && i2 >= childAt.getLeft() && i2 < childAt.getRight();
    }

    private boolean b(int i2, int i3, int i4) {
        int height = getHeight();
        int scrollY = getScrollY();
        int i5 = height + scrollY;
        boolean z = false;
        boolean z2 = i2 == 33;
        View a2 = a(z2, i3, i4);
        if (a2 == null) {
            a2 = this;
        }
        if (i3 < scrollY || i4 > i5) {
            a(z2 ? i3 - scrollY : i4 - i5);
            z = true;
        }
        if (a2 != findFocus()) {
            a2.requestFocus(i2);
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i2, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    private void b(View view) {
        view.getDrawingRect(this.f1997f);
        offsetDescendantRectToMyCoords(view, this.f1997f);
        int computeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(this.f1997f);
        if (computeScrollDeltaToGetChildRectOnScreen != 0) {
            scrollBy(0, computeScrollDeltaToGetChildRectOnScreen);
        }
    }

    private void a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.u) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.f2001j = (int) motionEvent.getY(i2);
            this.u = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.o;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* loaded from: classes.dex */
    static class a extends androidx.core.view.a {
        a() {
        }

        @Override // androidx.core.view.a
        public boolean a(View view, int i2, Bundle bundle) {
            if (super.a(view, i2, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            if (i2 != 4096) {
                if (i2 == 8192 || i2 == 16908344) {
                    int max = Math.max(nestedScrollView.getScrollY() - ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                    if (max == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.smoothScrollTo(0, max, true);
                    return true;
                }
                if (i2 != 16908346) {
                    return false;
                }
            }
            int min = Math.min(nestedScrollView.getScrollY() + ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
            if (min == nestedScrollView.getScrollY()) {
                return false;
            }
            nestedScrollView.smoothScrollTo(0, min, true);
            return true;
        }

        @Override // androidx.core.view.a
        public void b(View view, AccessibilityEvent accessibilityEvent) {
            super.b(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            androidx.core.view.f0.f.a(accessibilityEvent, nestedScrollView.getScrollX());
            androidx.core.view.f0.f.b(accessibilityEvent, nestedScrollView.getScrollRange());
        }

        @Override // androidx.core.view.a
        public void a(View view, androidx.core.view.f0.d dVar) {
            int scrollRange;
            super.a(view, dVar);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            dVar.a((CharSequence) ScrollView.class.getName());
            if (!nestedScrollView.isEnabled() || (scrollRange = nestedScrollView.getScrollRange()) <= 0) {
                return;
            }
            dVar.m(true);
            if (nestedScrollView.getScrollY() > 0) {
                dVar.a(d.a.f1968h);
                dVar.a(d.a.f1969i);
            }
            if (nestedScrollView.getScrollY() < scrollRange) {
                dVar.a(d.a.f1967g);
                dVar.a(d.a.f1970j);
            }
        }
    }

    private View a(boolean z, int i2, int i3) {
        ArrayList focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z2 = false;
        for (int i4 = 0; i4 < size; i4++) {
            View view2 = (View) focusables.get(i4);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i2 < bottom && top < i3) {
                boolean z3 = i2 < top && bottom < i3;
                if (view == null) {
                    view = view2;
                    z2 = z3;
                } else {
                    boolean z4 = (z && top < view.getTop()) || (!z && bottom > view.getBottom());
                    if (z2) {
                        if (z3) {
                            if (!z4) {
                            }
                            view = view2;
                        }
                    } else if (z3) {
                        view = view2;
                        z2 = true;
                    } else {
                        if (!z4) {
                        }
                        view = view2;
                    }
                }
            }
        }
        return view;
    }

    private boolean a(View view) {
        return !a(view, 0, getHeight());
    }

    private boolean a(View view, int i2, int i3) {
        view.getDrawingRect(this.f1997f);
        offsetDescendantRectToMyCoords(view, this.f1997f);
        return this.f1997f.bottom + i2 >= getScrollY() && this.f1997f.top - i2 <= getScrollY() + i3;
    }

    private void a(int i2) {
        if (i2 != 0) {
            if (this.q) {
                smoothScrollBy(0, i2);
            } else {
                scrollBy(0, i2);
            }
        }
    }

    private void a(int i2, int i3, int i4, boolean z) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f1996e > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            this.f1998g.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i3 + scrollY, Math.max(0, height - height2))) - scrollY, i4);
            a(z);
        } else {
            if (!this.f1998g.isFinished()) {
                a();
            }
            scrollBy(i2, i3);
        }
        this.f1996e = AnimationUtils.currentAnimationTimeMillis();
    }

    private void a(boolean z) {
        if (z) {
            startNestedScroll(2, 1);
        } else {
            stopNestedScroll(1);
        }
        this.y = getScrollY();
        ViewCompat.H(this);
    }

    private void a() {
        this.f1998g.abortAnimation();
        stopNestedScroll(1);
    }

    private boolean a(Rect rect, boolean z) {
        int computeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(rect);
        boolean z2 = computeScrollDeltaToGetChildRectOnScreen != 0;
        if (z2) {
            if (z) {
                scrollBy(0, computeScrollDeltaToGetChildRectOnScreen);
            } else {
                smoothScrollBy(0, computeScrollDeltaToGetChildRectOnScreen);
            }
        }
        return z2;
    }

    private static boolean a(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && a((View) parent, view2);
    }
}

package androidx.slidingpanelayout.widget;

import a.k.a.c;
import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class SlidingPaneLayout extends ViewGroup {

    /* renamed from: e, reason: collision with root package name */
    private int f2817e;

    /* renamed from: f, reason: collision with root package name */
    private int f2818f;

    /* renamed from: g, reason: collision with root package name */
    private Drawable f2819g;

    /* renamed from: h, reason: collision with root package name */
    private Drawable f2820h;

    /* renamed from: i, reason: collision with root package name */
    private final int f2821i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f2822j;

    /* renamed from: k, reason: collision with root package name */
    private float f2823k;

    /* renamed from: l, reason: collision with root package name */
    private int f2824l;
    private float m;
    final a.k.a.c mDragHelper;
    boolean mIsUnableToDrag;
    final ArrayList<b> mPostedRunnables;
    boolean mPreservedOpenState;
    float mSlideOffset;
    int mSlideRange;
    View mSlideableView;
    private float n;
    private d o;
    private boolean p;
    private final Rect q;
    private Method r;
    private Field s;
    private boolean t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: g, reason: collision with root package name */
        boolean f2830g;

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
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f2830g ? 1 : 0);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2830g = parcel.readInt() != 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final View f2833e;

        b(View view) {
            this.f2833e = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2833e.getParent() == SlidingPaneLayout.this) {
                this.f2833e.setLayerType(0, null);
                SlidingPaneLayout.this.invalidateChildRegion(this.f2833e);
            }
            SlidingPaneLayout.this.mPostedRunnables.remove(this);
        }
    }

    /* loaded from: classes.dex */
    private class c extends c.AbstractC0012c {
        c() {
        }

        @Override // a.k.a.c.AbstractC0012c
        public void a(View view, int i2) {
            SlidingPaneLayout.this.setAllChildrenVisible();
        }

        @Override // a.k.a.c.AbstractC0012c
        public boolean b(View view, int i2) {
            if (SlidingPaneLayout.this.mIsUnableToDrag) {
                return false;
            }
            return ((LayoutParams) view.getLayoutParams()).f2827b;
        }

        @Override // a.k.a.c.AbstractC0012c
        public void c(int i2) {
            if (SlidingPaneLayout.this.mDragHelper.f() == 0) {
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                if (slidingPaneLayout.mSlideOffset == 0.0f) {
                    slidingPaneLayout.updateObscuredViewsVisibility(slidingPaneLayout.mSlideableView);
                    SlidingPaneLayout slidingPaneLayout2 = SlidingPaneLayout.this;
                    slidingPaneLayout2.dispatchOnPanelClosed(slidingPaneLayout2.mSlideableView);
                    SlidingPaneLayout.this.mPreservedOpenState = false;
                    return;
                }
                slidingPaneLayout.dispatchOnPanelOpened(slidingPaneLayout.mSlideableView);
                SlidingPaneLayout.this.mPreservedOpenState = true;
            }
        }

        @Override // a.k.a.c.AbstractC0012c
        public void a(View view, int i2, int i3, int i4, int i5) {
            SlidingPaneLayout.this.onPanelDragged(i2);
            SlidingPaneLayout.this.invalidate();
        }

        @Override // a.k.a.c.AbstractC0012c
        public int b(View view, int i2, int i3) {
            return view.getTop();
        }

        @Override // a.k.a.c.AbstractC0012c
        public void a(View view, float f2, float f3) {
            int paddingLeft;
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (SlidingPaneLayout.this.isLayoutRtlSupport()) {
                int paddingRight = SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                if (f2 < 0.0f || (f2 == 0.0f && SlidingPaneLayout.this.mSlideOffset > 0.5f)) {
                    paddingRight += SlidingPaneLayout.this.mSlideRange;
                }
                paddingLeft = (SlidingPaneLayout.this.getWidth() - paddingRight) - SlidingPaneLayout.this.mSlideableView.getWidth();
            } else {
                paddingLeft = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + SlidingPaneLayout.this.getPaddingLeft();
                if (f2 > 0.0f || (f2 == 0.0f && SlidingPaneLayout.this.mSlideOffset > 0.5f)) {
                    paddingLeft += SlidingPaneLayout.this.mSlideRange;
                }
            }
            SlidingPaneLayout.this.mDragHelper.d(paddingLeft, view.getTop());
            SlidingPaneLayout.this.invalidate();
        }

        @Override // a.k.a.c.AbstractC0012c
        public int a(View view) {
            return SlidingPaneLayout.this.mSlideRange;
        }

        @Override // a.k.a.c.AbstractC0012c
        public int a(View view, int i2, int i3) {
            LayoutParams layoutParams = (LayoutParams) SlidingPaneLayout.this.mSlideableView.getLayoutParams();
            if (SlidingPaneLayout.this.isLayoutRtlSupport()) {
                int width = SlidingPaneLayout.this.getWidth() - ((SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + SlidingPaneLayout.this.mSlideableView.getWidth());
                return Math.max(Math.min(i2, width), width - SlidingPaneLayout.this.mSlideRange);
            }
            int paddingLeft = SlidingPaneLayout.this.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            return Math.min(Math.max(i2, paddingLeft), SlidingPaneLayout.this.mSlideRange + paddingLeft);
        }

        @Override // a.k.a.c.AbstractC0012c
        public void a(int i2, int i3) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            slidingPaneLayout.mDragHelper.a(slidingPaneLayout.mSlideableView, i3);
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        void a(@NonNull View view);

        void a(@NonNull View view, float f2);

        void b(@NonNull View view);
    }

    public SlidingPaneLayout(@NonNull Context context) {
        this(context, null);
    }

    private static boolean a(View view) {
        Drawable background;
        if (view.isOpaque()) {
            return true;
        }
        return Build.VERSION.SDK_INT < 18 && (background = view.getBackground()) != null && background.getOpacity() == -1;
    }

    private boolean b(View view, int i2) {
        if (!this.p && !smoothSlideTo(1.0f, i2)) {
            return false;
        }
        this.mPreservedOpenState = true;
        return true;
    }

    protected boolean canScroll(View view, boolean z, int i2, int i3, int i4) {
        int i5;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i6 = i3 + scrollX;
                if (i6 >= childAt.getLeft() && i6 < childAt.getRight() && (i5 = i4 + scrollY) >= childAt.getTop() && i5 < childAt.getBottom() && canScroll(childAt, true, i2, i6 - childAt.getLeft(), i5 - childAt.getTop())) {
                    return true;
                }
            }
        }
        if (z) {
            if (view.canScrollHorizontally(isLayoutRtlSupport() ? i2 : -i2)) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public boolean canSlide() {
        return this.f2822j;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public boolean closePane() {
        return a(this.mSlideableView, 0);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.mDragHelper.a(true)) {
            if (!this.f2822j) {
                this.mDragHelper.a();
            } else {
                ViewCompat.H(this);
            }
        }
    }

    void dispatchOnPanelClosed(View view) {
        d dVar = this.o;
        if (dVar != null) {
            dVar.b(view);
        }
        sendAccessibilityEvent(32);
    }

    void dispatchOnPanelOpened(View view) {
        d dVar = this.o;
        if (dVar != null) {
            dVar.a(view);
        }
        sendAccessibilityEvent(32);
    }

    void dispatchOnPanelSlide(View view) {
        d dVar = this.o;
        if (dVar != null) {
            dVar.a(view, this.mSlideOffset);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable;
        int i2;
        int i3;
        super.draw(canvas);
        if (isLayoutRtlSupport()) {
            drawable = this.f2820h;
        } else {
            drawable = this.f2819g;
        }
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt == null || drawable == null) {
            return;
        }
        int top = childAt.getTop();
        int bottom = childAt.getBottom();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (isLayoutRtlSupport()) {
            i3 = childAt.getRight();
            i2 = intrinsicWidth + i3;
        } else {
            int left = childAt.getLeft();
            int i4 = left - intrinsicWidth;
            i2 = left;
            i3 = i4;
        }
        drawable.setBounds(i3, top, i2, bottom);
        drawable.draw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save();
        if (this.f2822j && !layoutParams.f2827b && this.mSlideableView != null) {
            canvas.getClipBounds(this.q);
            if (isLayoutRtlSupport()) {
                Rect rect = this.q;
                rect.left = Math.max(rect.left, this.mSlideableView.getRight());
            } else {
                Rect rect2 = this.q;
                rect2.right = Math.min(rect2.right, this.mSlideableView.getLeft());
            }
            canvas.clipRect(this.q);
        }
        boolean drawChild = super.drawChild(canvas, view, j2);
        canvas.restoreToCount(save);
        return drawChild;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @ColorInt
    public int getCoveredFadeColor() {
        return this.f2818f;
    }

    @Px
    public int getParallaxDistance() {
        return this.f2824l;
    }

    @ColorInt
    public int getSliderFadeColor() {
        return this.f2817e;
    }

    void invalidateChildRegion(View view) {
        Field field;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 17) {
            ViewCompat.a(view, ((LayoutParams) view.getLayoutParams()).f2829d);
            return;
        }
        if (i2 >= 16) {
            if (!this.t) {
                try {
                    this.r = View.class.getDeclaredMethod("getDisplayList", null);
                } catch (NoSuchMethodException unused) {
                }
                try {
                    this.s = View.class.getDeclaredField("mRecreateDisplayList");
                    this.s.setAccessible(true);
                } catch (NoSuchFieldException unused2) {
                }
                this.t = true;
            }
            if (this.r != null && (field = this.s) != null) {
                try {
                    field.setBoolean(view, true);
                    this.r.invoke(view, null);
                } catch (Exception unused3) {
                }
            } else {
                view.invalidate();
                return;
            }
        }
        ViewCompat.a(this, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    boolean isDimmed(View view) {
        if (view == null) {
            return false;
        }
        return this.f2822j && ((LayoutParams) view.getLayoutParams()).f2828c && this.mSlideOffset > 0.0f;
    }

    boolean isLayoutRtlSupport() {
        return ViewCompat.n(this) == 1;
    }

    public boolean isOpen() {
        return !this.f2822j || this.mSlideOffset == 1.0f;
    }

    public boolean isSlideable() {
        return this.f2822j;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.p = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.p = true;
        int size = this.mPostedRunnables.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mPostedRunnables.get(i2).run();
        }
        this.mPostedRunnables.clear();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View childAt;
        int actionMasked = motionEvent.getActionMasked();
        if (!this.f2822j && actionMasked == 0 && getChildCount() > 1 && (childAt = getChildAt(1)) != null) {
            this.mPreservedOpenState = !this.mDragHelper.a(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
        }
        if (!this.f2822j || (this.mIsUnableToDrag && actionMasked != 0)) {
            this.mDragHelper.b();
            return super.onInterceptTouchEvent(motionEvent);
        }
        if (actionMasked == 3 || actionMasked == 1) {
            this.mDragHelper.b();
            return false;
        }
        if (actionMasked == 0) {
            this.mIsUnableToDrag = false;
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.m = x;
            this.n = y;
            if (this.mDragHelper.a(this.mSlideableView, (int) x, (int) y) && isDimmed(this.mSlideableView)) {
                z = true;
                return this.mDragHelper.b(motionEvent) || z;
            }
        } else if (actionMasked == 2) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            float abs = Math.abs(x2 - this.m);
            float abs2 = Math.abs(y2 - this.n);
            if (abs > this.mDragHelper.e() && abs2 > abs) {
                this.mDragHelper.b();
                this.mIsUnableToDrag = true;
                return false;
            }
        }
        z = false;
        if (this.mDragHelper.b(motionEvent)) {
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean isLayoutRtlSupport = isLayoutRtlSupport();
        if (isLayoutRtlSupport) {
            this.mDragHelper.d(2);
        } else {
            this.mDragHelper.d(1);
        }
        int i11 = i4 - i2;
        int paddingRight = isLayoutRtlSupport ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = isLayoutRtlSupport ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.p) {
            this.mSlideOffset = (this.f2822j && this.mPreservedOpenState) ? 1.0f : 0.0f;
        }
        int i12 = paddingRight;
        int i13 = i12;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.f2827b) {
                    int i15 = i11 - paddingLeft;
                    int min = (Math.min(i12, i15 - this.f2821i) - i13) - (((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                    this.mSlideRange = min;
                    int i16 = isLayoutRtlSupport ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    layoutParams.f2828c = ((i13 + i16) + min) + (measuredWidth / 2) > i15;
                    int i17 = (int) (min * this.mSlideOffset);
                    i6 = i16 + i17 + i13;
                    this.mSlideOffset = i17 / this.mSlideRange;
                    i7 = 0;
                } else if (!this.f2822j || (i8 = this.f2824l) == 0) {
                    i6 = i12;
                    i7 = 0;
                } else {
                    i7 = (int) ((1.0f - this.mSlideOffset) * i8);
                    i6 = i12;
                }
                if (isLayoutRtlSupport) {
                    i10 = (i11 - i6) + i7;
                    i9 = i10 - measuredWidth;
                } else {
                    i9 = i6 - i7;
                    i10 = i9 + measuredWidth;
                }
                childAt.layout(i9, paddingTop, i10, childAt.getMeasuredHeight() + paddingTop);
                i12 += childAt.getWidth();
                i13 = i6;
            }
        }
        if (this.p) {
            if (this.f2822j) {
                if (this.f2824l != 0) {
                    a(this.mSlideOffset);
                }
                if (((LayoutParams) this.mSlideableView.getLayoutParams()).f2828c) {
                    a(this.mSlideableView, this.mSlideOffset, this.f2817e);
                }
            } else {
                for (int i18 = 0; i18 < childCount; i18++) {
                    a(getChildAt(i18), 0.0f, this.f2817e);
                }
            }
            updateObscuredViewsVisibility(this.mSlideableView);
        }
        this.p = false;
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        int paddingTop;
        int i4;
        int i5;
        int makeMeasureSpec;
        int i6;
        int i7;
        int makeMeasureSpec2;
        int makeMeasureSpec3;
        int makeMeasureSpec4;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
            }
            if (mode != Integer.MIN_VALUE && mode == 0) {
                size = 300;
            }
        } else if (mode2 == 0) {
            if (!isInEditMode()) {
                throw new IllegalStateException("Height must not be UNSPECIFIED");
            }
            if (mode2 == 0) {
                mode2 = e.b.b.a.a.a.c.ALL_INT;
                size2 = 300;
            }
        }
        boolean z = false;
        if (mode2 == Integer.MIN_VALUE) {
            paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
            i4 = 0;
        } else if (mode2 != 1073741824) {
            i4 = 0;
            paddingTop = 0;
        } else {
            i4 = (size2 - getPaddingTop()) - getPaddingBottom();
            paddingTop = i4;
        }
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int childCount = getChildCount();
        this.mSlideableView = null;
        int i8 = i4;
        int i9 = paddingLeft;
        int i10 = 0;
        boolean z2 = false;
        float f2 = 0.0f;
        while (true) {
            i5 = 8;
            if (i10 >= childCount) {
                break;
            }
            View childAt = getChildAt(i10);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                layoutParams.f2828c = z;
            } else {
                float f3 = layoutParams.f2826a;
                if (f3 > 0.0f) {
                    f2 += f3;
                    if (((ViewGroup.MarginLayoutParams) layoutParams).width == 0) {
                    }
                }
                int i11 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                if (((ViewGroup.MarginLayoutParams) layoutParams).width == -2) {
                    makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(paddingLeft - i11, e.b.b.a.a.a.c.ALL_INT);
                } else if (((ViewGroup.MarginLayoutParams) layoutParams).width == -1) {
                    makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(paddingLeft - i11, 1073741824);
                } else {
                    makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(((ViewGroup.MarginLayoutParams) layoutParams).width, 1073741824);
                }
                if (((ViewGroup.MarginLayoutParams) layoutParams).height == -2) {
                    makeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(paddingTop, e.b.b.a.a.a.c.ALL_INT);
                } else if (((ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
                    makeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824);
                } else {
                    makeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(((ViewGroup.MarginLayoutParams) layoutParams).height, 1073741824);
                }
                childAt.measure(makeMeasureSpec3, makeMeasureSpec4);
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (mode2 == Integer.MIN_VALUE && measuredHeight > i8) {
                    i8 = Math.min(measuredHeight, paddingTop);
                }
                i9 -= measuredWidth;
                boolean z3 = i9 < 0;
                layoutParams.f2827b = z3;
                boolean z4 = z3 | z2;
                if (layoutParams.f2827b) {
                    this.mSlideableView = childAt;
                }
                z2 = z4;
            }
            i10++;
            z = false;
        }
        if (z2 || f2 > 0.0f) {
            int i12 = paddingLeft - this.f2821i;
            int i13 = 0;
            while (i13 < childCount) {
                View childAt2 = getChildAt(i13);
                if (childAt2.getVisibility() != i5) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != i5) {
                        boolean z5 = ((ViewGroup.MarginLayoutParams) layoutParams2).width == 0 && layoutParams2.f2826a > 0.0f;
                        int measuredWidth2 = z5 ? 0 : childAt2.getMeasuredWidth();
                        if (!z2 || childAt2 == this.mSlideableView) {
                            if (layoutParams2.f2826a > 0.0f) {
                                if (((ViewGroup.MarginLayoutParams) layoutParams2).width == 0) {
                                    if (((ViewGroup.MarginLayoutParams) layoutParams2).height == -2) {
                                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(paddingTop, e.b.b.a.a.a.c.ALL_INT);
                                    } else if (((ViewGroup.MarginLayoutParams) layoutParams2).height == -1) {
                                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824);
                                    } else {
                                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(((ViewGroup.MarginLayoutParams) layoutParams2).height, 1073741824);
                                    }
                                } else {
                                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                }
                                if (z2) {
                                    int i14 = paddingLeft - (((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
                                    i6 = i12;
                                    int makeMeasureSpec5 = View.MeasureSpec.makeMeasureSpec(i14, 1073741824);
                                    if (measuredWidth2 != i14) {
                                        childAt2.measure(makeMeasureSpec5, makeMeasureSpec);
                                    }
                                    i13++;
                                    i12 = i6;
                                    i5 = 8;
                                } else {
                                    i6 = i12;
                                    childAt2.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2 + ((int) ((layoutParams2.f2826a * Math.max(0, i9)) / f2)), 1073741824), makeMeasureSpec);
                                    i13++;
                                    i12 = i6;
                                    i5 = 8;
                                }
                            }
                        } else if (((ViewGroup.MarginLayoutParams) layoutParams2).width < 0 && (measuredWidth2 > i12 || layoutParams2.f2826a > 0.0f)) {
                            if (z5) {
                                if (((ViewGroup.MarginLayoutParams) layoutParams2).height == -2) {
                                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(paddingTop, e.b.b.a.a.a.c.ALL_INT);
                                    i7 = 1073741824;
                                } else if (((ViewGroup.MarginLayoutParams) layoutParams2).height == -1) {
                                    i7 = 1073741824;
                                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824);
                                } else {
                                    i7 = 1073741824;
                                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(((ViewGroup.MarginLayoutParams) layoutParams2).height, 1073741824);
                                }
                            } else {
                                i7 = 1073741824;
                                makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                            }
                            childAt2.measure(View.MeasureSpec.makeMeasureSpec(i12, i7), makeMeasureSpec2);
                        }
                    }
                }
                i6 = i12;
                i13++;
                i12 = i6;
                i5 = 8;
            }
        }
        setMeasuredDimension(size, i8 + getPaddingTop() + getPaddingBottom());
        this.f2822j = z2;
        if (this.mDragHelper.f() == 0 || z2) {
            return;
        }
        this.mDragHelper.a();
    }

    void onPanelDragged(int i2) {
        if (this.mSlideableView == null) {
            this.mSlideOffset = 0.0f;
            return;
        }
        boolean isLayoutRtlSupport = isLayoutRtlSupport();
        LayoutParams layoutParams = (LayoutParams) this.mSlideableView.getLayoutParams();
        int width = this.mSlideableView.getWidth();
        if (isLayoutRtlSupport) {
            i2 = (getWidth() - i2) - width;
        }
        this.mSlideOffset = (i2 - ((isLayoutRtlSupport ? getPaddingRight() : getPaddingLeft()) + (isLayoutRtlSupport ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin))) / this.mSlideRange;
        if (this.f2824l != 0) {
            a(this.mSlideOffset);
        }
        if (layoutParams.f2828c) {
            a(this.mSlideableView, this.mSlideOffset, this.f2817e);
        }
        dispatchOnPanelSlide(this.mSlideableView);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        if (savedState.f2830g) {
            openPane();
        } else {
            closePane();
        }
        this.mPreservedOpenState = savedState.f2830g;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f2830g = isSlideable() ? isOpen() : this.mPreservedOpenState;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            this.p = true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f2822j) {
            return super.onTouchEvent(motionEvent);
        }
        this.mDragHelper.a(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 && isDimmed(this.mSlideableView)) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                float f2 = x - this.m;
                float f3 = y - this.n;
                int e2 = this.mDragHelper.e();
                if ((f2 * f2) + (f3 * f3) < e2 * e2 && this.mDragHelper.a(this.mSlideableView, (int) x, (int) y)) {
                    a(this.mSlideableView, 0);
                }
            }
        } else {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            this.m = x2;
            this.n = y2;
        }
        return true;
    }

    public boolean openPane() {
        return b(this.mSlideableView, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (isInTouchMode() || this.f2822j) {
            return;
        }
        this.mPreservedOpenState = view == this.mSlideableView;
    }

    void setAllChildrenVisible() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    public void setCoveredFadeColor(@ColorInt int i2) {
        this.f2818f = i2;
    }

    public void setPanelSlideListener(@Nullable d dVar) {
        this.o = dVar;
    }

    public void setParallaxDistance(@Px int i2) {
        this.f2824l = i2;
        requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(@Nullable Drawable drawable) {
        this.f2819g = drawable;
    }

    public void setShadowDrawableRight(@Nullable Drawable drawable) {
        this.f2820h = drawable;
    }

    @Deprecated
    public void setShadowResource(@DrawableRes int i2) {
        setShadowDrawable(getResources().getDrawable(i2));
    }

    public void setShadowResourceLeft(int i2) {
        setShadowDrawableLeft(androidx.core.content.a.c(getContext(), i2));
    }

    public void setShadowResourceRight(int i2) {
        setShadowDrawableRight(androidx.core.content.a.c(getContext(), i2));
    }

    public void setSliderFadeColor(@ColorInt int i2) {
        this.f2817e = i2;
    }

    @Deprecated
    public void smoothSlideClosed() {
        closePane();
    }

    @Deprecated
    public void smoothSlideOpen() {
        openPane();
    }

    boolean smoothSlideTo(float f2, int i2) {
        int paddingLeft;
        if (!this.f2822j) {
            return false;
        }
        boolean isLayoutRtlSupport = isLayoutRtlSupport();
        LayoutParams layoutParams = (LayoutParams) this.mSlideableView.getLayoutParams();
        if (isLayoutRtlSupport) {
            paddingLeft = (int) (getWidth() - (((getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + (f2 * this.mSlideRange)) + this.mSlideableView.getWidth()));
        } else {
            paddingLeft = (int) (getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + (f2 * this.mSlideRange));
        }
        a.k.a.c cVar = this.mDragHelper;
        View view = this.mSlideableView;
        if (!cVar.b(view, paddingLeft, view.getTop())) {
            return false;
        }
        setAllChildrenVisible();
        ViewCompat.H(this);
        return true;
    }

    void updateObscuredViewsVisibility(View view) {
        int i2;
        int i3;
        int i4;
        int i5;
        View childAt;
        boolean z;
        View view2 = view;
        boolean isLayoutRtlSupport = isLayoutRtlSupport();
        int width = isLayoutRtlSupport ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = isLayoutRtlSupport ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        if (view2 == null || !a(view)) {
            i2 = 0;
            i3 = 0;
            i4 = 0;
            i5 = 0;
        } else {
            i2 = view.getLeft();
            i3 = view.getRight();
            i4 = view.getTop();
            i5 = view.getBottom();
        }
        int childCount = getChildCount();
        int i6 = 0;
        while (i6 < childCount && (childAt = getChildAt(i6)) != view2) {
            if (childAt.getVisibility() == 8) {
                z = isLayoutRtlSupport;
            } else {
                z = isLayoutRtlSupport;
                childAt.setVisibility((Math.max(isLayoutRtlSupport ? paddingLeft : width, childAt.getLeft()) < i2 || Math.max(paddingTop, childAt.getTop()) < i4 || Math.min(isLayoutRtlSupport ? width : paddingLeft, childAt.getRight()) > i3 || Math.min(height, childAt.getBottom()) > i5) ? 0 : 4);
            }
            i6++;
            view2 = view;
            isLayoutRtlSupport = z;
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: e, reason: collision with root package name */
        private static final int[] f2825e = {R.attr.layout_weight};

        /* renamed from: a, reason: collision with root package name */
        public float f2826a;

        /* renamed from: b, reason: collision with root package name */
        boolean f2827b;

        /* renamed from: c, reason: collision with root package name */
        boolean f2828c;

        /* renamed from: d, reason: collision with root package name */
        Paint f2829d;

        public LayoutParams() {
            super(-1, -1);
            this.f2826a = 0.0f;
        }

        public LayoutParams(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2826a = 0.0f;
        }

        public LayoutParams(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2826a = 0.0f;
        }

        public LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2826a = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f2825e);
            this.f2826a = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f2817e = -858993460;
        this.p = true;
        this.q = new Rect();
        this.mPostedRunnables = new ArrayList<>();
        float f2 = context.getResources().getDisplayMetrics().density;
        this.f2821i = (int) ((32.0f * f2) + 0.5f);
        setWillNotDraw(false);
        ViewCompat.a(this, new a());
        ViewCompat.g(this, 1);
        this.mDragHelper = a.k.a.c.a(this, 0.5f, new c());
        this.mDragHelper.a(f2 * 400.0f);
    }

    private boolean a(View view, int i2) {
        if (!this.p && !smoothSlideTo(0.0f, i2)) {
            return false;
        }
        this.mPreservedOpenState = false;
        return true;
    }

    private void a(View view, float f2, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f2 > 0.0f && i2 != 0) {
            int i3 = (((int) ((((-16777216) & i2) >>> 24) * f2)) << 24) | (i2 & 16777215);
            if (layoutParams.f2829d == null) {
                layoutParams.f2829d = new Paint();
            }
            layoutParams.f2829d.setColorFilter(new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_OVER));
            if (view.getLayerType() != 2) {
                view.setLayerType(2, layoutParams.f2829d);
            }
            invalidateChildRegion(view);
            return;
        }
        if (view.getLayerType() != 0) {
            Paint paint = layoutParams.f2829d;
            if (paint != null) {
                paint.setColorFilter(null);
            }
            b bVar = new b(view);
            this.mPostedRunnables.add(bVar);
            ViewCompat.a(this, bVar);
        }
    }

    /* loaded from: classes.dex */
    class a extends androidx.core.view.a {

        /* renamed from: d, reason: collision with root package name */
        private final Rect f2831d = new Rect();

        a() {
        }

        @Override // androidx.core.view.a
        public void a(View view, androidx.core.view.f0.d dVar) {
            androidx.core.view.f0.d a2 = androidx.core.view.f0.d.a(dVar);
            super.a(view, a2);
            a(dVar, a2);
            a2.w();
            dVar.a((CharSequence) SlidingPaneLayout.class.getName());
            dVar.c(view);
            Object s = ViewCompat.s(view);
            if (s instanceof View) {
                dVar.b((View) s);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i2);
                if (!c(childAt) && childAt.getVisibility() == 0) {
                    ViewCompat.g(childAt, 1);
                    dVar.a(childAt);
                }
            }
        }

        @Override // androidx.core.view.a
        public void b(View view, AccessibilityEvent accessibilityEvent) {
            super.b(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
        }

        public boolean c(View view) {
            return SlidingPaneLayout.this.isDimmed(view);
        }

        @Override // androidx.core.view.a
        public boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (c(view)) {
                return false;
            }
            return super.a(viewGroup, view, accessibilityEvent);
        }

        private void a(androidx.core.view.f0.d dVar, androidx.core.view.f0.d dVar2) {
            Rect rect = this.f2831d;
            dVar2.a(rect);
            dVar.c(rect);
            dVar2.b(rect);
            dVar.d(rect);
            dVar.p(dVar2.v());
            dVar.e(dVar2.h());
            dVar.a(dVar2.d());
            dVar.b(dVar2.e());
            dVar.g(dVar2.o());
            dVar.e(dVar2.n());
            dVar.h(dVar2.p());
            dVar.i(dVar2.q());
            dVar.a(dVar2.k());
            dVar.n(dVar2.u());
            dVar.k(dVar2.r());
            dVar.a(dVar2.b());
            dVar.b(dVar2.g());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(float r10) {
        /*
            r9 = this;
            boolean r0 = r9.isLayoutRtlSupport()
            android.view.View r1 = r9.mSlideableView
            android.view.ViewGroup$LayoutParams r1 = r1.getLayoutParams()
            androidx.slidingpanelayout.widget.SlidingPaneLayout$LayoutParams r1 = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) r1
            boolean r2 = r1.f2828c
            r3 = 0
            if (r2 == 0) goto L1c
            if (r0 == 0) goto L16
            int r1 = r1.rightMargin
            goto L18
        L16:
            int r1 = r1.leftMargin
        L18:
            if (r1 > 0) goto L1c
            r1 = 1
            goto L1d
        L1c:
            r1 = 0
        L1d:
            int r2 = r9.getChildCount()
        L21:
            if (r3 >= r2) goto L59
            android.view.View r4 = r9.getChildAt(r3)
            android.view.View r5 = r9.mSlideableView
            if (r4 != r5) goto L2c
            goto L56
        L2c:
            float r5 = r9.f2823k
            r6 = 1065353216(0x3f800000, float:1.0)
            float r5 = r6 - r5
            int r7 = r9.f2824l
            float r8 = (float) r7
            float r5 = r5 * r8
            int r5 = (int) r5
            r9.f2823k = r10
            float r8 = r6 - r10
            float r7 = (float) r7
            float r8 = r8 * r7
            int r7 = (int) r8
            int r5 = r5 - r7
            if (r0 == 0) goto L44
            int r5 = -r5
        L44:
            r4.offsetLeftAndRight(r5)
            if (r1 == 0) goto L56
            float r5 = r9.f2823k
            if (r0 == 0) goto L4f
            float r5 = r5 - r6
            goto L51
        L4f:
            float r5 = r6 - r5
        L51:
            int r6 = r9.f2818f
            r9.a(r4, r5, r6)
        L56:
            int r3 = r3 + 1
            goto L21
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.a(float):void");
    }
}

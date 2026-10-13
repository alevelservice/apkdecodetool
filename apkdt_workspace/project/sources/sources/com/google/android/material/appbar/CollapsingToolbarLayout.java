package com.google.android.material.appbar;

import a.a.i;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.core.view.e0;
import androidx.core.view.s;
import com.alipay.zoloz.hardware.camera.CameraConstants;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.d;
import com.google.android.material.internal.k;
import e.i.b.c.f;
import e.i.b.c.j;

/* loaded from: classes.dex */
public class CollapsingToolbarLayout extends FrameLayout {
    final com.google.android.material.internal.c collapsingTextHelper;
    int currentOffset;

    /* renamed from: e, reason: collision with root package name */
    private boolean f13599e;

    /* renamed from: f, reason: collision with root package name */
    private int f13600f;

    /* renamed from: g, reason: collision with root package name */
    private Toolbar f13601g;

    /* renamed from: h, reason: collision with root package name */
    private View f13602h;

    /* renamed from: i, reason: collision with root package name */
    private View f13603i;

    /* renamed from: j, reason: collision with root package name */
    private int f13604j;

    /* renamed from: k, reason: collision with root package name */
    private int f13605k;

    /* renamed from: l, reason: collision with root package name */
    private int f13606l;
    e0 lastInsets;
    private int m;
    private final Rect n;
    private boolean o;
    private boolean p;
    private Drawable q;
    private int r;
    private boolean s;
    Drawable statusBarScrim;
    private ValueAnimator t;
    private long u;
    private int v;
    private AppBarLayout.c w;

    /* loaded from: classes.dex */
    class a implements s {
        a() {
        }

        @Override // androidx.core.view.s
        public e0 a(View view, e0 e0Var) {
            return CollapsingToolbarLayout.this.onWindowInsetChanged(e0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CollapsingToolbarLayout.this.setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    /* loaded from: classes.dex */
    private class c implements AppBarLayout.c {
        c() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.b
        public void a(AppBarLayout appBarLayout, int i2) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.currentOffset = i2;
            e0 e0Var = collapsingToolbarLayout.lastInsets;
            int g2 = e0Var != null ? e0Var.g() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                com.google.android.material.appbar.a viewOffsetHelper = CollapsingToolbarLayout.getViewOffsetHelper(childAt);
                int i4 = layoutParams.f13607a;
                if (i4 == 1) {
                    viewOffsetHelper.b(a.i.j.a.a(-i2, 0, CollapsingToolbarLayout.this.getMaxOffsetForPinChild(childAt)));
                } else if (i4 == 2) {
                    viewOffsetHelper.b(Math.round((-i2) * layoutParams.f13608b));
                }
            }
            CollapsingToolbarLayout.this.updateScrimVisibility();
            CollapsingToolbarLayout collapsingToolbarLayout2 = CollapsingToolbarLayout.this;
            if (collapsingToolbarLayout2.statusBarScrim != null && g2 > 0) {
                ViewCompat.H(collapsingToolbarLayout2);
            }
            CollapsingToolbarLayout.this.collapsingTextHelper.b(Math.abs(i2) / ((CollapsingToolbarLayout.this.getHeight() - ViewCompat.o(CollapsingToolbarLayout.this)) - g2));
        }
    }

    public CollapsingToolbarLayout(Context context) {
        this(context, null);
    }

    private void a() {
        if (this.f13599e) {
            Toolbar toolbar = null;
            this.f13601g = null;
            this.f13602h = null;
            int i2 = this.f13600f;
            if (i2 != -1) {
                this.f13601g = (Toolbar) findViewById(i2);
                Toolbar toolbar2 = this.f13601g;
                if (toolbar2 != null) {
                    this.f13602h = a(toolbar2);
                }
            }
            if (this.f13601g == null) {
                int childCount = getChildCount();
                int i3 = 0;
                while (true) {
                    if (i3 >= childCount) {
                        break;
                    }
                    View childAt = getChildAt(i3);
                    if (childAt instanceof Toolbar) {
                        toolbar = (Toolbar) childAt;
                        break;
                    }
                    i3++;
                }
                this.f13601g = toolbar;
            }
            c();
            this.f13599e = false;
        }
    }

    private static int b(@NonNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            return view.getHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        }
        return view.getHeight();
    }

    private boolean c(View view) {
        View view2 = this.f13602h;
        if (view2 == null || view2 == this) {
            if (view == this.f13601g) {
                return true;
            }
        } else if (view == view2) {
            return true;
        }
        return false;
    }

    static com.google.android.material.appbar.a getViewOffsetHelper(View view) {
        com.google.android.material.appbar.a aVar = (com.google.android.material.appbar.a) view.getTag(f.view_offset_helper);
        if (aVar != null) {
            return aVar;
        }
        com.google.android.material.appbar.a aVar2 = new com.google.android.material.appbar.a(view);
        view.setTag(f.view_offset_helper, aVar2);
        return aVar2;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        a();
        if (this.f13601g == null && (drawable = this.q) != null && this.r > 0) {
            drawable.mutate().setAlpha(this.r);
            this.q.draw(canvas);
        }
        if (this.o && this.p) {
            this.collapsingTextHelper.a(canvas);
        }
        if (this.statusBarScrim == null || this.r <= 0) {
            return;
        }
        e0 e0Var = this.lastInsets;
        int g2 = e0Var != null ? e0Var.g() : 0;
        if (g2 > 0) {
            this.statusBarScrim.setBounds(0, -this.currentOffset, getWidth(), g2 - this.currentOffset);
            this.statusBarScrim.mutate().setAlpha(this.r);
            this.statusBarScrim.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j2) {
        boolean z;
        if (this.q == null || this.r <= 0 || !c(view)) {
            z = false;
        } else {
            this.q.mutate().setAlpha(this.r);
            this.q.draw(canvas);
            z = true;
        }
        return super.drawChild(canvas, view, j2) || z;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.statusBarScrim;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.q;
        if (drawable2 != null && drawable2.isStateful()) {
            z |= drawable2.setState(drawableState);
        }
        com.google.android.material.internal.c cVar = this.collapsingTextHelper;
        if (cVar != null) {
            z |= cVar.a(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    public int getCollapsedTitleGravity() {
        return this.collapsingTextHelper.c();
    }

    @NonNull
    public Typeface getCollapsedTitleTypeface() {
        return this.collapsingTextHelper.e();
    }

    @Nullable
    public Drawable getContentScrim() {
        return this.q;
    }

    public int getExpandedTitleGravity() {
        return this.collapsingTextHelper.g();
    }

    public int getExpandedTitleMarginBottom() {
        return this.m;
    }

    public int getExpandedTitleMarginEnd() {
        return this.f13606l;
    }

    public int getExpandedTitleMarginStart() {
        return this.f13604j;
    }

    public int getExpandedTitleMarginTop() {
        return this.f13605k;
    }

    @NonNull
    public Typeface getExpandedTitleTypeface() {
        return this.collapsingTextHelper.h();
    }

    final int getMaxOffsetForPinChild(View view) {
        return ((getHeight() - getViewOffsetHelper(view).a()) - view.getHeight()) - ((FrameLayout.LayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    int getScrimAlpha() {
        return this.r;
    }

    public long getScrimAnimationDuration() {
        return this.u;
    }

    public int getScrimVisibleHeightTrigger() {
        int i2 = this.v;
        if (i2 >= 0) {
            return i2;
        }
        e0 e0Var = this.lastInsets;
        int g2 = e0Var != null ? e0Var.g() : 0;
        int o = ViewCompat.o(this);
        if (o > 0) {
            return Math.min((o * 2) + g2, getHeight());
        }
        return getHeight() / 3;
    }

    @Nullable
    public Drawable getStatusBarScrim() {
        return this.statusBarScrim;
    }

    @Nullable
    public CharSequence getTitle() {
        if (this.o) {
            return this.collapsingTextHelper.j();
        }
        return null;
    }

    public boolean isTitleEnabled() {
        return this.o;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Object parent = getParent();
        if (parent instanceof AppBarLayout) {
            ViewCompat.a(this, ViewCompat.k((View) parent));
            if (this.w == null) {
                this.w = new c();
            }
            ((AppBarLayout) parent).addOnOffsetChangedListener(this.w);
            ViewCompat.I(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.c cVar = this.w;
        if (cVar != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).removeOnOffsetChangedListener(cVar);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        View view;
        super.onLayout(z, i2, i3, i4, i5);
        e0 e0Var = this.lastInsets;
        if (e0Var != null) {
            int g2 = e0Var.g();
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = getChildAt(i6);
                if (!ViewCompat.k(childAt) && childAt.getTop() < g2) {
                    ViewCompat.e(childAt, g2);
                }
            }
        }
        if (this.o && (view = this.f13603i) != null) {
            this.p = ViewCompat.C(view) && this.f13603i.getVisibility() == 0;
            if (this.p) {
                boolean z2 = ViewCompat.n(this) == 1;
                View view2 = this.f13602h;
                if (view2 == null) {
                    view2 = this.f13601g;
                }
                int maxOffsetForPinChild = getMaxOffsetForPinChild(view2);
                d.a(this, this.f13603i, this.n);
                this.collapsingTextHelper.a(this.n.left + (z2 ? this.f13601g.getTitleMarginEnd() : this.f13601g.getTitleMarginStart()), this.n.top + maxOffsetForPinChild + this.f13601g.getTitleMarginTop(), this.n.right + (z2 ? this.f13601g.getTitleMarginStart() : this.f13601g.getTitleMarginEnd()), (this.n.bottom + maxOffsetForPinChild) - this.f13601g.getTitleMarginBottom());
                this.collapsingTextHelper.b(z2 ? this.f13606l : this.f13604j, this.n.top + this.f13605k, (i4 - i2) - (z2 ? this.f13604j : this.f13606l), (i5 - i3) - this.m);
                this.collapsingTextHelper.m();
            }
        }
        int childCount2 = getChildCount();
        for (int i7 = 0; i7 < childCount2; i7++) {
            getViewOffsetHelper(getChildAt(i7)).c();
        }
        if (this.f13601g != null) {
            if (this.o && TextUtils.isEmpty(this.collapsingTextHelper.j())) {
                setTitle(this.f13601g.getTitle());
            }
            View view3 = this.f13602h;
            if (view3 != null && view3 != this) {
                setMinimumHeight(b(view3));
            } else {
                setMinimumHeight(b(this.f13601g));
            }
        }
        updateScrimVisibility();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        a();
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i3);
        e0 e0Var = this.lastInsets;
        int g2 = e0Var != null ? e0Var.g() : 0;
        if (mode != 0 || g2 <= 0) {
            return;
        }
        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + g2, 1073741824));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        Drawable drawable = this.q;
        if (drawable != null) {
            drawable.setBounds(0, 0, i2, i3);
        }
    }

    e0 onWindowInsetChanged(e0 e0Var) {
        e0 e0Var2 = ViewCompat.k(this) ? e0Var : null;
        if (!a.i.m.d.a(this.lastInsets, e0Var2)) {
            this.lastInsets = e0Var2;
            requestLayout();
        }
        return e0Var.c();
    }

    public void setCollapsedTitleGravity(int i2) {
        this.collapsingTextHelper.b(i2);
    }

    public void setCollapsedTitleTextAppearance(@StyleRes int i2) {
        this.collapsingTextHelper.a(i2);
    }

    public void setCollapsedTitleTextColor(@ColorInt int i2) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setCollapsedTitleTypeface(@Nullable Typeface typeface) {
        this.collapsingTextHelper.a(typeface);
    }

    public void setContentScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.q;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            this.q = drawable != null ? drawable.mutate() : null;
            Drawable drawable3 = this.q;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, getWidth(), getHeight());
                this.q.setCallback(this);
                this.q.setAlpha(this.r);
            }
            ViewCompat.H(this);
        }
    }

    public void setContentScrimColor(@ColorInt int i2) {
        setContentScrim(new ColorDrawable(i2));
    }

    public void setContentScrimResource(@DrawableRes int i2) {
        setContentScrim(androidx.core.content.a.c(getContext(), i2));
    }

    public void setExpandedTitleColor(@ColorInt int i2) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setExpandedTitleGravity(int i2) {
        this.collapsingTextHelper.d(i2);
    }

    public void setExpandedTitleMargin(int i2, int i3, int i4, int i5) {
        this.f13604j = i2;
        this.f13605k = i3;
        this.f13606l = i4;
        this.m = i5;
        requestLayout();
    }

    public void setExpandedTitleMarginBottom(int i2) {
        this.m = i2;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i2) {
        this.f13606l = i2;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i2) {
        this.f13604j = i2;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i2) {
        this.f13605k = i2;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(@StyleRes int i2) {
        this.collapsingTextHelper.c(i2);
    }

    public void setExpandedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.collapsingTextHelper.b(colorStateList);
    }

    public void setExpandedTitleTypeface(@Nullable Typeface typeface) {
        this.collapsingTextHelper.b(typeface);
    }

    void setScrimAlpha(int i2) {
        Toolbar toolbar;
        if (i2 != this.r) {
            if (this.q != null && (toolbar = this.f13601g) != null) {
                ViewCompat.H(toolbar);
            }
            this.r = i2;
            ViewCompat.H(this);
        }
    }

    public void setScrimAnimationDuration(@IntRange(from = 0) long j2) {
        this.u = j2;
    }

    public void setScrimVisibleHeightTrigger(@IntRange(from = 0) int i2) {
        if (this.v != i2) {
            this.v = i2;
            updateScrimVisibility();
        }
    }

    public void setScrimsShown(boolean z) {
        setScrimsShown(z, ViewCompat.D(this) && !isInEditMode());
    }

    public void setStatusBarScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.statusBarScrim;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            this.statusBarScrim = drawable != null ? drawable.mutate() : null;
            Drawable drawable3 = this.statusBarScrim;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.statusBarScrim.setState(getDrawableState());
                }
                androidx.core.graphics.drawable.a.a(this.statusBarScrim, ViewCompat.n(this));
                this.statusBarScrim.setVisible(getVisibility() == 0, false);
                this.statusBarScrim.setCallback(this);
                this.statusBarScrim.setAlpha(this.r);
            }
            ViewCompat.H(this);
        }
    }

    public void setStatusBarScrimColor(@ColorInt int i2) {
        setStatusBarScrim(new ColorDrawable(i2));
    }

    public void setStatusBarScrimResource(@DrawableRes int i2) {
        setStatusBarScrim(androidx.core.content.a.c(getContext(), i2));
    }

    public void setTitle(@Nullable CharSequence charSequence) {
        this.collapsingTextHelper.a(charSequence);
        b();
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.o) {
            this.o = z;
            b();
            c();
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z = i2 == 0;
        Drawable drawable = this.statusBarScrim;
        if (drawable != null && drawable.isVisible() != z) {
            this.statusBarScrim.setVisible(z, false);
        }
        Drawable drawable2 = this.q;
        if (drawable2 == null || drawable2.isVisible() == z) {
            return;
        }
        this.q.setVisible(z, false);
    }

    final void updateScrimVisibility() {
        if (this.q == null && this.statusBarScrim == null) {
            return;
        }
        setScrimsShown(getHeight() + this.currentOffset < getScrimVisibleHeightTrigger());
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.q || drawable == this.statusBarScrim;
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void c() {
        View view;
        if (!this.o && (view = this.f13603i) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f13603i);
            }
        }
        if (!this.o || this.f13601g == null) {
            return;
        }
        if (this.f13603i == null) {
            this.f13603i = new View(getContext());
        }
        if (this.f13603i.getParent() == null) {
            this.f13601g.addView(this.f13603i, -1, -1);
        }
    }

    public void setCollapsedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.collapsingTextHelper.a(colorStateList);
    }

    public void setScrimsShown(boolean z, boolean z2) {
        if (this.s != z) {
            if (z2) {
                a(z ? 255 : 0);
            } else {
                setScrimAlpha(z ? 255 : 0);
            }
            this.s = z;
        }
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13599e = true;
        this.n = new Rect();
        this.v = -1;
        this.collapsingTextHelper = new com.google.android.material.internal.c(this);
        this.collapsingTextHelper.b(e.i.b.c.l.a.f17900e);
        TypedArray c2 = k.c(context, attributeSet, e.i.b.c.k.CollapsingToolbarLayout, i2, j.Widget_Design_CollapsingToolbar, new int[0]);
        this.collapsingTextHelper.d(c2.getInt(e.i.b.c.k.CollapsingToolbarLayout_expandedTitleGravity, 8388691));
        this.collapsingTextHelper.b(c2.getInt(e.i.b.c.k.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
        int dimensionPixelSize = c2.getDimensionPixelSize(e.i.b.c.k.CollapsingToolbarLayout_expandedTitleMargin, 0);
        this.m = dimensionPixelSize;
        this.f13606l = dimensionPixelSize;
        this.f13605k = dimensionPixelSize;
        this.f13604j = dimensionPixelSize;
        if (c2.hasValue(e.i.b.c.k.CollapsingToolbarLayout_expandedTitleMarginStart)) {
            this.f13604j = c2.getDimensionPixelSize(e.i.b.c.k.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
        }
        if (c2.hasValue(e.i.b.c.k.CollapsingToolbarLayout_expandedTitleMarginEnd)) {
            this.f13606l = c2.getDimensionPixelSize(e.i.b.c.k.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
        }
        if (c2.hasValue(e.i.b.c.k.CollapsingToolbarLayout_expandedTitleMarginTop)) {
            this.f13605k = c2.getDimensionPixelSize(e.i.b.c.k.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
        }
        if (c2.hasValue(e.i.b.c.k.CollapsingToolbarLayout_expandedTitleMarginBottom)) {
            this.m = c2.getDimensionPixelSize(e.i.b.c.k.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
        }
        this.o = c2.getBoolean(e.i.b.c.k.CollapsingToolbarLayout_titleEnabled, true);
        setTitle(c2.getText(e.i.b.c.k.CollapsingToolbarLayout_title));
        this.collapsingTextHelper.c(j.TextAppearance_Design_CollapsingToolbar_Expanded);
        this.collapsingTextHelper.a(i.TextAppearance_AppCompat_Widget_ActionBar_Title);
        if (c2.hasValue(e.i.b.c.k.CollapsingToolbarLayout_expandedTitleTextAppearance)) {
            this.collapsingTextHelper.c(c2.getResourceId(e.i.b.c.k.CollapsingToolbarLayout_expandedTitleTextAppearance, 0));
        }
        if (c2.hasValue(e.i.b.c.k.CollapsingToolbarLayout_collapsedTitleTextAppearance)) {
            this.collapsingTextHelper.a(c2.getResourceId(e.i.b.c.k.CollapsingToolbarLayout_collapsedTitleTextAppearance, 0));
        }
        this.v = c2.getDimensionPixelSize(e.i.b.c.k.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
        this.u = c2.getInt(e.i.b.c.k.CollapsingToolbarLayout_scrimAnimationDuration, CameraConstants.CAMERA_MAX_WIDTH);
        setContentScrim(c2.getDrawable(e.i.b.c.k.CollapsingToolbarLayout_contentScrim));
        setStatusBarScrim(c2.getDrawable(e.i.b.c.k.CollapsingToolbarLayout_statusBarScrim));
        this.f13600f = c2.getResourceId(e.i.b.c.k.CollapsingToolbarLayout_toolbarId, -1);
        c2.recycle();
        setWillNotDraw(false);
        ViewCompat.a(this, new a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    private void b() {
        setContentDescription(getTitle());
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends FrameLayout.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        int f13607a;

        /* renamed from: b, reason: collision with root package name */
        float f13608b;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f13607a = 0;
            this.f13608b = 0.5f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.i.b.c.k.CollapsingToolbarLayout_Layout);
            this.f13607a = obtainStyledAttributes.getInt(e.i.b.c.k.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            a(obtainStyledAttributes.getFloat(e.i.b.c.k.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f));
            obtainStyledAttributes.recycle();
        }

        public void a(float f2) {
            this.f13608b = f2;
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.f13607a = 0;
            this.f13608b = 0.5f;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f13607a = 0;
            this.f13608b = 0.5f;
        }
    }

    private View a(View view) {
        for (ViewParent parent = view.getParent(); parent != this && parent != null; parent = parent.getParent()) {
            if (parent instanceof View) {
                view = parent;
            }
        }
        return view;
    }

    private void a(int i2) {
        a();
        ValueAnimator valueAnimator = this.t;
        if (valueAnimator == null) {
            this.t = new ValueAnimator();
            this.t.setDuration(this.u);
            this.t.setInterpolator(i2 > this.r ? e.i.b.c.l.a.f17898c : e.i.b.c.l.a.f17899d);
            this.t.addUpdateListener(new b());
        } else if (valueAnimator.isRunning()) {
            this.t.cancel();
        }
        this.t.setIntValues(this.r, i2);
        this.t.start();
    }
}

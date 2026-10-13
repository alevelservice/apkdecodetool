package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.AnimatorRes;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.f;
import androidx.appcompat.widget.h;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.w;
import androidx.core.widget.k;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.a;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.internal.d;
import com.google.android.material.internal.l;
import com.google.android.material.stateful.ExtendableSavedState;
import e.i.b.c.j;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

@CoordinatorLayout.DefaultBehavior(Behavior.class)
/* loaded from: classes.dex */
public class FloatingActionButton extends VisibilityAwareImageButton implements w, k, e.i.b.c.o.a {
    public static final int NO_CUSTOM_SIZE = 0;
    public static final int SIZE_AUTO = -1;
    public static final int SIZE_MINI = 1;
    public static final int SIZE_NORMAL = 0;
    boolean compatPadding;

    /* renamed from: f, reason: collision with root package name */
    private ColorStateList f13790f;

    /* renamed from: g, reason: collision with root package name */
    private PorterDuff.Mode f13791g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private ColorStateList f13792h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private PorterDuff.Mode f13793i;

    /* renamed from: j, reason: collision with root package name */
    private int f13794j;

    /* renamed from: k, reason: collision with root package name */
    private ColorStateList f13795k;

    /* renamed from: l, reason: collision with root package name */
    private int f13796l;
    private int m;
    private int n;
    private int o;
    private final Rect p;
    private final h q;
    private final e.i.b.c.o.c r;
    private com.google.android.material.floatingactionbutton.a s;
    final Rect shadowPadding;

    /* loaded from: classes.dex */
    protected static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: a, reason: collision with root package name */
        private Rect f13797a;

        /* renamed from: b, reason: collision with root package name */
        private b f13798b;

        /* renamed from: c, reason: collision with root package name */
        private boolean f13799c;

        public BaseBehavior() {
            this.f13799c = true;
        }

        private boolean b(View view, FloatingActionButton floatingActionButton) {
            if (!a(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.d) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.hide(this.f13798b, false);
                return true;
            }
            floatingActionButton.show(this.f13798b, false);
            return true;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.i.b.c.k.FloatingActionButton_Behavior_Layout);
            this.f13799c = obtainStyledAttributes.getBoolean(e.i.b.c.k.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            obtainStyledAttributes.recycle();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void a(@NonNull CoordinatorLayout.d dVar) {
            if (dVar.f1628h == 0) {
                dVar.f1628h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean b(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                a(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            }
            if (!a(view)) {
                return false;
            }
            b(view, floatingActionButton);
            return false;
        }

        private static boolean a(@NonNull View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.d) {
                return ((CoordinatorLayout.d) layoutParams).d() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private boolean a(View view, FloatingActionButton floatingActionButton) {
            return this.f13799c && ((CoordinatorLayout.d) floatingActionButton.getLayoutParams()).c() == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        private boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!a(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f13797a == null) {
                this.f13797a = new Rect();
            }
            Rect rect = this.f13797a;
            d.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.hide(this.f13798b, false);
                return true;
            }
            floatingActionButton.show(this.f13798b, false);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i2) {
            List<View> dependencies = coordinatorLayout.getDependencies(floatingActionButton);
            int size = dependencies.size();
            for (int i3 = 0; i3 < size; i3++) {
                View view = dependencies.get(i3);
                if (view instanceof AppBarLayout) {
                    if (a(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (a(view) && b(view, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(floatingActionButton, i2);
            a(coordinatorLayout, floatingActionButton);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean a(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull Rect rect) {
            Rect rect2 = floatingActionButton.shadowPadding;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        private void a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton) {
            int i2;
            Rect rect = floatingActionButton.shadowPadding;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return;
            }
            CoordinatorLayout.d dVar = (CoordinatorLayout.d) floatingActionButton.getLayoutParams();
            int i3 = 0;
            if (floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) dVar).rightMargin) {
                i2 = rect.right;
            } else {
                i2 = floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) dVar).leftMargin ? -rect.left : 0;
            }
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) dVar).bottomMargin) {
                i3 = rect.bottom;
            } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) dVar).topMargin) {
                i3 = -rect.top;
            }
            if (i3 != 0) {
                ViewCompat.e(floatingActionButton, i3);
            }
            if (i2 != 0) {
                ViewCompat.d(floatingActionButton, i2);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface Size {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements a.g {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ b f13800a;

        a(b bVar) {
            this.f13800a = bVar;
        }

        @Override // com.google.android.material.floatingactionbutton.a.g
        public void a() {
            this.f13800a.b(FloatingActionButton.this);
        }

        @Override // com.google.android.material.floatingactionbutton.a.g
        public void b() {
            this.f13800a.a(FloatingActionButton.this);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class b {
        public abstract void a(FloatingActionButton floatingActionButton);

        public abstract void b(FloatingActionButton floatingActionButton);
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    @Nullable
    private a.g a(@Nullable b bVar) {
        if (bVar == null) {
            return null;
        }
        return new a(bVar);
    }

    private void b() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.f13792h;
        if (colorStateList == null) {
            androidx.core.graphics.drawable.a.b(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.f13793i;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(f.a(colorForState, mode));
    }

    private com.google.android.material.floatingactionbutton.a getImpl() {
        if (this.s == null) {
            this.s = a();
        }
        return this.s;
    }

    public void addOnHideAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().a(animatorListener);
    }

    public void addOnShowAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().b(animatorListener);
    }

    public void clearCustomSize() {
        setCustomSize(0);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().a(getDrawableState());
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return this.f13790f;
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f13791g;
    }

    public float getCompatElevation() {
        return getImpl().c();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().e();
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().f();
    }

    @NonNull
    public Drawable getContentBackground() {
        return getImpl().b();
    }

    @Deprecated
    public boolean getContentRect(@NonNull Rect rect) {
        if (!ViewCompat.D(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        a(rect);
        return true;
    }

    @Px
    public int getCustomSize() {
        return this.m;
    }

    public int getExpandedComponentIdHint() {
        return this.r.a();
    }

    public e.i.b.c.l.h getHideMotionSpec() {
        return getImpl().d();
    }

    public void getMeasuredContentRect(@NonNull Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        a(rect);
    }

    @ColorInt
    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f13795k;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    @Nullable
    public ColorStateList getRippleColorStateList() {
        return this.f13795k;
    }

    public e.i.b.c.l.h getShowMotionSpec() {
        return getImpl().g();
    }

    public int getSize() {
        return this.f13796l;
    }

    int getSizeDimension() {
        return a(this.f13796l);
    }

    @Override // androidx.core.view.w
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override // androidx.core.view.w
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Override // androidx.core.widget.k
    @Nullable
    public ColorStateList getSupportImageTintList() {
        return this.f13792h;
    }

    @Override // androidx.core.widget.k
    @Nullable
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f13793i;
    }

    public boolean getUseCompatPadding() {
        return this.compatPadding;
    }

    public void hide() {
        hide(null);
    }

    @Override // e.i.b.c.o.b
    public boolean isExpanded() {
        return this.r.b();
    }

    public boolean isOrWillBeHidden() {
        return getImpl().h();
    }

    public boolean isOrWillBeShown() {
        return getImpl().i();
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().j();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getImpl().m();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().o();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i2, int i3) {
        int sizeDimension = getSizeDimension();
        this.n = (sizeDimension - this.o) / 2;
        getImpl().s();
        int min = Math.min(a(sizeDimension, i2), a(sizeDimension, i3));
        Rect rect = this.shadowPadding;
        setMeasuredDimension(rect.left + min + rect.right, min + rect.top + rect.bottom);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.a());
        this.r.a(extendableSavedState.f13925g.get("expandableWidgetHelper"));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(super.onSaveInstanceState());
        extendableSavedState.f13925g.put("expandableWidgetHelper", this.r.c());
        return extendableSavedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && getContentRect(this.p) && !this.p.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void removeOnHideAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().c(animatorListener);
    }

    public void removeOnShowAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().d(animatorListener);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.f13790f != colorStateList) {
            this.f13790f = colorStateList;
            getImpl().a(colorStateList);
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f13791g != mode) {
            this.f13791g = mode;
            getImpl().a(mode);
        }
    }

    public void setCompatElevation(float f2) {
        getImpl().a(f2);
    }

    public void setCompatElevationResource(@DimenRes int i2) {
        setCompatElevation(getResources().getDimension(i2));
    }

    public void setCompatHoveredFocusedTranslationZ(float f2) {
        getImpl().b(f2);
    }

    public void setCompatHoveredFocusedTranslationZResource(@DimenRes int i2) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i2));
    }

    public void setCompatPressedTranslationZ(float f2) {
        getImpl().d(f2);
    }

    public void setCompatPressedTranslationZResource(@DimenRes int i2) {
        setCompatPressedTranslationZ(getResources().getDimension(i2));
    }

    public void setCustomSize(@Px int i2) {
        if (i2 >= 0) {
            this.m = i2;
            return;
        }
        throw new IllegalArgumentException("Custom size must be non-negative");
    }

    public boolean setExpanded(boolean z) {
        return this.r.a(z);
    }

    public void setExpandedComponentIdHint(@IdRes int i2) {
        this.r.a(i2);
    }

    public void setHideMotionSpec(e.i.b.c.l.h hVar) {
        getImpl().a(hVar);
    }

    public void setHideMotionSpecResource(@AnimatorRes int i2) {
        setHideMotionSpec(e.i.b.c.l.h.a(getContext(), i2));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        super.setImageDrawable(drawable);
        getImpl().r();
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i2) {
        this.q.a(i2);
    }

    public void setRippleColor(@ColorInt int i2) {
        setRippleColor(ColorStateList.valueOf(i2));
    }

    public void setShowMotionSpec(e.i.b.c.l.h hVar) {
        getImpl().b(hVar);
    }

    public void setShowMotionSpecResource(@AnimatorRes int i2) {
        setShowMotionSpec(e.i.b.c.l.h.a(getContext(), i2));
    }

    public void setSize(int i2) {
        this.m = 0;
        if (i2 != this.f13796l) {
            this.f13796l = i2;
            requestLayout();
        }
    }

    @Override // androidx.core.view.w
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // androidx.core.view.w
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    @Override // androidx.core.widget.k
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        if (this.f13792h != colorStateList) {
            this.f13792h = colorStateList;
            b();
        }
    }

    @Override // androidx.core.widget.k
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f13793i != mode) {
            this.f13793i = mode;
            b();
        }
    }

    public void setUseCompatPadding(boolean z) {
        if (this.compatPadding != z) {
            this.compatPadding = z;
            getImpl().n();
        }
    }

    public void show() {
        show(null);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, e.i.b.c.b.floatingActionButtonStyle);
    }

    private int a(int i2) {
        int i3 = this.m;
        if (i3 != 0) {
            return i3;
        }
        Resources resources = getResources();
        if (i2 != -1) {
            if (i2 != 1) {
                return resources.getDimensionPixelSize(e.i.b.c.d.design_fab_size_normal);
            }
            return resources.getDimensionPixelSize(e.i.b.c.d.design_fab_size_mini);
        }
        if (Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470) {
            return a(1);
        }
        return a(0);
    }

    public void hide(@Nullable b bVar) {
        hide(bVar, true);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f13795k != colorStateList) {
            this.f13795k = colorStateList;
            getImpl().b(this.f13795k);
        }
    }

    public void show(@Nullable b bVar) {
        show(bVar, true);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.shadowPadding = new Rect();
        this.p = new Rect();
        TypedArray c2 = com.google.android.material.internal.k.c(context, attributeSet, e.i.b.c.k.FloatingActionButton, i2, j.Widget_Design_FloatingActionButton, new int[0]);
        this.f13790f = e.i.b.c.q.a.a(context, c2, e.i.b.c.k.FloatingActionButton_backgroundTint);
        this.f13791g = l.a(c2.getInt(e.i.b.c.k.FloatingActionButton_backgroundTintMode, -1), null);
        this.f13795k = e.i.b.c.q.a.a(context, c2, e.i.b.c.k.FloatingActionButton_rippleColor);
        this.f13796l = c2.getInt(e.i.b.c.k.FloatingActionButton_fabSize, -1);
        this.m = c2.getDimensionPixelSize(e.i.b.c.k.FloatingActionButton_fabCustomSize, 0);
        this.f13794j = c2.getDimensionPixelSize(e.i.b.c.k.FloatingActionButton_borderWidth, 0);
        float dimension = c2.getDimension(e.i.b.c.k.FloatingActionButton_elevation, 0.0f);
        float dimension2 = c2.getDimension(e.i.b.c.k.FloatingActionButton_hoveredFocusedTranslationZ, 0.0f);
        float dimension3 = c2.getDimension(e.i.b.c.k.FloatingActionButton_pressedTranslationZ, 0.0f);
        this.compatPadding = c2.getBoolean(e.i.b.c.k.FloatingActionButton_useCompatPadding, false);
        this.o = c2.getDimensionPixelSize(e.i.b.c.k.FloatingActionButton_maxImageSize, 0);
        e.i.b.c.l.h a2 = e.i.b.c.l.h.a(context, c2, e.i.b.c.k.FloatingActionButton_showMotionSpec);
        e.i.b.c.l.h a3 = e.i.b.c.l.h.a(context, c2, e.i.b.c.k.FloatingActionButton_hideMotionSpec);
        c2.recycle();
        this.q = new h(this);
        this.q.a(attributeSet, i2);
        this.r = new e.i.b.c.o.c(this);
        getImpl().a(this.f13790f, this.f13791g, this.f13795k, this.f13794j);
        getImpl().a(dimension);
        getImpl().b(dimension2);
        getImpl().d(dimension3);
        getImpl().a(this.o);
        getImpl().b(a2);
        getImpl().a(a3);
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    void hide(@Nullable b bVar, boolean z) {
        getImpl().a(a(bVar), z);
    }

    void show(b bVar, boolean z) {
        getImpl().b(a(bVar), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c implements e.i.b.c.s.b {
        c() {
        }

        @Override // e.i.b.c.s.b
        public void a(int i2, int i3, int i4, int i5) {
            FloatingActionButton.this.shadowPadding.set(i2, i3, i4, i5);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.setPadding(i2 + floatingActionButton.n, i3 + FloatingActionButton.this.n, i4 + FloatingActionButton.this.n, i5 + FloatingActionButton.this.n);
        }

        @Override // e.i.b.c.s.b
        public float b() {
            return FloatingActionButton.this.getSizeDimension() / 2.0f;
        }

        @Override // e.i.b.c.s.b
        public void a(Drawable drawable) {
            FloatingActionButton.super.setBackgroundDrawable(drawable);
        }

        @Override // e.i.b.c.s.b
        public boolean a() {
            return FloatingActionButton.this.compatPadding;
        }
    }

    private void a(@NonNull Rect rect) {
        int i2 = rect.left;
        Rect rect2 = this.shadowPadding;
        rect.left = i2 + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    private static int a(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(i2, size);
        }
        if (mode == 0) {
            return i2;
        }
        if (mode == 1073741824) {
            return size;
        }
        throw new IllegalArgumentException();
    }

    private com.google.android.material.floatingactionbutton.a a() {
        if (Build.VERSION.SDK_INT >= 21) {
            return new com.google.android.material.floatingactionbutton.b(this, new c());
        }
        return new com.google.android.material.floatingactionbutton.a(this, new c());
    }
}

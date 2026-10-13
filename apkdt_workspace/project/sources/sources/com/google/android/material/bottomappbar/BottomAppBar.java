package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Dimension;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.k;
import e.i.b.c.j;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.b {
    public static final int FAB_ALIGNMENT_MODE_CENTER = 0;
    public static final int FAB_ALIGNMENT_MODE_END = 1;
    private final int P;
    private final e.i.b.c.t.c Q;
    private final com.google.android.material.bottomappbar.a R;

    @Nullable
    private Animator S;

    @Nullable
    private Animator T;

    @Nullable
    private Animator U;
    private int V;
    private boolean W;
    private boolean a0;
    AnimatorListenerAdapter fabAnimationListener;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface FabAlignmentMode {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: g, reason: collision with root package name */
        int f13656g;

        /* renamed from: h, reason: collision with root package name */
        boolean f13657h;

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

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f13656g);
            parcel.writeInt(this.f13657h ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f13656g = parcel.readInt();
            this.f13657h = parcel.readInt() != 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.T = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BottomAppBar.this.R.e(((Float) valueAnimator.getAnimatedValue()).floatValue());
            BottomAppBar.this.Q.invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.U = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        public boolean f13661e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ ActionMenuView f13662f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ int f13663g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ boolean f13664h;

        d(ActionMenuView actionMenuView, int i2, boolean z) {
            this.f13662f = actionMenuView;
            this.f13663g = i2;
            this.f13664h = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f13661e = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f13661e) {
                return;
            }
            BottomAppBar.this.a(this.f13662f, this.f13663g, this.f13664h);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e extends AnimatorListenerAdapter {
        e() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.S = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f implements ValueAnimator.AnimatorUpdateListener {
        f() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BottomAppBar.this.Q.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* loaded from: classes.dex */
    class g extends AnimatorListenerAdapter {
        g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.b(bottomAppBar.a0);
            BottomAppBar bottomAppBar2 = BottomAppBar.this;
            bottomAppBar2.a(bottomAppBar2.V, BottomAppBar.this.a0);
        }
    }

    public BottomAppBar(Context context) {
        this(context, null, 0);
    }

    private void a(int i2, List<Animator> list) {
        if (this.a0) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.R.e(), a(i2));
            ofFloat.addUpdateListener(new b());
            ofFloat.setDuration(300L);
            list.add(ofFloat);
        }
    }

    private void b(int i2) {
        if (this.V == i2 || !ViewCompat.D(this)) {
            return;
        }
        Animator animator = this.T;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        a(i2, arrayList);
        b(i2, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.T = animatorSet;
        this.T.addListener(new a());
        this.T.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        Animator animator;
        Animator animator2;
        Animator animator3 = this.S;
        return (animator3 != null && animator3.isRunning()) || ((animator = this.U) != null && animator.isRunning()) || ((animator2 = this.T) != null && animator2.isRunning());
    }

    private boolean d() {
        FloatingActionButton b2 = b();
        return b2 != null && b2.isOrWillBeShown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.R.e(getFabTranslationX());
        FloatingActionButton b2 = b();
        this.Q.a((this.a0 && d()) ? 1.0f : 0.0f);
        if (b2 != null) {
            b2.setTranslationY(getFabTranslationY());
            b2.setTranslationX(getFabTranslationX());
        }
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView != null) {
            actionMenuView.setAlpha(1.0f);
            if (!d()) {
                a(actionMenuView, 0, false);
            } else {
                a(actionMenuView, this.V, this.a0);
            }
        }
    }

    @Nullable
    private ActionMenuView getActionMenuView() {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    private float getFabTranslationX() {
        return a(this.V);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationY() {
        return a(this.a0);
    }

    @Nullable
    public ColorStateList getBackgroundTint() {
        return this.Q.b();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    @NonNull
    public CoordinatorLayout.Behavior<BottomAppBar> getBehavior() {
        return new Behavior();
    }

    @Dimension
    public float getCradleVerticalOffset() {
        return this.R.a();
    }

    public int getFabAlignmentMode() {
        return this.V;
    }

    public float getFabCradleMargin() {
        return this.R.b();
    }

    @Dimension
    public float getFabCradleRoundedCornerRadius() {
        return this.R.c();
    }

    public boolean getHideOnScroll() {
        return this.W;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        a();
        e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        this.V = savedState.f13656g;
        this.a0 = savedState.f13657h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f13656g = this.V;
        savedState.f13657h = this.a0;
        return savedState;
    }

    public void replaceMenu(@MenuRes int i2) {
        getMenu().clear();
        inflateMenu(i2);
    }

    public void setBackgroundTint(@Nullable ColorStateList colorStateList) {
        androidx.core.graphics.drawable.a.a(this.Q, colorStateList);
    }

    public void setCradleVerticalOffset(@Dimension float f2) {
        if (f2 != getCradleVerticalOffset()) {
            this.R.a(f2);
            this.Q.invalidateSelf();
        }
    }

    public void setFabAlignmentMode(int i2) {
        b(i2);
        a(i2, this.a0);
        this.V = i2;
    }

    public void setFabCradleMargin(@Dimension float f2) {
        if (f2 != getFabCradleMargin()) {
            this.R.b(f2);
            this.Q.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(@Dimension float f2) {
        if (f2 != getFabCradleRoundedCornerRadius()) {
            this.R.c(f2);
            this.Q.invalidateSelf();
        }
    }

    void setFabDiameter(@Px int i2) {
        float f2 = i2;
        if (f2 != this.R.d()) {
            this.R.d(f2);
            this.Q.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z) {
        this.W = z;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    /* loaded from: classes.dex */
    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* renamed from: d, reason: collision with root package name */
        private final Rect f13655d;

        public Behavior() {
            this.f13655d = new Rect();
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f13655d = new Rect();
        }

        private boolean a(FloatingActionButton floatingActionButton, BottomAppBar bottomAppBar) {
            ((CoordinatorLayout.d) floatingActionButton.getLayoutParams()).f1624d = 17;
            bottomAppBar.a(floatingActionButton);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior
        public void b(BottomAppBar bottomAppBar) {
            super.b((Behavior) bottomAppBar);
            FloatingActionButton b2 = bottomAppBar.b();
            if (b2 != null) {
                b2.clearAnimation();
                b2.animate().translationY(bottomAppBar.getFabTranslationY()).setInterpolator(e.i.b.c.l.a.f17899d).setDuration(225L);
            }
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean a(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i2) {
            FloatingActionButton b2 = bottomAppBar.b();
            if (b2 != null) {
                a(b2, bottomAppBar);
                b2.getMeasuredContentRect(this.f13655d);
                bottomAppBar.setFabDiameter(this.f13655d.height());
            }
            if (!bottomAppBar.c()) {
                bottomAppBar.e();
            }
            coordinatorLayout.onLayoutChild(bottomAppBar, i2);
            return super.a(coordinatorLayout, (CoordinatorLayout) bottomAppBar, i2);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, @NonNull View view, @NonNull View view2, int i2, int i3) {
            return bottomAppBar.getHideOnScroll() && super.b(coordinatorLayout, bottomAppBar, view, view2, i2, i3);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior
        public void a(BottomAppBar bottomAppBar) {
            super.a((Behavior) bottomAppBar);
            FloatingActionButton b2 = bottomAppBar.b();
            if (b2 != null) {
                b2.getContentRect(this.f13655d);
                float measuredHeight = b2.getMeasuredHeight() - this.f13655d.height();
                b2.clearAnimation();
                b2.animate().translationY((-b2.getPaddingBottom()) + measuredHeight).setInterpolator(e.i.b.c.l.a.f17898c).setDuration(175L);
            }
        }
    }

    public BottomAppBar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, e.i.b.c.b.bottomAppBarStyle);
    }

    public BottomAppBar(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.a0 = true;
        this.fabAnimationListener = new g();
        TypedArray c2 = k.c(context, attributeSet, e.i.b.c.k.BottomAppBar, i2, j.Widget_MaterialComponents_BottomAppBar, new int[0]);
        ColorStateList a2 = e.i.b.c.q.a.a(context, c2, e.i.b.c.k.BottomAppBar_backgroundTint);
        float dimensionPixelOffset = c2.getDimensionPixelOffset(e.i.b.c.k.BottomAppBar_fabCradleMargin, 0);
        float dimensionPixelOffset2 = c2.getDimensionPixelOffset(e.i.b.c.k.BottomAppBar_fabCradleRoundedCornerRadius, 0);
        float dimensionPixelOffset3 = c2.getDimensionPixelOffset(e.i.b.c.k.BottomAppBar_fabCradleVerticalOffset, 0);
        this.V = c2.getInt(e.i.b.c.k.BottomAppBar_fabAlignmentMode, 0);
        this.W = c2.getBoolean(e.i.b.c.k.BottomAppBar_hideOnScroll, false);
        c2.recycle();
        this.P = getResources().getDimensionPixelOffset(e.i.b.c.d.mtrl_bottomappbar_fabOffsetEndMode);
        this.R = new com.google.android.material.bottomappbar.a(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        e.i.b.c.t.e eVar = new e.i.b.c.t.e();
        eVar.a(this.R);
        this.Q = new e.i.b.c.t.c(eVar);
        this.Q.a(true);
        this.Q.a(Paint.Style.FILL);
        androidx.core.graphics.drawable.a.a(this.Q, a2);
        ViewCompat.a(this, this.Q);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, boolean z) {
        if (ViewCompat.D(this)) {
            Animator animator = this.U;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (!d()) {
                i2 = 0;
                z = false;
            }
            a(i2, z, arrayList);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.U = animatorSet;
            this.U.addListener(new c());
            this.U.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public FloatingActionButton b() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).getDependents(this)) {
            if (view instanceof FloatingActionButton) {
                return (FloatingActionButton) view;
            }
        }
        return null;
    }

    private void b(int i2, List<Animator> list) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(b(), "translationX", a(i2));
        ofFloat.setDuration(300L);
        list.add(ofFloat);
    }

    private void a(int i2, boolean z, List<Animator> list) {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        Animator ofFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        if ((!this.a0 && (!z || !d())) || (this.V != 1 && i2 != 1)) {
            if (actionMenuView.getAlpha() < 1.0f) {
                list.add(ofFloat);
            }
        } else {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
            ofFloat2.addListener(new d(actionMenuView, i2, z));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(150L);
            animatorSet.playSequentially(ofFloat2, ofFloat);
            list.add(animatorSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        if (ViewCompat.D(this)) {
            Animator animator = this.S;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            a(z && d(), arrayList);
            b(z, arrayList);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.S = animatorSet;
            this.S.addListener(new e());
            this.S.start();
        }
    }

    private void a(boolean z, List<Animator> list) {
        if (z) {
            this.R.e(getFabTranslationX());
        }
        float[] fArr = new float[2];
        fArr[0] = this.Q.a();
        fArr[1] = z ? 1.0f : 0.0f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.addUpdateListener(new f());
        ofFloat.setDuration(300L);
        list.add(ofFloat);
    }

    private void b(boolean z, List<Animator> list) {
        FloatingActionButton b2 = b();
        if (b2 == null) {
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(b2, "translationY", a(z));
        ofFloat.setDuration(300L);
        list.add(ofFloat);
    }

    private void b(@NonNull FloatingActionButton floatingActionButton) {
        floatingActionButton.removeOnHideAnimationListener(this.fabAnimationListener);
        floatingActionButton.removeOnShowAnimationListener(this.fabAnimationListener);
    }

    private float a(boolean z) {
        FloatingActionButton b2 = b();
        if (b2 == null) {
            return 0.0f;
        }
        Rect rect = new Rect();
        b2.getContentRect(rect);
        float height = rect.height();
        if (height == 0.0f) {
            height = b2.getMeasuredHeight();
        }
        float height2 = b2.getHeight() - rect.bottom;
        float height3 = b2.getHeight() - rect.height();
        float f2 = (-getCradleVerticalOffset()) + (height / 2.0f) + height2;
        float paddingBottom = height3 - b2.getPaddingBottom();
        float f3 = -getMeasuredHeight();
        if (z) {
            paddingBottom = f2;
        }
        return f3 + paddingBottom;
    }

    private int a(int i2) {
        boolean z = ViewCompat.n(this) == 1;
        if (i2 == 1) {
            return ((getMeasuredWidth() / 2) - this.P) * (z ? -1 : 1);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ActionMenuView actionMenuView, int i2, boolean z) {
        boolean z2 = ViewCompat.n(this) == 1;
        int i3 = 0;
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            View childAt = getChildAt(i4);
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).f727a & 8388615) == 8388611) {
                i3 = Math.max(i3, z2 ? childAt.getLeft() : childAt.getRight());
            }
        }
        actionMenuView.setTranslationX((i2 == 1 && z) ? i3 - (z2 ? actionMenuView.getRight() : actionMenuView.getLeft()) : 0.0f);
    }

    private void a() {
        Animator animator = this.S;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.U;
        if (animator2 != null) {
            animator2.cancel();
        }
        Animator animator3 = this.T;
        if (animator3 != null) {
            animator3.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@NonNull FloatingActionButton floatingActionButton) {
        b(floatingActionButton);
        floatingActionButton.addOnHideAnimationListener(this.fabAnimationListener);
        floatingActionButton.addOnShowAnimationListener(this.fabAnimationListener);
    }
}

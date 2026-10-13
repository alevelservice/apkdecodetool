package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbsActionBarView.java */
/* loaded from: classes.dex */
public abstract class a extends ViewGroup {

    /* renamed from: e, reason: collision with root package name */
    private boolean f1272e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f1273f;
    protected ActionMenuPresenter mActionMenuPresenter;
    protected int mContentHeight;
    protected ActionMenuView mMenuView;
    protected final Context mPopupContext;
    protected final b mVisAnimListener;
    protected androidx.core.view.a0 mVisibilityAnim;

    /* compiled from: AbsActionBarView.java */
    /* renamed from: androidx.appcompat.widget.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class RunnableC0024a implements Runnable {
        RunnableC0024a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.showOverflowMenu();
        }
    }

    a(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int next(int i2, int i3, boolean z) {
        return z ? i2 - i3 : i2 + i3;
    }

    public void animateToVisibility(int i2) {
        setupAnimatorToVisibility(i2, 200L).c();
    }

    public boolean canShowOverflowMenu() {
        return isOverflowReserved() && getVisibility() == 0;
    }

    public void dismissPopupMenus() {
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.d();
        }
    }

    public int getAnimatedVisibility() {
        if (this.mVisibilityAnim != null) {
            return this.mVisAnimListener.f1276b;
        }
        return getVisibility();
    }

    public int getContentHeight() {
        return this.mContentHeight;
    }

    public abstract boolean hideOverflowMenu();

    public boolean isOverflowMenuShowPending() {
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.h();
        }
        return false;
    }

    public abstract boolean isOverflowMenuShowing();

    public boolean isOverflowReserved() {
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        return actionMenuPresenter != null && actionMenuPresenter.j();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int measureChildView(View view, int i2, int i3, int i4) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, e.b.b.a.a.a.c.ALL_INT), i3);
        return Math.max(0, (i2 - view.getMeasuredWidth()) - i4);
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, a.a.j.ActionBar, a.a.a.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(a.a.j.ActionBar_height, 0));
        obtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.a(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1273f = false;
        }
        if (!this.f1273f) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f1273f = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f1273f = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1272e = false;
        }
        if (!this.f1272e) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f1272e = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f1272e = false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int positionChild(View view, int i2, int i3, int i4, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i5 = i3 + ((i4 - measuredHeight) / 2);
        if (z) {
            view.layout(i2 - measuredWidth, i5, i2, measuredHeight + i5);
        } else {
            view.layout(i2, i5, i2 + measuredWidth, measuredHeight + i5);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    public void postShowOverflowMenu() {
        post(new RunnableC0024a());
    }

    public abstract void setContentHeight(int i2);

    @Override // android.view.View
    public void setVisibility(int i2) {
        if (i2 != getVisibility()) {
            androidx.core.view.a0 a0Var = this.mVisibilityAnim;
            if (a0Var != null) {
                a0Var.a();
            }
            super.setVisibility(i2);
        }
    }

    public androidx.core.view.a0 setupAnimatorToVisibility(int i2, long j2) {
        androidx.core.view.a0 a0Var = this.mVisibilityAnim;
        if (a0Var != null) {
            a0Var.a();
        }
        if (i2 == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            androidx.core.view.a0 a2 = ViewCompat.a(this);
            a2.a(1.0f);
            a2.a(j2);
            b bVar = this.mVisAnimListener;
            bVar.a(a2, i2);
            a2.a(bVar);
            return a2;
        }
        androidx.core.view.a0 a3 = ViewCompat.a(this);
        a3.a(0.0f);
        a3.a(j2);
        b bVar2 = this.mVisAnimListener;
        bVar2.a(a3, i2);
        a3.a(bVar2);
        return a3;
    }

    public abstract boolean showOverflowMenu();

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: AbsActionBarView.java */
    /* loaded from: classes.dex */
    public class b implements androidx.core.view.b0 {

        /* renamed from: a, reason: collision with root package name */
        private boolean f1275a = false;

        /* renamed from: b, reason: collision with root package name */
        int f1276b;

        protected b() {
        }

        public b a(androidx.core.view.a0 a0Var, int i2) {
            a.this.mVisibilityAnim = a0Var;
            this.f1276b = i2;
            return this;
        }

        @Override // androidx.core.view.b0
        public void b(View view) {
            if (this.f1275a) {
                return;
            }
            a aVar = a.this;
            aVar.mVisibilityAnim = null;
            a.super.setVisibility(this.f1276b);
        }

        @Override // androidx.core.view.b0
        public void c(View view) {
            a.super.setVisibility(0);
            this.f1275a = false;
        }

        @Override // androidx.core.view.b0
        public void a(View view) {
            this.f1275a = true;
        }
    }

    a(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        int i3;
        this.mVisAnimListener = new b();
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(a.a.a.actionBarPopupTheme, typedValue, true) && (i3 = typedValue.resourceId) != 0) {
            this.mPopupContext = new ContextThemeWrapper(context, i3);
        } else {
            this.mPopupContext = context;
        }
    }
}

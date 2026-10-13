package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ActionBarContextView extends androidx.appcompat.widget.a {

    /* renamed from: g, reason: collision with root package name */
    private CharSequence f1060g;

    /* renamed from: h, reason: collision with root package name */
    private CharSequence f1061h;

    /* renamed from: i, reason: collision with root package name */
    private View f1062i;

    /* renamed from: j, reason: collision with root package name */
    private View f1063j;

    /* renamed from: k, reason: collision with root package name */
    private LinearLayout f1064k;

    /* renamed from: l, reason: collision with root package name */
    private TextView f1065l;
    private TextView m;
    private int n;
    private int o;
    private boolean p;
    private int q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ a.a.n.b f1066e;

        a(ActionBarContextView actionBarContextView, a.a.n.b bVar) {
            this.f1066e = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f1066e.a();
        }
    }

    public ActionBarContextView(@NonNull Context context) {
        this(context, null);
    }

    private void a() {
        if (this.f1064k == null) {
            LayoutInflater.from(getContext()).inflate(a.a.g.abc_action_bar_title_item, this);
            this.f1064k = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f1065l = (TextView) this.f1064k.findViewById(a.a.f.action_bar_title);
            this.m = (TextView) this.f1064k.findViewById(a.a.f.action_bar_subtitle);
            if (this.n != 0) {
                this.f1065l.setTextAppearance(getContext(), this.n);
            }
            if (this.o != 0) {
                this.m.setTextAppearance(getContext(), this.o);
            }
        }
        this.f1065l.setText(this.f1060g);
        this.m.setText(this.f1061h);
        boolean z = !TextUtils.isEmpty(this.f1060g);
        boolean z2 = !TextUtils.isEmpty(this.f1061h);
        int i2 = 0;
        this.m.setVisibility(z2 ? 0 : 8);
        LinearLayout linearLayout = this.f1064k;
        if (!z && !z2) {
            i2 = 8;
        }
        linearLayout.setVisibility(i2);
        if (this.f1064k.getParent() == null) {
            addView(this.f1064k);
        }
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ void animateToVisibility(int i2) {
        super.animateToVisibility(i2);
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ boolean canShowOverflowMenu() {
        return super.canShowOverflowMenu();
    }

    public void closeMode() {
        if (this.f1062i == null) {
            killMode();
        }
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ void dismissPopupMenus() {
        super.dismissPopupMenus();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f1061h;
    }

    public CharSequence getTitle() {
        return this.f1060g;
    }

    @Override // androidx.appcompat.widget.a
    public boolean hideOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.f();
        }
        return false;
    }

    public void initForMode(a.a.n.b bVar) {
        View view = this.f1062i;
        if (view == null) {
            this.f1062i = LayoutInflater.from(getContext()).inflate(this.q, (ViewGroup) this, false);
            addView(this.f1062i);
        } else if (view.getParent() == null) {
            addView(this.f1062i);
        }
        this.f1062i.findViewById(a.a.f.action_mode_close_button).setOnClickListener(new a(this, bVar));
        androidx.appcompat.view.menu.f fVar = (androidx.appcompat.view.menu.f) bVar.c();
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.d();
        }
        this.mActionMenuPresenter = new ActionMenuPresenter(getContext());
        this.mActionMenuPresenter.d(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        fVar.a(this.mActionMenuPresenter, this.mPopupContext);
        this.mMenuView = (ActionMenuView) this.mActionMenuPresenter.b(this);
        ViewCompat.a(this.mMenuView, (Drawable) null);
        addView(this.mMenuView, layoutParams);
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ boolean isOverflowMenuShowPending() {
        return super.isOverflowMenuShowPending();
    }

    @Override // androidx.appcompat.widget.a
    public boolean isOverflowMenuShowing() {
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.i();
        }
        return false;
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ boolean isOverflowReserved() {
        return super.isOverflowReserved();
    }

    public boolean isTitleOptional() {
        return this.p;
    }

    public void killMode() {
        removeAllViews();
        this.f1063j = null;
        this.mMenuView = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.f();
            this.mActionMenuPresenter.g();
        }
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ boolean onHoverEvent(MotionEvent motionEvent) {
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 32) {
            accessibilityEvent.setSource(this);
            accessibilityEvent.setClassName(ActionBarContextView.class.getName());
            accessibilityEvent.setPackageName(getContext().getPackageName());
            accessibilityEvent.setContentDescription(this.f1060g);
            return;
        }
        super.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        boolean a2 = j0.a(this);
        int paddingRight = a2 ? (i4 - i2) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i5 - i3) - getPaddingTop()) - getPaddingBottom();
        View view = this.f1062i;
        if (view == null || view.getVisibility() == 8) {
            i6 = paddingRight;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1062i.getLayoutParams();
            int i7 = a2 ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i8 = a2 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int next = androidx.appcompat.widget.a.next(paddingRight, i7, a2);
            i6 = androidx.appcompat.widget.a.next(next + positionChild(this.f1062i, next, paddingTop, paddingTop2, a2), i8, a2);
        }
        LinearLayout linearLayout = this.f1064k;
        if (linearLayout != null && this.f1063j == null && linearLayout.getVisibility() != 8) {
            i6 += positionChild(this.f1064k, i6, paddingTop, paddingTop2, a2);
        }
        int i9 = i6;
        View view2 = this.f1063j;
        if (view2 != null) {
            positionChild(view2, i9, paddingTop, paddingTop2, a2);
        }
        int paddingLeft = a2 ? getPaddingLeft() : (i4 - i2) - getPaddingRight();
        ActionMenuView actionMenuView = this.mMenuView;
        if (actionMenuView != null) {
            positionChild(actionMenuView, paddingLeft, paddingTop, paddingTop2, !a2);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            if (View.MeasureSpec.getMode(i3) != 0) {
                int size = View.MeasureSpec.getSize(i2);
                int i4 = this.mContentHeight;
                if (i4 <= 0) {
                    i4 = View.MeasureSpec.getSize(i3);
                }
                int paddingTop = getPaddingTop() + getPaddingBottom();
                int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
                int i5 = i4 - paddingTop;
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, e.b.b.a.a.a.c.ALL_INT);
                View view = this.f1062i;
                if (view != null) {
                    int measureChildView = measureChildView(view, paddingLeft, makeMeasureSpec, 0);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1062i.getLayoutParams();
                    paddingLeft = measureChildView - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
                }
                ActionMenuView actionMenuView = this.mMenuView;
                if (actionMenuView != null && actionMenuView.getParent() == this) {
                    paddingLeft = measureChildView(this.mMenuView, paddingLeft, makeMeasureSpec, 0);
                }
                LinearLayout linearLayout = this.f1064k;
                if (linearLayout != null && this.f1063j == null) {
                    if (this.p) {
                        this.f1064k.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                        int measuredWidth = this.f1064k.getMeasuredWidth();
                        boolean z = measuredWidth <= paddingLeft;
                        if (z) {
                            paddingLeft -= measuredWidth;
                        }
                        this.f1064k.setVisibility(z ? 0 : 8);
                    } else {
                        paddingLeft = measureChildView(linearLayout, paddingLeft, makeMeasureSpec, 0);
                    }
                }
                View view2 = this.f1063j;
                if (view2 != null) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    int i6 = layoutParams.width != -2 ? 1073741824 : e.b.b.a.a.a.c.ALL_INT;
                    int i7 = layoutParams.width;
                    if (i7 >= 0) {
                        paddingLeft = Math.min(i7, paddingLeft);
                    }
                    int i8 = layoutParams.height == -2 ? e.b.b.a.a.a.c.ALL_INT : 1073741824;
                    int i9 = layoutParams.height;
                    if (i9 >= 0) {
                        i5 = Math.min(i9, i5);
                    }
                    this.f1063j.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i6), View.MeasureSpec.makeMeasureSpec(i5, i8));
                }
                if (this.mContentHeight <= 0) {
                    int childCount = getChildCount();
                    int i10 = 0;
                    for (int i11 = 0; i11 < childCount; i11++) {
                        int measuredHeight = getChildAt(i11).getMeasuredHeight() + paddingTop;
                        if (measuredHeight > i10) {
                            i10 = measuredHeight;
                        }
                    }
                    setMeasuredDimension(size, i10);
                    return;
                }
                setMeasuredDimension(size, i4);
                return;
            }
            throw new IllegalStateException(ActionBarContextView.class.getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        throw new IllegalStateException(ActionBarContextView.class.getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ void postShowOverflowMenu() {
        super.postShowOverflowMenu();
    }

    @Override // androidx.appcompat.widget.a
    public void setContentHeight(int i2) {
        this.mContentHeight = i2;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f1063j;
        if (view2 != null) {
            removeView(view2);
        }
        this.f1063j = view;
        if (view != null && (linearLayout = this.f1064k) != null) {
            removeView(linearLayout);
            this.f1064k = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f1061h = charSequence;
        a();
    }

    public void setTitle(CharSequence charSequence) {
        this.f1060g = charSequence;
        a();
    }

    public void setTitleOptional(boolean z) {
        if (z != this.p) {
            requestLayout();
        }
        this.p = z;
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i2) {
        super.setVisibility(i2);
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ androidx.core.view.a0 setupAnimatorToVisibility(int i2, long j2) {
        return super.setupAnimatorToVisibility(i2, j2);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // androidx.appcompat.widget.a
    public boolean showOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.k();
        }
        return false;
    }

    public ActionBarContextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, a.a.a.actionModeStyle);
    }

    public ActionBarContextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        d0 a2 = d0.a(context, attributeSet, a.a.j.ActionMode, i2, 0);
        ViewCompat.a(this, a2.b(a.a.j.ActionMode_background));
        this.n = a2.g(a.a.j.ActionMode_titleTextStyle, 0);
        this.o = a2.g(a.a.j.ActionMode_subtitleTextStyle, 0);
        this.mContentHeight = a2.f(a.a.j.ActionMode_height, 0);
        this.q = a2.g(a.a.j.ActionMode_closeItemLayout, a.a.g.abc_action_mode_close_item_material);
        a2.b();
    }
}

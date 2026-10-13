package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.f;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.LinearLayoutCompat;

/* loaded from: classes.dex */
public class ActionMenuView extends LinearLayoutCompat implements f.b, androidx.appcompat.view.menu.n {
    static final int GENERATED_ITEM_PADDING = 4;
    static final int MIN_CELL_SIZE = 56;
    private int A;
    private int B;
    private int C;
    f.a mMenuBuilderCallback;
    d mOnMenuItemClickListener;
    private androidx.appcompat.view.menu.f t;
    private Context u;
    private int v;
    private boolean w;
    private ActionMenuPresenter x;
    private m.a y;
    private boolean z;

    /* loaded from: classes.dex */
    public static class LayoutParams extends LinearLayoutCompat.LayoutParams {

        /* renamed from: c, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public boolean f1084c;

        /* renamed from: d, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public int f1085d;

        /* renamed from: e, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public int f1086e;

        /* renamed from: f, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public boolean f1087f;

        /* renamed from: g, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public boolean f1088g;

        /* renamed from: h, reason: collision with root package name */
        boolean f1089h;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.f1084c = layoutParams.f1084c;
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.f1084c = false;
        }
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public interface a {
        boolean needsDividerAfter();

        boolean needsDividerBefore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b implements m.a {
        b() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void a(androidx.appcompat.view.menu.f fVar, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean a(androidx.appcompat.view.menu.f fVar) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public ActionMenuView(@NonNull Context context) {
        this(context, null);
    }

    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v16 */
    private void a(int i2, int i3) {
        int i4;
        int i5;
        boolean z;
        int i6;
        int i7;
        int i8;
        int i9;
        ?? r13;
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i3, paddingTop, -2);
        int i10 = size - paddingLeft;
        int i11 = this.B;
        int i12 = i10 / i11;
        int i13 = i10 % i11;
        if (i12 == 0) {
            setMeasuredDimension(i10, 0);
            return;
        }
        int i14 = i11 + (i13 / i12);
        int childCount = getChildCount();
        int i15 = i12;
        int i16 = 0;
        int i17 = 0;
        boolean z2 = false;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        long j2 = 0;
        while (i16 < childCount) {
            View childAt = getChildAt(i16);
            int i21 = size2;
            if (childAt.getVisibility() != 8) {
                boolean z3 = childAt instanceof ActionMenuItemView;
                int i22 = i18 + 1;
                if (z3) {
                    int i23 = this.C;
                    i9 = i22;
                    r13 = 0;
                    childAt.setPadding(i23, 0, i23, 0);
                } else {
                    i9 = i22;
                    r13 = 0;
                }
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                layoutParams.f1089h = r13;
                layoutParams.f1086e = r13;
                layoutParams.f1085d = r13;
                layoutParams.f1087f = r13;
                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = r13;
                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = r13;
                layoutParams.f1088g = z3 && ((ActionMenuItemView) childAt).hasText();
                int measureChildForCells = measureChildForCells(childAt, i14, layoutParams.f1084c ? 1 : i15, childMeasureSpec, paddingTop);
                int max = Math.max(i19, measureChildForCells);
                if (layoutParams.f1087f) {
                    i20++;
                }
                if (layoutParams.f1084c) {
                    z2 = true;
                }
                i15 -= measureChildForCells;
                i17 = Math.max(i17, childAt.getMeasuredHeight());
                if (measureChildForCells == 1) {
                    j2 |= 1 << i16;
                    i17 = i17;
                }
                i19 = max;
                i18 = i9;
            }
            i16++;
            size2 = i21;
        }
        int i24 = size2;
        boolean z4 = z2 && i18 == 2;
        boolean z5 = false;
        while (i20 > 0 && i15 > 0) {
            int i25 = Integer.MAX_VALUE;
            int i26 = 0;
            int i27 = 0;
            long j3 = 0;
            while (i26 < childCount) {
                boolean z6 = z5;
                LayoutParams layoutParams2 = (LayoutParams) getChildAt(i26).getLayoutParams();
                int i28 = i17;
                if (layoutParams2.f1087f) {
                    int i29 = layoutParams2.f1085d;
                    if (i29 < i25) {
                        i25 = i29;
                        j3 = 1 << i26;
                        i27 = 1;
                    } else if (i29 == i25) {
                        j3 |= 1 << i26;
                        i27++;
                    }
                }
                i26++;
                i17 = i28;
                z5 = z6;
            }
            z = z5;
            i6 = i17;
            j2 |= j3;
            if (i27 > i15) {
                i4 = mode;
                i5 = i10;
                break;
            }
            int i30 = i25 + 1;
            int i31 = 0;
            while (i31 < childCount) {
                View childAt2 = getChildAt(i31);
                LayoutParams layoutParams3 = (LayoutParams) childAt2.getLayoutParams();
                int i32 = i10;
                int i33 = mode;
                long j4 = 1 << i31;
                if ((j3 & j4) == 0) {
                    if (layoutParams3.f1085d == i30) {
                        j2 |= j4;
                    }
                    i8 = i30;
                } else {
                    if (z4 && layoutParams3.f1088g && i15 == 1) {
                        int i34 = this.C;
                        i8 = i30;
                        childAt2.setPadding(i34 + i14, 0, i34, 0);
                    } else {
                        i8 = i30;
                    }
                    layoutParams3.f1085d++;
                    layoutParams3.f1089h = true;
                    i15--;
                }
                i31++;
                mode = i33;
                i30 = i8;
                i10 = i32;
            }
            i17 = i6;
            z5 = true;
        }
        i4 = mode;
        i5 = i10;
        z = z5;
        i6 = i17;
        boolean z7 = !z2 && i18 == 1;
        if (i15 <= 0 || j2 == 0 || (i15 >= i18 - 1 && !z7 && i19 <= 1)) {
            i7 = 0;
        } else {
            float bitCount = Long.bitCount(j2);
            if (z7) {
                i7 = 0;
            } else {
                i7 = 0;
                if ((j2 & 1) != 0 && !((LayoutParams) getChildAt(0).getLayoutParams()).f1088g) {
                    bitCount -= 0.5f;
                }
                int i35 = childCount - 1;
                if ((j2 & (1 << i35)) != 0 && !((LayoutParams) getChildAt(i35).getLayoutParams()).f1088g) {
                    bitCount -= 0.5f;
                }
            }
            int i36 = bitCount > 0.0f ? (int) ((i15 * i14) / bitCount) : 0;
            for (int i37 = 0; i37 < childCount; i37++) {
                if ((j2 & (1 << i37)) != 0) {
                    View childAt3 = getChildAt(i37);
                    LayoutParams layoutParams4 = (LayoutParams) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        layoutParams4.f1086e = i36;
                        layoutParams4.f1089h = true;
                        if (i37 == 0 && !layoutParams4.f1088g) {
                            ((ViewGroup.MarginLayoutParams) layoutParams4).leftMargin = (-i36) / 2;
                        }
                    } else if (layoutParams4.f1084c) {
                        layoutParams4.f1086e = i36;
                        layoutParams4.f1089h = true;
                        ((ViewGroup.MarginLayoutParams) layoutParams4).rightMargin = (-i36) / 2;
                    } else {
                        if (i37 != 0) {
                            ((ViewGroup.MarginLayoutParams) layoutParams4).leftMargin = i36 / 2;
                        }
                        if (i37 != childCount - 1) {
                            ((ViewGroup.MarginLayoutParams) layoutParams4).rightMargin = i36 / 2;
                        }
                    }
                    z = true;
                }
            }
        }
        if (z) {
            while (i7 < childCount) {
                View childAt4 = getChildAt(i7);
                LayoutParams layoutParams5 = (LayoutParams) childAt4.getLayoutParams();
                if (layoutParams5.f1089h) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((layoutParams5.f1085d * i14) + layoutParams5.f1086e, 1073741824), childMeasureSpec);
                }
                i7++;
            }
        }
        setMeasuredDimension(i5, i4 != 1073741824 ? i6 : i24);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int measureChildForCells(View view, int i2, int i3, int i4, int i5) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i4) - i5, View.MeasureSpec.getMode(i4));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = actionMenuItemView != null && actionMenuItemView.hasText();
        int i6 = 2;
        if (i3 <= 0 || (z && i3 < 2)) {
            i6 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i3 * i2, e.b.b.a.a.a.c.ALL_INT), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i7 = measuredWidth / i2;
            if (measuredWidth % i2 != 0) {
                i7++;
            }
            if (!z || i7 >= 2) {
                i6 = i7;
            }
        }
        layoutParams.f1087f = !layoutParams.f1084c && z;
        layoutParams.f1085d = i6;
        view.measure(View.MeasureSpec.makeMeasureSpec(i2 * i6, 1073741824), makeMeasureSpec);
        return i6;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void dismissPopupMenus() {
        ActionMenuPresenter actionMenuPresenter = this.x;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.d();
        }
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public LayoutParams generateOverflowButtonLayoutParams() {
        LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.f1084c = true;
        return generateDefaultLayoutParams;
    }

    public Menu getMenu() {
        if (this.t == null) {
            Context context = getContext();
            this.t = new androidx.appcompat.view.menu.f(context);
            this.t.a(new c());
            this.x = new ActionMenuPresenter(context);
            this.x.d(true);
            ActionMenuPresenter actionMenuPresenter = this.x;
            m.a aVar = this.y;
            if (aVar == null) {
                aVar = new b();
            }
            actionMenuPresenter.a(aVar);
            this.t.a(this.x, this.u);
            this.x.a(this);
        }
        return this.t;
    }

    @Nullable
    public Drawable getOverflowIcon() {
        getMenu();
        return this.x.e();
    }

    public int getPopupTheme() {
        return this.v;
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int getWindowAnimations() {
        return 0;
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    protected boolean hasSupportDividerBeforeChildAt(int i2) {
        boolean z = false;
        if (i2 == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i2 - 1);
        KeyEvent.Callback childAt2 = getChildAt(i2);
        if (i2 < getChildCount() && (childAt instanceof a)) {
            z = false | ((a) childAt).needsDividerAfter();
        }
        return (i2 <= 0 || !(childAt2 instanceof a)) ? z : z | ((a) childAt2).needsDividerBefore();
    }

    public boolean hideOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.x;
        return actionMenuPresenter != null && actionMenuPresenter.f();
    }

    @Override // androidx.appcompat.view.menu.n
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void initialize(androidx.appcompat.view.menu.f fVar) {
        this.t = fVar;
    }

    @Override // androidx.appcompat.view.menu.f.b
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public boolean invokeItem(androidx.appcompat.view.menu.i iVar) {
        return this.t.a(iVar, 0);
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public boolean isOverflowMenuShowPending() {
        ActionMenuPresenter actionMenuPresenter = this.x;
        return actionMenuPresenter != null && actionMenuPresenter.h();
    }

    public boolean isOverflowMenuShowing() {
        ActionMenuPresenter actionMenuPresenter = this.x;
        return actionMenuPresenter != null && actionMenuPresenter.i();
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public boolean isOverflowReserved() {
        return this.w;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.x;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.a(false);
            if (this.x.i()) {
                this.x.f();
                this.x.k();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        dismissPopupMenus();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int width;
        int i8;
        if (!this.z) {
            super.onLayout(z, i2, i3, i4, i5);
            return;
        }
        int childCount = getChildCount();
        int i9 = (i5 - i3) / 2;
        int dividerWidth = getDividerWidth();
        int i10 = i4 - i2;
        int paddingRight = (i10 - getPaddingRight()) - getPaddingLeft();
        boolean a2 = j0.a(this);
        int i11 = paddingRight;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f1084c) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (hasSupportDividerBeforeChildAt(i14)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a2) {
                        i8 = getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                        width = i8 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        i8 = width - measuredWidth;
                    }
                    int i15 = i9 - (measuredHeight / 2);
                    childAt.layout(i8, i15, width, measuredHeight + i15);
                    i11 -= measuredWidth;
                    i12 = 1;
                } else {
                    i11 -= (childAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    hasSupportDividerBeforeChildAt(i14);
                    i13++;
                }
            }
        }
        if (childCount == 1 && i12 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i16 = (i10 / 2) - (measuredWidth2 / 2);
            int i17 = i9 - (measuredHeight2 / 2);
            childAt2.layout(i16, i17, measuredWidth2 + i16, measuredHeight2 + i17);
            return;
        }
        int i18 = i13 - (i12 ^ 1);
        if (i18 > 0) {
            i7 = i11 / i18;
            i6 = 0;
        } else {
            i6 = 0;
            i7 = 0;
        }
        int max = Math.max(i6, i7);
        if (a2) {
            int width2 = getWidth() - getPaddingRight();
            while (i6 < childCount) {
                View childAt3 = getChildAt(i6);
                LayoutParams layoutParams2 = (LayoutParams) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !layoutParams2.f1084c) {
                    int i19 = width2 - ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i20 = i9 - (measuredHeight3 / 2);
                    childAt3.layout(i19 - measuredWidth3, i20, i19, measuredHeight3 + i20);
                    width2 = i19 - ((measuredWidth3 + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin) + max);
                }
                i6++;
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        while (i6 < childCount) {
            View childAt4 = getChildAt(i6);
            LayoutParams layoutParams3 = (LayoutParams) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !layoutParams3.f1084c) {
                int i21 = paddingLeft + ((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i22 = i9 - (measuredHeight4 / 2);
                childAt4.layout(i21, i22, i21 + measuredWidth4, measuredHeight4 + i22);
                paddingLeft = i21 + measuredWidth4 + ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin + max;
            }
            i6++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i2, int i3) {
        androidx.appcompat.view.menu.f fVar;
        boolean z = this.z;
        this.z = View.MeasureSpec.getMode(i2) == 1073741824;
        if (z != this.z) {
            this.A = 0;
        }
        int size = View.MeasureSpec.getSize(i2);
        if (this.z && (fVar = this.t) != null && size != this.A) {
            this.A = size;
            fVar.b(true);
        }
        int childCount = getChildCount();
        if (this.z && childCount > 0) {
            a(i2, i3);
            return;
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i4).getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = 0;
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = 0;
        }
        super.onMeasure(i2, i3);
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public androidx.appcompat.view.menu.f peekMenu() {
        return this.t;
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setExpandedActionViewsExclusive(boolean z) {
        this.x.c(z);
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setMenuCallbacks(m.a aVar, f.a aVar2) {
        this.y = aVar;
        this.mMenuBuilderCallback = aVar2;
    }

    public void setOnMenuItemClickListener(d dVar) {
        this.mOnMenuItemClickListener = dVar;
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        getMenu();
        this.x.a(drawable);
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setOverflowReserved(boolean z) {
        this.w = z;
    }

    public void setPopupTheme(@StyleRes int i2) {
        if (this.v != i2) {
            this.v = i2;
            if (i2 == 0) {
                this.u = getContext();
            } else {
                this.u = new ContextThemeWrapper(getContext(), i2);
            }
        }
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.x = actionMenuPresenter;
        this.x.a(this);
    }

    public boolean showOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.x;
        return actionMenuPresenter != null && actionMenuPresenter.k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c implements f.a {
        c() {
        }

        @Override // androidx.appcompat.view.menu.f.a
        public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
            d dVar = ActionMenuView.this.mOnMenuItemClickListener;
            return dVar != null && dVar.onMenuItemClick(menuItem);
        }

        @Override // androidx.appcompat.view.menu.f.a
        public void a(androidx.appcompat.view.menu.f fVar) {
            f.a aVar = ActionMenuView.this.mMenuBuilderCallback;
            if (aVar != null) {
                aVar.a(fVar);
            }
        }
    }

    public ActionMenuView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.B = (int) (56.0f * f2);
        this.C = (int) (f2 * 4.0f);
        this.u = context;
        this.v = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.f1183b = 16;
        return layoutParams;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutParams layoutParams2;
        if (layoutParams != null) {
            if (layoutParams instanceof LayoutParams) {
                layoutParams2 = new LayoutParams((LayoutParams) layoutParams);
            } else {
                layoutParams2 = new LayoutParams(layoutParams);
            }
            if (layoutParams2.f1183b <= 0) {
                layoutParams2.f1183b = 16;
            }
            return layoutParams2;
        }
        return generateDefaultLayoutParams();
    }
}

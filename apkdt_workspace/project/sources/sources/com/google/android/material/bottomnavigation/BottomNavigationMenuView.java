package com.google.android.material.bottomnavigation;

import a.i.m.h;
import a.l.a.a.b;
import android.R;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Dimension;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.f;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.n;
import androidx.core.view.ViewCompat;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionSet;
import androidx.transition.j;
import e.b.b.a.a.a.c;
import e.i.b.c.d;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class BottomNavigationMenuView extends ViewGroup implements n {
    private static final int[] C = {R.attr.state_checked};
    private static final int[] D = {-16842910};
    private BottomNavigationPresenter A;
    private f B;

    /* renamed from: e, reason: collision with root package name */
    private final TransitionSet f13682e;

    /* renamed from: f, reason: collision with root package name */
    private final int f13683f;

    /* renamed from: g, reason: collision with root package name */
    private final int f13684g;

    /* renamed from: h, reason: collision with root package name */
    private final int f13685h;

    /* renamed from: i, reason: collision with root package name */
    private final int f13686i;

    /* renamed from: j, reason: collision with root package name */
    private final int f13687j;

    /* renamed from: k, reason: collision with root package name */
    private final View.OnClickListener f13688k;

    /* renamed from: l, reason: collision with root package name */
    private final a.i.m.f<BottomNavigationItemView> f13689l;
    private boolean m;
    private int n;
    private BottomNavigationItemView[] o;
    private int p;
    private int q;
    private ColorStateList r;

    @Dimension
    private int s;
    private ColorStateList t;
    private final ColorStateList u;

    @StyleRes
    private int v;

    @StyleRes
    private int w;
    private Drawable x;
    private int y;
    private int[] z;

    /* loaded from: classes.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            i itemData = ((BottomNavigationItemView) view).getItemData();
            if (BottomNavigationMenuView.this.B.a(itemData, BottomNavigationMenuView.this.A, 0)) {
                return;
            }
            itemData.setChecked(true);
        }
    }

    public BottomNavigationMenuView(Context context) {
        this(context, null);
    }

    private boolean a(int i2, int i3) {
        if (i2 == -1) {
            if (i3 > 3) {
                return true;
            }
        } else if (i2 == 0) {
            return true;
        }
        return false;
    }

    private BottomNavigationItemView getNewItem() {
        BottomNavigationItemView a2 = this.f13689l.a();
        return a2 == null ? new BottomNavigationItemView(getContext()) : a2;
    }

    public void buildMenuView() {
        removeAllViews();
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.o;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                if (bottomNavigationItemView != null) {
                    this.f13689l.a(bottomNavigationItemView);
                }
            }
        }
        if (this.B.size() == 0) {
            this.p = 0;
            this.q = 0;
            this.o = null;
            return;
        }
        this.o = new BottomNavigationItemView[this.B.size()];
        boolean a2 = a(this.n, this.B.n().size());
        for (int i2 = 0; i2 < this.B.size(); i2++) {
            this.A.b(true);
            this.B.getItem(i2).setCheckable(true);
            this.A.b(false);
            BottomNavigationItemView newItem = getNewItem();
            this.o[i2] = newItem;
            newItem.setIconTintList(this.r);
            newItem.setIconSize(this.s);
            newItem.setTextColor(this.u);
            newItem.setTextAppearanceInactive(this.v);
            newItem.setTextAppearanceActive(this.w);
            newItem.setTextColor(this.t);
            Drawable drawable = this.x;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.y);
            }
            newItem.setShifting(a2);
            newItem.setLabelVisibilityMode(this.n);
            newItem.initialize((i) this.B.getItem(i2), 0);
            newItem.setItemPosition(i2);
            newItem.setOnClickListener(this.f13688k);
            addView(newItem);
        }
        this.q = Math.min(this.B.size() - 1, this.q);
        this.B.getItem(this.q).setChecked(true);
    }

    public ColorStateList createDefaultColorStateList(int i2) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i2, typedValue, true)) {
            return null;
        }
        ColorStateList b2 = a.a.k.a.a.b(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(a.a.a.colorPrimary, typedValue, true)) {
            return null;
        }
        int i3 = typedValue.data;
        int defaultColor = b2.getDefaultColor();
        return new ColorStateList(new int[][]{D, C, ViewGroup.EMPTY_STATE_SET}, new int[]{b2.getColorForState(D, defaultColor), i3, defaultColor});
    }

    @Nullable
    public ColorStateList getIconTintList() {
        return this.r;
    }

    @Nullable
    public Drawable getItemBackground() {
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.o;
        if (bottomNavigationItemViewArr != null && bottomNavigationItemViewArr.length > 0) {
            return bottomNavigationItemViewArr[0].getBackground();
        }
        return this.x;
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.y;
    }

    @Dimension
    public int getItemIconSize() {
        return this.s;
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.w;
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.v;
    }

    public ColorStateList getItemTextColor() {
        return this.t;
    }

    public int getLabelVisibilityMode() {
        return this.n;
    }

    public int getSelectedItemId() {
        return this.p;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // androidx.appcompat.view.menu.n
    public void initialize(f fVar) {
        this.B = fVar;
    }

    public boolean isItemHorizontalTranslationEnabled() {
        return this.m;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                if (ViewCompat.n(this) == 1) {
                    int i10 = i6 - i8;
                    childAt.layout(i10 - childAt.getMeasuredWidth(), 0, i10, i7);
                } else {
                    childAt.layout(i8, 0, childAt.getMeasuredWidth() + i8, i7);
                }
                i8 += childAt.getMeasuredWidth();
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        int size = View.MeasureSpec.getSize(i2);
        int size2 = this.B.n().size();
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f13687j, 1073741824);
        if (a(this.n, size2) && this.m) {
            View childAt = getChildAt(this.q);
            int i4 = this.f13686i;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.f13685h, c.ALL_INT), makeMeasureSpec);
                i4 = Math.max(i4, childAt.getMeasuredWidth());
            }
            int i5 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min = Math.min(size - (this.f13684g * i5), Math.min(i4, this.f13685h));
            int i6 = size - min;
            int min2 = Math.min(i6 / (i5 == 0 ? 1 : i5), this.f13683f);
            int i7 = i6 - (i5 * min2);
            int i8 = 0;
            while (i8 < childCount) {
                if (getChildAt(i8).getVisibility() != 8) {
                    this.z[i8] = i8 == this.q ? min : min2;
                    if (i7 > 0) {
                        int[] iArr = this.z;
                        iArr[i8] = iArr[i8] + 1;
                        i7--;
                    }
                } else {
                    this.z[i8] = 0;
                }
                i8++;
            }
        } else {
            int min3 = Math.min(size / (size2 == 0 ? 1 : size2), this.f13685h);
            int i9 = size - (size2 * min3);
            for (int i10 = 0; i10 < childCount; i10++) {
                if (getChildAt(i10).getVisibility() != 8) {
                    int[] iArr2 = this.z;
                    iArr2[i10] = min3;
                    if (i9 > 0) {
                        iArr2[i10] = iArr2[i10] + 1;
                        i9--;
                    }
                } else {
                    this.z[i10] = 0;
                }
            }
        }
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = getChildAt(i12);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.z[i12], 1073741824), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i11 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i11, View.MeasureSpec.makeMeasureSpec(i11, 1073741824), 0), View.resolveSizeAndState(this.f13687j, makeMeasureSpec, 0));
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.r = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.o;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.x = drawable;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.o;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i2) {
        this.y = i2;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.o;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setItemBackground(i2);
            }
        }
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        this.m = z;
    }

    public void setItemIconSize(@Dimension int i2) {
        this.s = i2;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.o;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setIconSize(i2);
            }
        }
    }

    public void setItemTextAppearanceActive(@StyleRes int i2) {
        this.w = i2;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.o;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextAppearanceActive(i2);
                ColorStateList colorStateList = this.t;
                if (colorStateList != null) {
                    bottomNavigationItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceInactive(@StyleRes int i2) {
        this.v = i2;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.o;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextAppearanceInactive(i2);
                ColorStateList colorStateList = this.t;
                if (colorStateList != null) {
                    bottomNavigationItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.t = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.o;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i2) {
        this.n = i2;
    }

    public void setPresenter(BottomNavigationPresenter bottomNavigationPresenter) {
        this.A = bottomNavigationPresenter;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void tryRestoreSelectedItemId(int i2) {
        int size = this.B.size();
        for (int i3 = 0; i3 < size; i3++) {
            MenuItem item = this.B.getItem(i3);
            if (i2 == item.getItemId()) {
                this.p = i2;
                this.q = i3;
                item.setChecked(true);
                return;
            }
        }
    }

    public void updateMenuView() {
        f fVar = this.B;
        if (fVar == null || this.o == null) {
            return;
        }
        int size = fVar.size();
        if (size != this.o.length) {
            buildMenuView();
            return;
        }
        int i2 = this.p;
        for (int i3 = 0; i3 < size; i3++) {
            MenuItem item = this.B.getItem(i3);
            if (item.isChecked()) {
                this.p = item.getItemId();
                this.q = i3;
            }
        }
        if (i2 != this.p) {
            j.a(this, this.f13682e);
        }
        boolean a2 = a(this.n, this.B.n().size());
        for (int i4 = 0; i4 < size; i4++) {
            this.A.b(true);
            this.o[i4].setLabelVisibilityMode(this.n);
            this.o[i4].setShifting(a2);
            this.o[i4].initialize((i) this.B.getItem(i4), 0);
            this.A.b(false);
        }
    }

    public BottomNavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13689l = new h(5);
        this.p = 0;
        this.q = 0;
        Resources resources = getResources();
        this.f13683f = resources.getDimensionPixelSize(d.design_bottom_navigation_item_max_width);
        this.f13684g = resources.getDimensionPixelSize(d.design_bottom_navigation_item_min_width);
        this.f13685h = resources.getDimensionPixelSize(d.design_bottom_navigation_active_item_max_width);
        this.f13686i = resources.getDimensionPixelSize(d.design_bottom_navigation_active_item_min_width);
        this.f13687j = resources.getDimensionPixelSize(d.design_bottom_navigation_height);
        this.u = createDefaultColorStateList(R.attr.textColorSecondary);
        this.f13682e = new AutoTransition();
        this.f13682e.b(0);
        this.f13682e.a(115L);
        this.f13682e.a((TimeInterpolator) new b());
        this.f13682e.a(new com.google.android.material.internal.j());
        this.f13688k = new a();
        this.z = new int[5];
    }
}

package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.annotation.BoolRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.IdRes;
import androidx.annotation.Nullable;
import com.google.android.material.internal.FlowLayout;
import com.google.android.material.internal.k;
import e.i.b.c.j;

/* loaded from: classes.dex */
public class ChipGroup extends FlowLayout {

    /* renamed from: h, reason: collision with root package name */
    @Dimension
    private int f13750h;

    /* renamed from: i, reason: collision with root package name */
    @Dimension
    private int f13751i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f13752j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    private c f13753k;

    /* renamed from: l, reason: collision with root package name */
    private final b f13754l;
    private d m;

    @IdRes
    private int n;
    private boolean o;

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
        }
    }

    /* loaded from: classes.dex */
    private class b implements CompoundButton.OnCheckedChangeListener {
        private b() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (ChipGroup.this.o) {
                return;
            }
            int id = compoundButton.getId();
            if (z) {
                if (ChipGroup.this.n != -1 && ChipGroup.this.n != id && ChipGroup.this.f13752j) {
                    ChipGroup chipGroup = ChipGroup.this;
                    chipGroup.a(chipGroup.n, false);
                }
                ChipGroup.this.setCheckedId(id);
                return;
            }
            if (ChipGroup.this.n == id) {
                ChipGroup.this.setCheckedId(-1);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        void a(ChipGroup chipGroup, @IdRes int i2);
    }

    /* loaded from: classes.dex */
    private class d implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: e, reason: collision with root package name */
        private ViewGroup.OnHierarchyChangeListener f13756e;

        private d() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            int hashCode;
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        hashCode = View.generateViewId();
                    } else {
                        hashCode = view2.hashCode();
                    }
                    view2.setId(hashCode);
                }
                ((Chip) view2).setOnCheckedChangeListenerInternal(ChipGroup.this.f13754l);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f13756e;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).setOnCheckedChangeListenerInternal(null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f13756e;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@IdRes int i2, boolean z) {
        View findViewById = findViewById(i2);
        if (findViewById instanceof Chip) {
            this.o = true;
            ((Chip) findViewById).setChecked(z);
            this.o = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckedId(int i2) {
        this.n = i2;
        c cVar = this.f13753k;
        if (cVar == null || !this.f13752j) {
            return;
        }
        cVar.a(this, i2);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                int i3 = this.n;
                if (i3 != -1 && this.f13752j) {
                    a(i3, false);
                }
                setCheckedId(chip.getId());
            }
        }
        super.addView(view, i2, layoutParams);
    }

    public void check(@IdRes int i2) {
        int i3 = this.n;
        if (i2 == i3) {
            return;
        }
        if (i3 != -1 && this.f13752j) {
            a(i3, false);
        }
        if (i2 != -1) {
            a(i2, true);
        }
        setCheckedId(i2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    public void clearCheck() {
        this.o = true;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt instanceof Chip) {
                ((Chip) childAt).setChecked(false);
            }
        }
        this.o = false;
        setCheckedId(-1);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @IdRes
    public int getCheckedChipId() {
        if (this.f13752j) {
            return this.n;
        }
        return -1;
    }

    @Dimension
    public int getChipSpacingHorizontal() {
        return this.f13750h;
    }

    @Dimension
    public int getChipSpacingVertical() {
        return this.f13751i;
    }

    public boolean isSingleSelection() {
        return this.f13752j;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i2 = this.n;
        if (i2 != -1) {
            a(i2, true);
            setCheckedId(this.n);
        }
    }

    public void setChipSpacing(@Dimension int i2) {
        setChipSpacingHorizontal(i2);
        setChipSpacingVertical(i2);
    }

    public void setChipSpacingHorizontal(@Dimension int i2) {
        if (this.f13750h != i2) {
            this.f13750h = i2;
            setItemSpacing(i2);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(@DimenRes int i2) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i2));
    }

    public void setChipSpacingResource(@DimenRes int i2) {
        setChipSpacing(getResources().getDimensionPixelOffset(i2));
    }

    public void setChipSpacingVertical(@Dimension int i2) {
        if (this.f13751i != i2) {
            this.f13751i = i2;
            setLineSpacing(i2);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(@DimenRes int i2) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i2));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(@Nullable Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i2) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    public void setOnCheckedChangeListener(c cVar) {
        this.f13753k = cVar;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.m.f13756e = onHierarchyChangeListener;
    }

    @Deprecated
    public void setShowDividerHorizontal(int i2) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i2) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    public void setSingleLine(@BoolRes int i2) {
        setSingleLine(getResources().getBoolean(i2));
    }

    public void setSingleSelection(boolean z) {
        if (this.f13752j != z) {
            this.f13752j = z;
            clearCheck();
        }
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, e.i.b.c.b.chipGroupStyle);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public ChipGroup(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13754l = new b();
        this.m = new d();
        this.n = -1;
        this.o = false;
        TypedArray c2 = k.c(context, attributeSet, e.i.b.c.k.ChipGroup, i2, j.Widget_MaterialComponents_ChipGroup, new int[0]);
        int dimensionPixelOffset = c2.getDimensionPixelOffset(e.i.b.c.k.ChipGroup_chipSpacing, 0);
        setChipSpacingHorizontal(c2.getDimensionPixelOffset(e.i.b.c.k.ChipGroup_chipSpacingHorizontal, dimensionPixelOffset));
        setChipSpacingVertical(c2.getDimensionPixelOffset(e.i.b.c.k.ChipGroup_chipSpacingVertical, dimensionPixelOffset));
        setSingleLine(c2.getBoolean(e.i.b.c.k.ChipGroup_singleLine, false));
        setSingleSelection(c2.getBoolean(e.i.b.c.k.ChipGroup_singleSelection, false));
        int resourceId = c2.getResourceId(e.i.b.c.k.ChipGroup_checkedChip, -1);
        if (resourceId != -1) {
            this.n = resourceId;
        }
        c2.recycle();
        super.setOnHierarchyChangeListener(this.m);
    }

    public void setSingleSelection(@BoolRes int i2) {
        setSingleSelection(getResources().getBoolean(i2));
    }
}

package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.f0;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class NavigationMenuItemView extends ForegroundLinearLayout implements n.a {
    private static final int[] G = {R.attr.state_checked};
    private FrameLayout A;
    private androidx.appcompat.view.menu.i B;
    private ColorStateList C;
    private boolean D;
    private Drawable E;
    private final androidx.core.view.a F;
    boolean checkable;
    private final int x;
    private boolean y;
    private final CheckedTextView z;

    /* loaded from: classes.dex */
    class a extends androidx.core.view.a {
        a() {
        }

        @Override // androidx.core.view.a
        public void a(View view, androidx.core.view.f0.d dVar) {
            super.a(view, dVar);
            dVar.c(NavigationMenuItemView.this.checkable);
        }
    }

    public NavigationMenuItemView(Context context) {
        this(context, null);
    }

    private void a() {
        if (c()) {
            this.z.setVisibility(8);
            FrameLayout frameLayout = this.A;
            if (frameLayout != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).width = -1;
                this.A.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        this.z.setVisibility(0);
        FrameLayout frameLayout2 = this.A;
        if (frameLayout2 != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams2).width = -2;
            this.A.setLayoutParams(layoutParams2);
        }
    }

    private StateListDrawable b() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(a.a.a.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(G, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    private boolean c() {
        return this.B.getTitle() == null && this.B.getIcon() == null && this.B.getActionView() != null;
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.A == null) {
                this.A = (FrameLayout) ((ViewStub) findViewById(e.i.b.c.f.design_menu_item_action_area_stub)).inflate();
            }
            this.A.removeAllViews();
            this.A.addView(view);
        }
    }

    @Override // androidx.appcompat.view.menu.n.a
    public androidx.appcompat.view.menu.i getItemData() {
        return this.B;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public void initialize(androidx.appcompat.view.menu.i iVar, int i2) {
        this.B = iVar;
        setVisibility(iVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            ViewCompat.a(this, b());
        }
        setCheckable(iVar.isCheckable());
        setChecked(iVar.isChecked());
        setEnabled(iVar.isEnabled());
        setTitle(iVar.getTitle());
        setIcon(iVar.getIcon());
        setActionView(iVar.getActionView());
        setContentDescription(iVar.getContentDescription());
        f0.a(this, iVar.getTooltipText());
        a();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        androidx.appcompat.view.menu.i iVar = this.B;
        if (iVar != null && iVar.isCheckable() && this.B.isChecked()) {
            ViewGroup.mergeDrawableStates(onCreateDrawableState, G);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void recycle() {
        FrameLayout frameLayout = this.A;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.z.setCompoundDrawables(null, null, null, null);
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.checkable != z) {
            this.checkable = z;
            this.F.a(this.z, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.z.setChecked(z);
    }

    public void setHorizontalPadding(int i2) {
        setPadding(i2, 0, i2, 0);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.D) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = androidx.core.graphics.drawable.a.i(drawable).mutate();
                androidx.core.graphics.drawable.a.a(drawable, this.C);
            }
            int i2 = this.x;
            drawable.setBounds(0, 0, i2, i2);
        } else if (this.y) {
            if (this.E == null) {
                this.E = androidx.core.content.res.e.b(getResources(), e.i.b.c.e.navigation_empty_icon, getContext().getTheme());
                Drawable drawable2 = this.E;
                if (drawable2 != null) {
                    int i3 = this.x;
                    drawable2.setBounds(0, 0, i3, i3);
                }
            }
            drawable = this.E;
        }
        TextViewCompat.a(this.z, drawable, null, null, null);
    }

    public void setIconPadding(int i2) {
        this.z.setCompoundDrawablePadding(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setIconTintList(ColorStateList colorStateList) {
        this.C = colorStateList;
        this.D = this.C != null;
        androidx.appcompat.view.menu.i iVar = this.B;
        if (iVar != null) {
            setIcon(iVar.getIcon());
        }
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.y = z;
    }

    public void setShortcut(boolean z, char c2) {
    }

    public void setTextAppearance(int i2) {
        TextViewCompat.d(this.z, i2);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.z.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.z.setText(charSequence);
    }

    public boolean showsIcon() {
        return true;
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.F = new a();
        setOrientation(0);
        LayoutInflater.from(context).inflate(e.i.b.c.h.design_navigation_menu_item, (ViewGroup) this, true);
        this.x = context.getResources().getDimensionPixelSize(e.i.b.c.d.design_navigation_icon_size);
        this.z = (CheckedTextView) findViewById(e.i.b.c.f.design_menu_item_text);
        this.z.setDuplicateParentStateEnabled(true);
        ViewCompat.a(this.z, this.F);
    }
}

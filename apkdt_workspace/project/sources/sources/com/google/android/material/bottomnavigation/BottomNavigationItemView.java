package com.google.android.material.bottomnavigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.f0;
import androidx.core.view.ViewCompat;
import androidx.core.view.u;
import androidx.core.widget.TextViewCompat;
import e.i.b.c.d;
import e.i.b.c.e;
import e.i.b.c.f;
import e.i.b.c.h;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class BottomNavigationItemView extends FrameLayout implements n.a {
    public static final int INVALID_ITEM_POSITION = -1;
    private static final int[] q = {R.attr.state_checked};

    /* renamed from: e, reason: collision with root package name */
    private final int f13674e;

    /* renamed from: f, reason: collision with root package name */
    private float f13675f;

    /* renamed from: g, reason: collision with root package name */
    private float f13676g;

    /* renamed from: h, reason: collision with root package name */
    private float f13677h;

    /* renamed from: i, reason: collision with root package name */
    private int f13678i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f13679j;

    /* renamed from: k, reason: collision with root package name */
    private ImageView f13680k;

    /* renamed from: l, reason: collision with root package name */
    private final TextView f13681l;
    private final TextView m;
    private int n;
    private i o;
    private ColorStateList p;

    public BottomNavigationItemView(@NonNull Context context) {
        this(context, null);
    }

    private void a(@NonNull View view, int i2, int i3) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i2;
        layoutParams.gravity = i3;
        view.setLayoutParams(layoutParams);
    }

    @Override // androidx.appcompat.view.menu.n.a
    public i getItemData() {
        return this.o;
    }

    public int getItemPosition() {
        return this.n;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public void initialize(i iVar, int i2) {
        this.o = iVar;
        setCheckable(iVar.isCheckable());
        setChecked(iVar.isChecked());
        setEnabled(iVar.isEnabled());
        setIcon(iVar.getIcon());
        setTitle(iVar.getTitle());
        setId(iVar.getItemId());
        if (!TextUtils.isEmpty(iVar.getContentDescription())) {
            setContentDescription(iVar.getContentDescription());
        }
        f0.a(this, iVar.getTooltipText());
        setVisibility(iVar.isVisible() ? 0 : 8);
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        i iVar = this.o;
        if (iVar != null && iVar.isCheckable() && this.o.isChecked()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, q);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    public void setChecked(boolean z) {
        this.m.setPivotX(r0.getWidth() / 2);
        this.m.setPivotY(r0.getBaseline());
        this.f13681l.setPivotX(r0.getWidth() / 2);
        this.f13681l.setPivotY(r0.getBaseline());
        int i2 = this.f13678i;
        if (i2 != -1) {
            if (i2 == 0) {
                if (z) {
                    a(this.f13680k, this.f13674e, 49);
                    a(this.m, 1.0f, 1.0f, 0);
                } else {
                    a(this.f13680k, this.f13674e, 17);
                    a(this.m, 0.5f, 0.5f, 4);
                }
                this.f13681l.setVisibility(4);
            } else if (i2 != 1) {
                if (i2 == 2) {
                    a(this.f13680k, this.f13674e, 17);
                    this.m.setVisibility(8);
                    this.f13681l.setVisibility(8);
                }
            } else if (z) {
                a(this.f13680k, (int) (this.f13674e + this.f13675f), 49);
                a(this.m, 1.0f, 1.0f, 0);
                TextView textView = this.f13681l;
                float f2 = this.f13676g;
                a(textView, f2, f2, 4);
            } else {
                a(this.f13680k, this.f13674e, 49);
                TextView textView2 = this.m;
                float f3 = this.f13677h;
                a(textView2, f3, f3, 4);
                a(this.f13681l, 1.0f, 1.0f, 0);
            }
        } else if (this.f13679j) {
            if (z) {
                a(this.f13680k, this.f13674e, 49);
                a(this.m, 1.0f, 1.0f, 0);
            } else {
                a(this.f13680k, this.f13674e, 17);
                a(this.m, 0.5f, 0.5f, 4);
            }
            this.f13681l.setVisibility(4);
        } else if (z) {
            a(this.f13680k, (int) (this.f13674e + this.f13675f), 49);
            a(this.m, 1.0f, 1.0f, 0);
            TextView textView3 = this.f13681l;
            float f4 = this.f13676g;
            a(textView3, f4, f4, 4);
        } else {
            a(this.f13680k, this.f13674e, 49);
            TextView textView4 = this.m;
            float f5 = this.f13677h;
            a(textView4, f5, f5, 4);
            a(this.f13681l, 1.0f, 1.0f, 0);
        }
        refreshDrawableState();
        setSelected(z);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f13681l.setEnabled(z);
        this.m.setEnabled(z);
        this.f13680k.setEnabled(z);
        if (z) {
            ViewCompat.a(this, u.a(getContext(), 1002));
        } else {
            ViewCompat.a(this, (u) null);
        }
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = androidx.core.graphics.drawable.a.i(drawable).mutate();
            androidx.core.graphics.drawable.a.a(drawable, this.p);
        }
        this.f13680k.setImageDrawable(drawable);
    }

    public void setIconSize(int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f13680k.getLayoutParams();
        layoutParams.width = i2;
        layoutParams.height = i2;
        this.f13680k.setLayoutParams(layoutParams);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.p = colorStateList;
        i iVar = this.o;
        if (iVar != null) {
            setIcon(iVar.getIcon());
        }
    }

    public void setItemBackground(int i2) {
        setItemBackground(i2 == 0 ? null : androidx.core.content.a.c(getContext(), i2));
    }

    public void setItemPosition(int i2) {
        this.n = i2;
    }

    public void setLabelVisibilityMode(int i2) {
        if (this.f13678i != i2) {
            this.f13678i = i2;
            if (this.o != null) {
                setChecked(this.o.isChecked());
            }
        }
    }

    public void setShifting(boolean z) {
        if (this.f13679j != z) {
            this.f13679j = z;
            if (this.o != null) {
                setChecked(this.o.isChecked());
            }
        }
    }

    public void setShortcut(boolean z, char c2) {
    }

    public void setTextAppearanceActive(@StyleRes int i2) {
        TextViewCompat.d(this.m, i2);
        a(this.f13681l.getTextSize(), this.m.getTextSize());
    }

    public void setTextAppearanceInactive(@StyleRes int i2) {
        TextViewCompat.d(this.f13681l, i2);
        a(this.f13681l.getTextSize(), this.m.getTextSize());
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f13681l.setTextColor(colorStateList);
            this.m.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.f13681l.setText(charSequence);
        this.m.setText(charSequence);
        i iVar = this.o;
        if (iVar == null || TextUtils.isEmpty(iVar.getContentDescription())) {
            setContentDescription(charSequence);
        }
    }

    public boolean showsIcon() {
        return true;
    }

    public BottomNavigationItemView(@NonNull Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.n = -1;
        Resources resources = getResources();
        LayoutInflater.from(context).inflate(h.design_bottom_navigation_item, (ViewGroup) this, true);
        setBackgroundResource(e.design_bottom_navigation_item_background);
        this.f13674e = resources.getDimensionPixelSize(d.design_bottom_navigation_margin);
        this.f13680k = (ImageView) findViewById(f.icon);
        this.f13681l = (TextView) findViewById(f.smallLabel);
        this.m = (TextView) findViewById(f.largeLabel);
        ViewCompat.g(this.f13681l, 2);
        ViewCompat.g(this.m, 2);
        setFocusable(true);
        a(this.f13681l.getTextSize(), this.m.getTextSize());
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        ViewCompat.a(this, drawable);
    }

    private void a(@NonNull View view, float f2, float f3, int i2) {
        view.setScaleX(f2);
        view.setScaleY(f3);
        view.setVisibility(i2);
    }

    private void a(float f2, float f3) {
        this.f13675f = f2 - f3;
        this.f13676g = (f3 * 1.0f) / f2;
        this.f13677h = (f2 * 1.0f) / f3;
    }
}

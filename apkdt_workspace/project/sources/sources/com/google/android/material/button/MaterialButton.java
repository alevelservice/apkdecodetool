package com.google.android.material.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.internal.k;
import com.google.android.material.internal.l;
import e.i.b.c.j;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class MaterialButton extends AppCompatButton {
    public static final int ICON_GRAVITY_START = 1;
    public static final int ICON_GRAVITY_TEXT_START = 2;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private final b f13721g;

    /* renamed from: h, reason: collision with root package name */
    @Px
    private int f13722h;

    /* renamed from: i, reason: collision with root package name */
    private PorterDuff.Mode f13723i;

    /* renamed from: j, reason: collision with root package name */
    private ColorStateList f13724j;

    /* renamed from: k, reason: collision with root package name */
    private Drawable f13725k;

    /* renamed from: l, reason: collision with root package name */
    @Px
    private int f13726l;

    @Px
    private int m;
    private int n;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface IconGravity {
    }

    public MaterialButton(Context context) {
        this(context, null);
    }

    private boolean a() {
        return ViewCompat.n(this) == 1;
    }

    private boolean b() {
        b bVar = this.f13721g;
        return (bVar == null || bVar.g()) ? false : true;
    }

    private void c() {
        Drawable drawable = this.f13725k;
        if (drawable != null) {
            this.f13725k = drawable.mutate();
            androidx.core.graphics.drawable.a.a(this.f13725k, this.f13724j);
            PorterDuff.Mode mode = this.f13723i;
            if (mode != null) {
                androidx.core.graphics.drawable.a.a(this.f13725k, mode);
            }
            int i2 = this.f13726l;
            if (i2 == 0) {
                i2 = this.f13725k.getIntrinsicWidth();
            }
            int i3 = this.f13726l;
            if (i3 == 0) {
                i3 = this.f13725k.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f13725k;
            int i4 = this.m;
            drawable2.setBounds(i4, 0, i2 + i4, i3);
        }
        TextViewCompat.a(this, this.f13725k, null, null, null);
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    @Px
    public int getCornerRadius() {
        if (b()) {
            return this.f13721g.a();
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f13725k;
    }

    public int getIconGravity() {
        return this.n;
    }

    @Px
    public int getIconPadding() {
        return this.f13722h;
    }

    @Px
    public int getIconSize() {
        return this.f13726l;
    }

    public ColorStateList getIconTint() {
        return this.f13724j;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f13723i;
    }

    public ColorStateList getRippleColor() {
        if (b()) {
            return this.f13721g.b();
        }
        return null;
    }

    public ColorStateList getStrokeColor() {
        if (b()) {
            return this.f13721g.c();
        }
        return null;
    }

    @Px
    public int getStrokeWidth() {
        if (b()) {
            return this.f13721g.d();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.w
    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    public ColorStateList getSupportBackgroundTintList() {
        if (b()) {
            return this.f13721g.e();
        }
        return super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.w
    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (b()) {
            return this.f13721g.f();
        }
        return super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (Build.VERSION.SDK_INT >= 21 || !b()) {
            return;
        }
        this.f13721g.a(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        b bVar;
        super.onLayout(z, i2, i3, i4, i5);
        if (Build.VERSION.SDK_INT != 21 || (bVar = this.f13721g) == null) {
            return;
        }
        bVar.a(i5 - i3, i4 - i2);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f13725k == null || this.n != 2) {
            return;
        }
        int measureText = (int) getPaint().measureText(getText().toString());
        int i4 = this.f13726l;
        if (i4 == 0) {
            i4 = this.f13725k.getIntrinsicWidth();
        }
        int measuredWidth = (((((getMeasuredWidth() - measureText) - ViewCompat.q(this)) - i4) - this.f13722h) - ViewCompat.r(this)) / 2;
        if (a()) {
            measuredWidth = -measuredWidth;
        }
        if (this.m != measuredWidth) {
            this.m = measuredWidth;
            c();
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i2) {
        if (b()) {
            this.f13721g.a(i2);
        } else {
            super.setBackgroundColor(i2);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (b()) {
            if (drawable != getBackground()) {
                this.f13721g.h();
                super.setBackgroundDrawable(drawable);
                return;
            } else {
                getBackground().setState(drawable.getState());
                return;
            }
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(@DrawableRes int i2) {
        setBackgroundDrawable(i2 != 0 ? a.a.k.a.a.c(getContext(), i2) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCornerRadius(@Px int i2) {
        if (b()) {
            this.f13721g.b(i2);
        }
    }

    public void setCornerRadiusResource(@DimenRes int i2) {
        if (b()) {
            setCornerRadius(getResources().getDimensionPixelSize(i2));
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f13725k != drawable) {
            this.f13725k = drawable;
            c();
        }
    }

    public void setIconGravity(int i2) {
        this.n = i2;
    }

    public void setIconPadding(@Px int i2) {
        if (this.f13722h != i2) {
            this.f13722h = i2;
            setCompoundDrawablePadding(i2);
        }
    }

    public void setIconResource(@DrawableRes int i2) {
        setIcon(i2 != 0 ? a.a.k.a.a.c(getContext(), i2) : null);
    }

    public void setIconSize(@Px int i2) {
        if (i2 >= 0) {
            if (this.f13726l != i2) {
                this.f13726l = i2;
                c();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("iconSize cannot be less than 0");
    }

    public void setIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f13724j != colorStateList) {
            this.f13724j = colorStateList;
            c();
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f13723i != mode) {
            this.f13723i = mode;
            c();
        }
    }

    public void setIconTintResource(@ColorRes int i2) {
        setIconTint(a.a.k.a.a.b(getContext(), i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (b()) {
            this.f13721g.a(colorStateList);
        }
    }

    public void setRippleColorResource(@ColorRes int i2) {
        if (b()) {
            setRippleColor(a.a.k.a.a.b(getContext(), i2));
        }
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        if (b()) {
            this.f13721g.b(colorStateList);
        }
    }

    public void setStrokeColorResource(@ColorRes int i2) {
        if (b()) {
            setStrokeColor(a.a.k.a.a.b(getContext(), i2));
        }
    }

    public void setStrokeWidth(@Px int i2) {
        if (b()) {
            this.f13721g.c(i2);
        }
    }

    public void setStrokeWidthResource(@DimenRes int i2) {
        if (b()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i2));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.w
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (b()) {
            this.f13721g.c(colorStateList);
        } else if (this.f13721g != null) {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.w
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (b()) {
            this.f13721g.a(mode);
        } else if (this.f13721g != null) {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, e.i.b.c.b.materialButtonStyle);
    }

    public MaterialButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray c2 = k.c(context, attributeSet, e.i.b.c.k.MaterialButton, i2, j.Widget_MaterialComponents_Button, new int[0]);
        this.f13722h = c2.getDimensionPixelSize(e.i.b.c.k.MaterialButton_iconPadding, 0);
        this.f13723i = l.a(c2.getInt(e.i.b.c.k.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f13724j = e.i.b.c.q.a.a(getContext(), c2, e.i.b.c.k.MaterialButton_iconTint);
        this.f13725k = e.i.b.c.q.a.b(getContext(), c2, e.i.b.c.k.MaterialButton_icon);
        this.n = c2.getInteger(e.i.b.c.k.MaterialButton_iconGravity, 1);
        this.f13726l = c2.getDimensionPixelSize(e.i.b.c.k.MaterialButton_iconSize, 0);
        this.f13721g = new b(this);
        this.f13721g.a(c2);
        c2.recycle();
        setCompoundDrawablePadding(this.f13722h);
        c();
    }
}

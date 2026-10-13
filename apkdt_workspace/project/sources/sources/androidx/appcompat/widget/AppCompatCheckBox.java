package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckBox;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* loaded from: classes.dex */
public class AppCompatCheckBox extends CheckBox implements androidx.core.widget.i, androidx.core.view.w {

    /* renamed from: e, reason: collision with root package name */
    private final e f1115e;

    /* renamed from: f, reason: collision with root package name */
    private final d f1116f;

    /* renamed from: g, reason: collision with root package name */
    private final l f1117g;

    public AppCompatCheckBox(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        d dVar = this.f1116f;
        if (dVar != null) {
            dVar.a();
        }
        l lVar = this.f1117g;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        e eVar = this.f1115e;
        return eVar != null ? eVar.a(compoundPaddingLeft) : compoundPaddingLeft;
    }

    @Override // androidx.core.view.w
    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.f1116f;
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    @Override // androidx.core.view.w
    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.f1116f;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportButtonTintList() {
        e eVar = this.f1115e;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportButtonTintMode() {
        e eVar = this.f1115e;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.f1116f;
        if (dVar != null) {
            dVar.a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i2) {
        super.setBackgroundResource(i2);
        d dVar = this.f1116f;
        if (dVar != null) {
            dVar.a(i2);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        e eVar = this.f1115e;
        if (eVar != null) {
            eVar.d();
        }
    }

    @Override // androidx.core.view.w
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        d dVar = this.f1116f;
        if (dVar != null) {
            dVar.b(colorStateList);
        }
    }

    @Override // androidx.core.view.w
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        d dVar = this.f1116f;
        if (dVar != null) {
            dVar.a(mode);
        }
    }

    @Override // androidx.core.widget.i
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportButtonTintList(@Nullable ColorStateList colorStateList) {
        e eVar = this.f1115e;
        if (eVar != null) {
            eVar.a(colorStateList);
        }
    }

    @Override // androidx.core.widget.i
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportButtonTintMode(@Nullable PorterDuff.Mode mode) {
        e eVar = this.f1115e;
        if (eVar != null) {
            eVar.a(mode);
        }
    }

    public AppCompatCheckBox(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, a.a.a.checkboxStyle);
    }

    public AppCompatCheckBox(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(a0.b(context), attributeSet, i2);
        y.a(this, getContext());
        this.f1115e = new e(this);
        this.f1115e.a(attributeSet, i2);
        this.f1116f = new d(this);
        this.f1116f.a(attributeSet, i2);
        this.f1117g = new l(this);
        this.f1117g.a(attributeSet, i2);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(@DrawableRes int i2) {
        setButtonDrawable(a.a.k.a.a.c(getContext(), i2));
    }
}

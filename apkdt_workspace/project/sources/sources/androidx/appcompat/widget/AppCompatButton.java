package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.widget.TextViewCompat;

/* loaded from: classes.dex */
public class AppCompatButton extends Button implements androidx.core.view.w, androidx.core.widget.b, androidx.core.widget.j {

    /* renamed from: e, reason: collision with root package name */
    private final d f1113e;

    /* renamed from: f, reason: collision with root package name */
    private final l f1114f;

    public AppCompatButton(@NonNull Context context) {
        this(context, null);
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d dVar = this.f1113e;
        if (dVar != null) {
            dVar.a();
        }
        l lVar = this.f1114f;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // android.widget.TextView
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeMaxTextSize() {
        if (androidx.core.widget.b.f2035a) {
            return super.getAutoSizeMaxTextSize();
        }
        l lVar = this.f1114f;
        if (lVar != null) {
            return lVar.c();
        }
        return -1;
    }

    @Override // android.widget.TextView
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeMinTextSize() {
        if (androidx.core.widget.b.f2035a) {
            return super.getAutoSizeMinTextSize();
        }
        l lVar = this.f1114f;
        if (lVar != null) {
            return lVar.d();
        }
        return -1;
    }

    @Override // android.widget.TextView
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeStepGranularity() {
        if (androidx.core.widget.b.f2035a) {
            return super.getAutoSizeStepGranularity();
        }
        l lVar = this.f1114f;
        if (lVar != null) {
            return lVar.e();
        }
        return -1;
    }

    @Override // android.widget.TextView
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int[] getAutoSizeTextAvailableSizes() {
        if (androidx.core.widget.b.f2035a) {
            return super.getAutoSizeTextAvailableSizes();
        }
        l lVar = this.f1114f;
        return lVar != null ? lVar.f() : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeTextType() {
        if (androidx.core.widget.b.f2035a) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        l lVar = this.f1114f;
        if (lVar != null) {
            return lVar.g();
        }
        return 0;
    }

    @Override // androidx.core.view.w
    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.f1113e;
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    @Override // androidx.core.view.w
    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.f1113e;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1114f.h();
    }

    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1114f.i();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        l lVar = this.f1114f;
        if (lVar != null) {
            lVar.a(z, i2, i3, i4, i5);
        }
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        super.onTextChanged(charSequence, i2, i3, i4);
        l lVar = this.f1114f;
        if (lVar == null || androidx.core.widget.b.f2035a || !lVar.j()) {
            return;
        }
        this.f1114f.b();
    }

    @Override // android.widget.TextView
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setAutoSizeTextTypeUniformWithConfiguration(int i2, int i3, int i4, int i5) {
        if (androidx.core.widget.b.f2035a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i2, i3, i4, i5);
            return;
        }
        l lVar = this.f1114f;
        if (lVar != null) {
            lVar.a(i2, i3, i4, i5);
        }
    }

    @Override // android.widget.TextView
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull int[] iArr, int i2) {
        if (androidx.core.widget.b.f2035a) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i2);
            return;
        }
        l lVar = this.f1114f;
        if (lVar != null) {
            lVar.a(iArr, i2);
        }
    }

    @Override // android.widget.TextView
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setAutoSizeTextTypeWithDefaults(int i2) {
        if (androidx.core.widget.b.f2035a) {
            super.setAutoSizeTextTypeWithDefaults(i2);
            return;
        }
        l lVar = this.f1114f;
        if (lVar != null) {
            lVar.a(i2);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.f1113e;
        if (dVar != null) {
            dVar.a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i2) {
        super.setBackgroundResource(i2);
        d dVar = this.f1113e;
        if (dVar != null) {
            dVar.a(i2);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.a(this, callback));
    }

    public void setSupportAllCaps(boolean z) {
        l lVar = this.f1114f;
        if (lVar != null) {
            lVar.a(z);
        }
    }

    @Override // androidx.core.view.w
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        d dVar = this.f1113e;
        if (dVar != null) {
            dVar.b(colorStateList);
        }
    }

    @Override // androidx.core.view.w
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        d dVar = this.f1113e;
        if (dVar != null) {
            dVar.a(mode);
        }
    }

    @Override // androidx.core.widget.j
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintList(@Nullable ColorStateList colorStateList) {
        this.f1114f.a(colorStateList);
        this.f1114f.a();
    }

    @Override // androidx.core.widget.j
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1114f.a(mode);
        this.f1114f.a();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        l lVar = this.f1114f;
        if (lVar != null) {
            lVar.a(context, i2);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i2, float f2) {
        if (androidx.core.widget.b.f2035a) {
            super.setTextSize(i2, f2);
            return;
        }
        l lVar = this.f1114f;
        if (lVar != null) {
            lVar.a(i2, f2);
        }
    }

    public AppCompatButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, a.a.a.buttonStyle);
    }

    public AppCompatButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(a0.b(context), attributeSet, i2);
        y.a(this, getContext());
        this.f1113e = new d(this);
        this.f1113e.a(attributeSet, i2);
        this.f1114f = new l(this);
        this.f1114f.a(attributeSet, i2);
        this.f1114f.a();
    }
}

package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AutoCompleteTextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.widget.TextViewCompat;

/* loaded from: classes.dex */
public class AppCompatAutoCompleteTextView extends AutoCompleteTextView implements androidx.core.view.w {

    /* renamed from: g, reason: collision with root package name */
    private static final int[] f1110g = {R.attr.popupBackground};

    /* renamed from: e, reason: collision with root package name */
    private final d f1111e;

    /* renamed from: f, reason: collision with root package name */
    private final l f1112f;

    public AppCompatAutoCompleteTextView(@NonNull Context context) {
        this(context, null);
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d dVar = this.f1111e;
        if (dVar != null) {
            dVar.a();
        }
        l lVar = this.f1112f;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // androidx.core.view.w
    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.f1111e;
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    @Override // androidx.core.view.w
    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.f1111e;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        g.a(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.f1111e;
        if (dVar != null) {
            dVar.a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i2) {
        super.setBackgroundResource(i2);
        d dVar = this.f1111e;
        if (dVar != null) {
            dVar.a(i2);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.a(this, callback));
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(@DrawableRes int i2) {
        setDropDownBackgroundDrawable(a.a.k.a.a.c(getContext(), i2));
    }

    @Override // androidx.core.view.w
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        d dVar = this.f1111e;
        if (dVar != null) {
            dVar.b(colorStateList);
        }
    }

    @Override // androidx.core.view.w
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        d dVar = this.f1111e;
        if (dVar != null) {
            dVar.a(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        l lVar = this.f1112f;
        if (lVar != null) {
            lVar.a(context, i2);
        }
    }

    public AppCompatAutoCompleteTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, a.a.a.autoCompleteTextViewStyle);
    }

    public AppCompatAutoCompleteTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(a0.b(context), attributeSet, i2);
        y.a(this, getContext());
        d0 a2 = d0.a(getContext(), attributeSet, f1110g, i2, 0);
        if (a2.g(0)) {
            setDropDownBackgroundDrawable(a2.b(0));
        }
        a2.b();
        this.f1111e = new d(this);
        this.f1111e.a(attributeSet, i2);
        this.f1112f = new l(this);
        this.f1112f.a(attributeSet, i2);
        this.f1112f.a();
    }
}

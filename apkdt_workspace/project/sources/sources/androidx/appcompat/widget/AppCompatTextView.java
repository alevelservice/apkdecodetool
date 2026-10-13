package androidx.appcompat.widget;

import a.i.l.c;
import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.widget.TextViewCompat;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class AppCompatTextView extends TextView implements androidx.core.view.w, androidx.core.widget.j, androidx.core.widget.b {

    /* renamed from: e, reason: collision with root package name */
    private final d f1156e;

    /* renamed from: f, reason: collision with root package name */
    private final l f1157f;

    /* renamed from: g, reason: collision with root package name */
    private final k f1158g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private Future<a.i.l.c> f1159h;

    public AppCompatTextView(@NonNull Context context) {
        this(context, null);
    }

    private void a() {
        Future<a.i.l.c> future = this.f1159h;
        if (future != null) {
            try {
                this.f1159h = null;
                TextViewCompat.a(this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d dVar = this.f1156e;
        if (dVar != null) {
            dVar.a();
        }
        l lVar = this.f1157f;
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
        l lVar = this.f1157f;
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
        l lVar = this.f1157f;
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
        l lVar = this.f1157f;
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
        l lVar = this.f1157f;
        return lVar != null ? lVar.f() : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeTextType() {
        if (androidx.core.widget.b.f2035a) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        l lVar = this.f1157f;
        if (lVar != null) {
            return lVar.g();
        }
        return 0;
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return TextViewCompat.b(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return TextViewCompat.c(this);
    }

    @Override // androidx.core.view.w
    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.f1156e;
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    @Override // androidx.core.view.w
    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.f1156e;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1157f.h();
    }

    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1157f.i();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        a();
        return super.getText();
    }

    @Override // android.widget.TextView
    @NonNull
    @RequiresApi(api = 26)
    public TextClassifier getTextClassifier() {
        k kVar;
        if (Build.VERSION.SDK_INT < 28 && (kVar = this.f1158g) != null) {
            return kVar.a();
        }
        return super.getTextClassifier();
    }

    @NonNull
    public c.a getTextMetricsParamsCompat() {
        return TextViewCompat.f(this);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        g.a(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        l lVar = this.f1157f;
        if (lVar != null) {
            lVar.a(z, i2, i3, i4, i5);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i3) {
        a();
        super.onMeasure(i2, i3);
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        super.onTextChanged(charSequence, i2, i3, i4);
        l lVar = this.f1157f;
        if (lVar == null || androidx.core.widget.b.f2035a || !lVar.j()) {
            return;
        }
        this.f1157f.b();
    }

    @Override // android.widget.TextView
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setAutoSizeTextTypeUniformWithConfiguration(int i2, int i3, int i4, int i5) {
        if (androidx.core.widget.b.f2035a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i2, i3, i4, i5);
            return;
        }
        l lVar = this.f1157f;
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
        l lVar = this.f1157f;
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
        l lVar = this.f1157f;
        if (lVar != null) {
            lVar.a(i2);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.f1156e;
        if (dVar != null) {
            dVar.a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i2) {
        super.setBackgroundResource(i2);
        d dVar = this.f1156e;
        if (dVar != null) {
            dVar.a(i2);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        l lVar = this.f1157f;
        if (lVar != null) {
            lVar.k();
        }
    }

    @Override // android.widget.TextView
    @RequiresApi(17)
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        l lVar = this.f1157f;
        if (lVar != null) {
            lVar.k();
        }
    }

    @Override // android.widget.TextView
    @RequiresApi(17)
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        l lVar = this.f1157f;
        if (lVar != null) {
            lVar.k();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        l lVar = this.f1157f;
        if (lVar != null) {
            lVar.k();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.a(this, callback));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(@IntRange(from = 0) @Px int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i2);
        } else {
            TextViewCompat.a(this, i2);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(@IntRange(from = 0) @Px int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i2);
        } else {
            TextViewCompat.b(this, i2);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(@IntRange(from = 0) @Px int i2) {
        TextViewCompat.c(this, i2);
    }

    public void setPrecomputedText(@NonNull a.i.l.c cVar) {
        TextViewCompat.a(this, cVar);
    }

    @Override // androidx.core.view.w
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        d dVar = this.f1156e;
        if (dVar != null) {
            dVar.b(colorStateList);
        }
    }

    @Override // androidx.core.view.w
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        d dVar = this.f1156e;
        if (dVar != null) {
            dVar.a(mode);
        }
    }

    @Override // androidx.core.widget.j
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintList(@Nullable ColorStateList colorStateList) {
        this.f1157f.a(colorStateList);
        this.f1157f.a();
    }

    @Override // androidx.core.widget.j
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1157f.a(mode);
        this.f1157f.a();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        l lVar = this.f1157f;
        if (lVar != null) {
            lVar.a(context, i2);
        }
    }

    @Override // android.widget.TextView
    @RequiresApi(api = 26)
    public void setTextClassifier(@Nullable TextClassifier textClassifier) {
        k kVar;
        if (Build.VERSION.SDK_INT < 28 && (kVar = this.f1158g) != null) {
            kVar.a(textClassifier);
        } else {
            super.setTextClassifier(textClassifier);
        }
    }

    public void setTextFuture(@Nullable Future<a.i.l.c> future) {
        this.f1159h = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(@NonNull c.a aVar) {
        TextViewCompat.a(this, aVar);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i2, float f2) {
        if (androidx.core.widget.b.f2035a) {
            super.setTextSize(i2, f2);
            return;
        }
        l lVar = this.f1157f;
        if (lVar != null) {
            lVar.a(i2, f2);
        }
    }

    @Override // android.widget.TextView
    public void setTypeface(@Nullable Typeface typeface, int i2) {
        Typeface a2 = (typeface == null || i2 <= 0) ? null : a.i.h.d.a(getContext(), typeface, i2);
        if (a2 != null) {
            typeface = a2;
        }
        super.setTypeface(typeface, i2);
    }

    public AppCompatTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public AppCompatTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(a0.b(context), attributeSet, i2);
        y.a(this, getContext());
        this.f1156e = new d(this);
        this.f1156e.a(attributeSet, i2);
        this.f1157f = new l(this);
        this.f1157f.a(attributeSet, i2);
        this.f1157f.a();
        this.f1158g = new k(this);
    }

    @Override // android.widget.TextView
    @RequiresApi(17)
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i2 != 0 ? a.a.k.a.a.c(context, i2) : null, i3 != 0 ? a.a.k.a.a.c(context, i3) : null, i4 != 0 ? a.a.k.a.a.c(context, i4) : null, i5 != 0 ? a.a.k.a.a.c(context, i5) : null);
        l lVar = this.f1157f;
        if (lVar != null) {
            lVar.k();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i2 != 0 ? a.a.k.a.a.c(context, i2) : null, i3 != 0 ? a.a.k.a.a.c(context, i3) : null, i4 != 0 ? a.a.k.a.a.c(context, i4) : null, i5 != 0 ? a.a.k.a.a.c(context, i5) : null);
        l lVar = this.f1157f;
        if (lVar != null) {
            lVar.k();
        }
    }
}

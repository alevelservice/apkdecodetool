package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* loaded from: classes.dex */
public class AppCompatImageButton extends ImageButton implements androidx.core.view.w, androidx.core.widget.k {

    /* renamed from: e, reason: collision with root package name */
    private final d f1123e;

    /* renamed from: f, reason: collision with root package name */
    private final h f1124f;

    public AppCompatImageButton(@NonNull Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d dVar = this.f1123e;
        if (dVar != null) {
            dVar.a();
        }
        h hVar = this.f1124f;
        if (hVar != null) {
            hVar.a();
        }
    }

    @Override // androidx.core.view.w
    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.f1123e;
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    @Override // androidx.core.view.w
    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.f1123e;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Override // androidx.core.widget.k
    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportImageTintList() {
        h hVar = this.f1124f;
        if (hVar != null) {
            return hVar.b();
        }
        return null;
    }

    @Override // androidx.core.widget.k
    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportImageTintMode() {
        h hVar = this.f1124f;
        if (hVar != null) {
            return hVar.c();
        }
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f1124f.d() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.f1123e;
        if (dVar != null) {
            dVar.a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i2) {
        super.setBackgroundResource(i2);
        d dVar = this.f1123e;
        if (dVar != null) {
            dVar.a(i2);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        h hVar = this.f1124f;
        if (hVar != null) {
            hVar.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        super.setImageDrawable(drawable);
        h hVar = this.f1124f;
        if (hVar != null) {
            hVar.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i2) {
        this.f1124f.a(i2);
    }

    @Override // android.widget.ImageView
    public void setImageURI(@Nullable Uri uri) {
        super.setImageURI(uri);
        h hVar = this.f1124f;
        if (hVar != null) {
            hVar.a();
        }
    }

    @Override // androidx.core.view.w
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        d dVar = this.f1123e;
        if (dVar != null) {
            dVar.b(colorStateList);
        }
    }

    @Override // androidx.core.view.w
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        d dVar = this.f1123e;
        if (dVar != null) {
            dVar.a(mode);
        }
    }

    @Override // androidx.core.widget.k
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        h hVar = this.f1124f;
        if (hVar != null) {
            hVar.a(colorStateList);
        }
    }

    @Override // androidx.core.widget.k
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        h hVar = this.f1124f;
        if (hVar != null) {
            hVar.a(mode);
        }
    }

    public AppCompatImageButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, a.a.a.imageButtonStyle);
    }

    public AppCompatImageButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(a0.b(context), attributeSet, i2);
        y.a(this, getContext());
        this.f1123e = new d(this);
        this.f1123e.a(attributeSet, i2);
        this.f1124f = new h(this);
        this.f1124f.a(attributeSet, i2);
    }
}

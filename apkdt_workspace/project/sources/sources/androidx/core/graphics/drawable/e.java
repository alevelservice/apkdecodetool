package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WrappedDrawableApi21.java */
@RequiresApi(21)
/* loaded from: classes.dex */
public class e extends d {

    /* renamed from: l, reason: collision with root package name */
    private static Method f1837l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Drawable drawable) {
        super(drawable);
        c();
    }

    private void c() {
        if (f1837l == null) {
            try {
                f1837l = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception unused) {
            }
        }
    }

    @Override // androidx.core.graphics.drawable.d
    protected boolean b() {
        if (Build.VERSION.SDK_INT != 21) {
            return false;
        }
        Drawable drawable = this.f1836j;
        return (drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer) || (drawable instanceof InsetDrawable) || (drawable instanceof RippleDrawable);
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Rect getDirtyBounds() {
        return this.f1836j.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(@NonNull Outline outline) {
        this.f1836j.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isProjected() {
        Method method;
        Drawable drawable = this.f1836j;
        if (drawable != null && (method = f1837l) != null) {
            try {
                return ((Boolean) method.invoke(drawable, new Object[0])).booleanValue();
            } catch (Exception unused) {
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f2, float f3) {
        this.f1836j.setHotspot(f2, f3);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i2, int i3, int i4, int i5) {
        this.f1836j.setHotspotBounds(i2, i3, i4, i5);
    }

    @Override // androidx.core.graphics.drawable.d, android.graphics.drawable.Drawable
    public boolean setState(@NonNull int[] iArr) {
        if (!super.setState(iArr)) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // androidx.core.graphics.drawable.d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTint(int i2) {
        if (b()) {
            super.setTint(i2);
        } else {
            this.f1836j.setTint(i2);
        }
    }

    @Override // androidx.core.graphics.drawable.d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        if (b()) {
            super.setTintList(colorStateList);
        } else {
            this.f1836j.setTintList(colorStateList);
        }
    }

    @Override // androidx.core.graphics.drawable.d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        if (b()) {
            super.setTintMode(mode);
        } else {
            this.f1836j.setTintMode(mode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(f fVar, Resources resources) {
        super(fVar, resources);
        c();
    }
}

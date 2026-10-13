package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WrappedDrawableApi14.java */
/* loaded from: classes.dex */
public class d extends Drawable implements Drawable.Callback, c, b {

    /* renamed from: k, reason: collision with root package name */
    static final PorterDuff.Mode f1830k = PorterDuff.Mode.SRC_IN;

    /* renamed from: e, reason: collision with root package name */
    private int f1831e;

    /* renamed from: f, reason: collision with root package name */
    private PorterDuff.Mode f1832f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f1833g;

    /* renamed from: h, reason: collision with root package name */
    f f1834h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f1835i;

    /* renamed from: j, reason: collision with root package name */
    Drawable f1836j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(@NonNull f fVar, @Nullable Resources resources) {
        this.f1834h = fVar;
        a(resources);
    }

    private void a(@Nullable Resources resources) {
        Drawable.ConstantState constantState;
        f fVar = this.f1834h;
        if (fVar == null || (constantState = fVar.f1839b) == null) {
            return;
        }
        a(constantState.newDrawable(resources));
    }

    @NonNull
    private f c() {
        return new f(this.f1834h);
    }

    protected boolean b() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.f1836j.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        f fVar = this.f1834h;
        return changingConfigurations | (fVar != null ? fVar.getChangingConfigurations() : 0) | this.f1836j.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        f fVar = this.f1834h;
        if (fVar == null || !fVar.a()) {
            return null;
        }
        this.f1834h.f1838a = getChangingConfigurations();
        return this.f1834h;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable getCurrent() {
        return this.f1836j.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f1836j.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f1836j.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f1836j.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f1836j.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f1836j.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        return this.f1836j.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public int[] getState() {
        return this.f1836j.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f1836j.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(19)
    public boolean isAutoMirrored() {
        return this.f1836j.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        f fVar;
        ColorStateList colorStateList = (!b() || (fVar = this.f1834h) == null) ? null : fVar.f1840c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f1836j.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f1836j.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.f1835i && super.mutate() == this) {
            this.f1834h = c();
            Drawable drawable = this.f1836j;
            if (drawable != null) {
                drawable.mutate();
            }
            f fVar = this.f1834h;
            if (fVar != null) {
                Drawable drawable2 = this.f1836j;
                fVar.f1839b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f1835i = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f1836j;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        return this.f1836j.setLevel(i2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j2) {
        scheduleSelf(runnable, j2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f1836j.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(19)
    public void setAutoMirrored(boolean z) {
        this.f1836j.setAutoMirrored(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i2) {
        this.f1836j.setChangingConfigurations(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1836j.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f1836j.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f1836j.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(@NonNull int[] iArr) {
        return a(iArr) || this.f1836j.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTint(int i2) {
        setTintList(ColorStateList.valueOf(i2));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        this.f1834h.f1840c = colorStateList;
        a(getState());
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        this.f1834h.f1841d = mode;
        a(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f1836j.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        unscheduleSelf(runnable);
    }

    private boolean a(int[] iArr) {
        if (!b()) {
            return false;
        }
        f fVar = this.f1834h;
        ColorStateList colorStateList = fVar.f1840c;
        PorterDuff.Mode mode = fVar.f1841d;
        if (colorStateList != null && mode != null) {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!this.f1833g || colorForState != this.f1831e || mode != this.f1832f) {
                setColorFilter(colorForState, mode);
                this.f1831e = colorForState;
                this.f1832f = mode;
                this.f1833g = true;
                return true;
            }
        } else {
            this.f1833g = false;
            clearColorFilter();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(@Nullable Drawable drawable) {
        this.f1834h = c();
        a(drawable);
    }

    @Override // androidx.core.graphics.drawable.c
    public final Drawable a() {
        return this.f1836j;
    }

    @Override // androidx.core.graphics.drawable.c
    public final void a(Drawable drawable) {
        Drawable drawable2 = this.f1836j;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1836j = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            f fVar = this.f1834h;
            if (fVar != null) {
                fVar.f1839b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }
}

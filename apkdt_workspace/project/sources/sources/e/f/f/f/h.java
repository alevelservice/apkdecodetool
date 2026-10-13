package e.f.f.f;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;

/* compiled from: ForwardingDrawable.java */
/* loaded from: classes.dex */
public class h extends Drawable implements Drawable.Callback, s, r, d {

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private Drawable f17326e;

    /* renamed from: f, reason: collision with root package name */
    private final e f17327f = new e();

    /* renamed from: g, reason: collision with root package name */
    protected s f17328g;

    static {
        new Matrix();
    }

    public h(@Nullable Drawable drawable) {
        this.f17326e = drawable;
        f.a(this.f17326e, this, this);
    }

    @Override // e.f.f.f.d
    public Drawable a(@Nullable Drawable drawable) {
        return b(drawable);
    }

    @Nullable
    public Drawable b(@Nullable Drawable drawable) {
        Drawable c2 = c(drawable);
        invalidateSelf();
        return c2;
    }

    @Nullable
    protected Drawable c(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f17326e;
        f.a(drawable2, null, null);
        f.a(drawable, null, null);
        f.a(drawable, this.f17327f);
        f.a(drawable, this);
        f.a(drawable, this, this);
        this.f17326e = drawable;
        return drawable2;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f17326e;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        Drawable drawable = this.f17326e;
        if (drawable == null) {
            return super.getConstantState();
        }
        return drawable.getConstantState();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable getCurrent() {
        return this.f17326e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f17326e;
        if (drawable == null) {
            return super.getIntrinsicHeight();
        }
        return drawable.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f17326e;
        if (drawable == null) {
            return super.getIntrinsicWidth();
        }
        return drawable.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f17326e;
        if (drawable == null) {
            return 0;
        }
        return drawable.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Drawable drawable = this.f17326e;
        if (drawable == null) {
            return super.getPadding(rect);
        }
        return drawable.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f17326e;
        if (drawable == null) {
            return false;
        }
        return drawable.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f17326e;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f17326e;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        Drawable drawable = this.f17326e;
        if (drawable == null) {
            return super.onLevelChange(i2);
        }
        return drawable.setLevel(i2);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f17326e;
        if (drawable == null) {
            return super.onStateChange(iArr);
        }
        return drawable.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        scheduleSelf(runnable, j2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f17327f.a(i2);
        Drawable drawable = this.f17326e;
        if (drawable != null) {
            drawable.setAlpha(i2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f17327f.a(colorFilter);
        Drawable drawable = this.f17326e;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f17327f.a(z);
        Drawable drawable = this.f17326e;
        if (drawable != null) {
            drawable.setDither(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f17327f.b(z);
        Drawable drawable = this.f17326e;
        if (drawable != null) {
            drawable.setFilterBitmap(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void setHotspot(float f2, float f3) {
        Drawable drawable = this.f17326e;
        if (drawable != null) {
            drawable.setHotspot(f2, f3);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f17326e;
        return drawable == null ? visible : drawable.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    @Override // e.f.f.f.d
    @Nullable
    public Drawable a() {
        return getCurrent();
    }

    @Override // e.f.f.f.r
    public void a(s sVar) {
        this.f17328g = sVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(Matrix matrix) {
        s sVar = this.f17328g;
        if (sVar != null) {
            sVar.a(matrix);
        } else {
            matrix.reset();
        }
    }

    @Override // e.f.f.f.s
    public void a(Matrix matrix) {
        b(matrix);
    }

    @Override // e.f.f.f.s
    public void a(RectF rectF) {
        s sVar = this.f17328g;
        if (sVar != null) {
            sVar.a(rectF);
        } else {
            rectF.set(getBounds());
        }
    }
}

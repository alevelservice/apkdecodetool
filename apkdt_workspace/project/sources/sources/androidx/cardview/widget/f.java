package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* compiled from: RoundRectDrawable.java */
@RequiresApi(21)
/* loaded from: classes.dex */
class f extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    private float f1544a;

    /* renamed from: c, reason: collision with root package name */
    private final RectF f1546c;

    /* renamed from: d, reason: collision with root package name */
    private final Rect f1547d;

    /* renamed from: e, reason: collision with root package name */
    private float f1548e;

    /* renamed from: h, reason: collision with root package name */
    private ColorStateList f1551h;

    /* renamed from: i, reason: collision with root package name */
    private PorterDuffColorFilter f1552i;

    /* renamed from: j, reason: collision with root package name */
    private ColorStateList f1553j;

    /* renamed from: f, reason: collision with root package name */
    private boolean f1549f = false;

    /* renamed from: g, reason: collision with root package name */
    private boolean f1550g = true;

    /* renamed from: k, reason: collision with root package name */
    private PorterDuff.Mode f1554k = PorterDuff.Mode.SRC_IN;

    /* renamed from: b, reason: collision with root package name */
    private final Paint f1545b = new Paint(5);

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(ColorStateList colorStateList, float f2) {
        this.f1544a = f2;
        b(colorStateList);
        this.f1546c = new RectF();
        this.f1547d = new Rect();
    }

    private void b(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f1551h = colorStateList;
        this.f1545b.setColor(this.f1551h.getColorForState(getState(), this.f1551h.getDefaultColor()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f2, boolean z, boolean z2) {
        if (f2 == this.f1548e && this.f1549f == z && this.f1550g == z2) {
            return;
        }
        this.f1548e = f2;
        this.f1549f = z;
        this.f1550g = z2;
        a((Rect) null);
        invalidateSelf();
    }

    public float c() {
        return this.f1544a;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f1545b;
        if (this.f1552i == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f1552i);
            z = true;
        }
        RectF rectF = this.f1546c;
        float f2 = this.f1544a;
        canvas.drawRoundRect(rectF, f2, f2, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f1547d, this.f1544a);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f1553j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f1551h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        a(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f1551h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z = colorForState != this.f1545b.getColor();
        if (z) {
            this.f1545b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f1553j;
        if (colorStateList2 == null || (mode = this.f1554k) == null) {
            return z;
        }
        this.f1552i = a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f1545b.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1545b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f1553j = colorStateList;
        this.f1552i = a(this.f1553j, this.f1554k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f1554k = mode;
        this.f1552i = a(this.f1553j, this.f1554k);
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float b() {
        return this.f1548e;
    }

    private void a(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        this.f1546c.set(rect.left, rect.top, rect.right, rect.bottom);
        this.f1547d.set(rect);
        if (this.f1549f) {
            this.f1547d.inset((int) Math.ceil(g.a(this.f1548e, this.f1544a, this.f1550g)), (int) Math.ceil(g.b(this.f1548e, this.f1544a, this.f1550g)));
            this.f1546c.set(this.f1547d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f2) {
        if (f2 == this.f1544a) {
            return;
        }
        this.f1544a = f2;
        a((Rect) null);
        invalidateSelf();
    }

    public void a(@Nullable ColorStateList colorStateList) {
        b(colorStateList);
        invalidateSelf();
    }

    public ColorStateList a() {
        return this.f1551h;
    }

    private PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }
}

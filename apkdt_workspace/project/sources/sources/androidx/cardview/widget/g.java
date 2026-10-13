package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;

/* compiled from: RoundRectDrawableWithShadow.java */
/* loaded from: classes.dex */
class g extends Drawable {
    private static final double q = Math.cos(Math.toRadians(45.0d));
    static a r;

    /* renamed from: a, reason: collision with root package name */
    private final int f1555a;

    /* renamed from: c, reason: collision with root package name */
    private Paint f1557c;

    /* renamed from: d, reason: collision with root package name */
    private Paint f1558d;

    /* renamed from: e, reason: collision with root package name */
    private final RectF f1559e;

    /* renamed from: f, reason: collision with root package name */
    private float f1560f;

    /* renamed from: g, reason: collision with root package name */
    private Path f1561g;

    /* renamed from: h, reason: collision with root package name */
    private float f1562h;

    /* renamed from: i, reason: collision with root package name */
    private float f1563i;

    /* renamed from: j, reason: collision with root package name */
    private float f1564j;

    /* renamed from: k, reason: collision with root package name */
    private ColorStateList f1565k;
    private final int m;
    private final int n;

    /* renamed from: l, reason: collision with root package name */
    private boolean f1566l = true;
    private boolean o = true;
    private boolean p = false;

    /* renamed from: b, reason: collision with root package name */
    private Paint f1556b = new Paint(5);

    /* compiled from: RoundRectDrawableWithShadow.java */
    /* loaded from: classes.dex */
    interface a {
        void a(Canvas canvas, RectF rectF, float f2, Paint paint);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Resources resources, ColorStateList colorStateList, float f2, float f3, float f4) {
        this.m = resources.getColor(a.d.b.cardview_shadow_start_color);
        this.n = resources.getColor(a.d.b.cardview_shadow_end_color);
        this.f1555a = resources.getDimensionPixelSize(a.d.c.cardview_compat_inset_shadow);
        b(colorStateList);
        this.f1557c = new Paint(5);
        this.f1557c.setStyle(Paint.Style.FILL);
        this.f1560f = (int) (f2 + 0.5f);
        this.f1559e = new RectF();
        this.f1558d = new Paint(this.f1557c);
        this.f1558d.setAntiAlias(false);
        a(f3, f4);
    }

    private void b(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f1565k = colorStateList;
        this.f1556b.setColor(this.f1565k.getColorForState(getState(), this.f1565k.getDefaultColor()));
    }

    private int d(float f2) {
        int i2 = (int) (f2 + 0.5f);
        return i2 % 2 == 1 ? i2 - 1 : i2;
    }

    private void g() {
        float f2 = this.f1560f;
        RectF rectF = new RectF(-f2, -f2, f2, f2);
        RectF rectF2 = new RectF(rectF);
        float f3 = this.f1563i;
        rectF2.inset(-f3, -f3);
        Path path = this.f1561g;
        if (path == null) {
            this.f1561g = new Path();
        } else {
            path.reset();
        }
        this.f1561g.setFillType(Path.FillType.EVEN_ODD);
        this.f1561g.moveTo(-this.f1560f, 0.0f);
        this.f1561g.rLineTo(-this.f1563i, 0.0f);
        this.f1561g.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f1561g.arcTo(rectF, 270.0f, -90.0f, false);
        this.f1561g.close();
        float f4 = this.f1560f;
        float f5 = this.f1563i;
        float f6 = f4 / (f4 + f5);
        Paint paint = this.f1557c;
        float f7 = f4 + f5;
        int i2 = this.m;
        paint.setShader(new RadialGradient(0.0f, 0.0f, f7, new int[]{i2, i2, this.n}, new float[]{0.0f, f6, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.f1558d;
        float f8 = this.f1560f;
        float f9 = this.f1563i;
        int i3 = this.m;
        paint2.setShader(new LinearGradient(0.0f, (-f8) + f9, 0.0f, (-f8) - f9, new int[]{i3, i3, this.n}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f1558d.setAntiAlias(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.o = z;
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(float f2) {
        a(f2, this.f1562h);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f1566l) {
            b(getBounds());
            this.f1566l = false;
        }
        canvas.translate(0.0f, this.f1564j / 2.0f);
        a(canvas);
        canvas.translate(0.0f, (-this.f1564j) / 2.0f);
        r.a(canvas, this.f1559e, this.f1560f, this.f1556b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float e() {
        float f2 = this.f1562h;
        return (Math.max(f2, this.f1560f + this.f1555a + (f2 / 2.0f)) * 2.0f) + ((this.f1562h + this.f1555a) * 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float f() {
        return this.f1564j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(b(this.f1562h, this.f1560f, this.o));
        int ceil2 = (int) Math.ceil(a(this.f1562h, this.f1560f, this.o));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f1565k;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f1566l = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f1565k;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f1556b.getColor() == colorForState) {
            return false;
        }
        this.f1556b.setColor(colorForState);
        this.f1566l = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f1556b.setAlpha(i2);
        this.f1557c.setAlpha(i2);
        this.f1558d.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1556b.setColorFilter(colorFilter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float c() {
        return this.f1562h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float d() {
        float f2 = this.f1562h;
        return (Math.max(f2, this.f1560f + this.f1555a + ((f2 * 1.5f) / 2.0f)) * 2.0f) + (((this.f1562h * 1.5f) + this.f1555a) * 2.0f);
    }

    private void a(float f2, float f3) {
        if (f2 < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f2 + ". Must be >= 0");
        }
        if (f3 >= 0.0f) {
            float d2 = d(f2);
            float d3 = d(f3);
            if (d2 > d3) {
                if (!this.p) {
                    this.p = true;
                }
                d2 = d3;
            }
            if (this.f1564j == d2 && this.f1562h == d3) {
                return;
            }
            this.f1564j = d2;
            this.f1562h = d3;
            this.f1563i = (int) ((d2 * 1.5f) + this.f1555a + 0.5f);
            this.f1566l = true;
            invalidateSelf();
            return;
        }
        throw new IllegalArgumentException("Invalid max shadow size " + f3 + ". Must be >= 0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float b(float f2, float f3, boolean z) {
        if (!z) {
            return f2 * 1.5f;
        }
        double d2 = f2 * 1.5f;
        double d3 = 1.0d - q;
        double d4 = f3;
        Double.isNaN(d4);
        Double.isNaN(d2);
        return (float) (d2 + (d3 * d4));
    }

    private void b(Rect rect) {
        float f2 = this.f1562h;
        float f3 = 1.5f * f2;
        this.f1559e.set(rect.left + f2, rect.top + f3, rect.right - f2, rect.bottom - f3);
        g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float b() {
        return this.f1560f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(float f2) {
        a(this.f1564j, f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float a(float f2, float f3, boolean z) {
        if (!z) {
            return f2;
        }
        double d2 = f2;
        double d3 = 1.0d - q;
        double d4 = f3;
        Double.isNaN(d4);
        Double.isNaN(d2);
        return (float) (d2 + (d3 * d4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f2) {
        if (f2 < 0.0f) {
            throw new IllegalArgumentException("Invalid radius " + f2 + ". Must be >= 0");
        }
        float f3 = (int) (f2 + 0.5f);
        if (this.f1560f == f3) {
            return;
        }
        this.f1560f = f3;
        this.f1566l = true;
        invalidateSelf();
    }

    private void a(Canvas canvas) {
        float f2 = this.f1560f;
        float f3 = (-f2) - this.f1563i;
        float f4 = f2 + this.f1555a + (this.f1564j / 2.0f);
        float f5 = f4 * 2.0f;
        boolean z = this.f1559e.width() - f5 > 0.0f;
        boolean z2 = this.f1559e.height() - f5 > 0.0f;
        int save = canvas.save();
        RectF rectF = this.f1559e;
        canvas.translate(rectF.left + f4, rectF.top + f4);
        canvas.drawPath(this.f1561g, this.f1557c);
        if (z) {
            canvas.drawRect(0.0f, f3, this.f1559e.width() - f5, -this.f1560f, this.f1558d);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        RectF rectF2 = this.f1559e;
        canvas.translate(rectF2.right - f4, rectF2.bottom - f4);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f1561g, this.f1557c);
        if (z) {
            canvas.drawRect(0.0f, f3, this.f1559e.width() - f5, (-this.f1560f) + this.f1563i, this.f1558d);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        RectF rectF3 = this.f1559e;
        canvas.translate(rectF3.left + f4, rectF3.bottom - f4);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f1561g, this.f1557c);
        if (z2) {
            canvas.drawRect(0.0f, f3, this.f1559e.height() - f5, -this.f1560f, this.f1558d);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF4 = this.f1559e;
        canvas.translate(rectF4.right - f4, rectF4.top + f4);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f1561g, this.f1557c);
        if (z2) {
            canvas.drawRect(0.0f, f3, this.f1559e.height() - f5, -this.f1560f, this.f1558d);
        }
        canvas.restoreToCount(save4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Rect rect) {
        getPadding(rect);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@Nullable ColorStateList colorStateList) {
        b(colorStateList);
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList a() {
        return this.f1565k;
    }
}

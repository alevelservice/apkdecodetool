package e.i.b.c.s;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.appcompat.graphics.drawable.c;

/* compiled from: ShadowDrawableWrapper.java */
/* loaded from: classes.dex */
public class a extends c {
    static final double u = Math.cos(Math.toRadians(45.0d));

    /* renamed from: f, reason: collision with root package name */
    final Paint f17947f;

    /* renamed from: g, reason: collision with root package name */
    final Paint f17948g;

    /* renamed from: h, reason: collision with root package name */
    final RectF f17949h;

    /* renamed from: i, reason: collision with root package name */
    float f17950i;

    /* renamed from: j, reason: collision with root package name */
    Path f17951j;

    /* renamed from: k, reason: collision with root package name */
    float f17952k;

    /* renamed from: l, reason: collision with root package name */
    float f17953l;
    float m;
    private boolean n;
    private final int o;
    private final int p;
    private final int q;
    private boolean r;
    private float s;
    private boolean t;

    public a(Context context, Drawable drawable, float f2, float f3, float f4) {
        super(drawable);
        this.n = true;
        this.r = true;
        this.t = false;
        this.o = androidx.core.content.a.a(context, e.i.b.c.c.design_fab_shadow_start_color);
        this.p = androidx.core.content.a.a(context, e.i.b.c.c.design_fab_shadow_mid_color);
        this.q = androidx.core.content.a.a(context, e.i.b.c.c.design_fab_shadow_end_color);
        this.f17947f = new Paint(5);
        this.f17947f.setStyle(Paint.Style.FILL);
        this.f17950i = Math.round(f2);
        this.f17949h = new RectF();
        this.f17948g = new Paint(this.f17947f);
        this.f17948g.setAntiAlias(false);
        a(f3, f4);
    }

    private static int c(float f2) {
        int round = Math.round(f2);
        return round % 2 == 1 ? round - 1 : round;
    }

    public void a(boolean z) {
        this.r = z;
        invalidateSelf();
    }

    public void b(float f2) {
        a(f2, this.f17952k);
    }

    @Override // androidx.appcompat.graphics.drawable.c, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.n) {
            a(getBounds());
            this.n = false;
        }
        a(canvas);
        super.draw(canvas);
    }

    @Override // androidx.appcompat.graphics.drawable.c, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // androidx.appcompat.graphics.drawable.c, android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(b(this.f17952k, this.f17950i, this.r));
        int ceil2 = (int) Math.ceil(a(this.f17952k, this.f17950i, this.r));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    @Override // androidx.appcompat.graphics.drawable.c, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.n = true;
    }

    @Override // androidx.appcompat.graphics.drawable.c, android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        super.setAlpha(i2);
        this.f17947f.setAlpha(i2);
        this.f17948g.setAlpha(i2);
    }

    public float b() {
        return this.m;
    }

    public static float b(float f2, float f3, boolean z) {
        if (!z) {
            return f2 * 1.5f;
        }
        double d2 = f2 * 1.5f;
        double d3 = 1.0d - u;
        double d4 = f3;
        Double.isNaN(d4);
        Double.isNaN(d2);
        return (float) (d2 + (d3 * d4));
    }

    private void c() {
        float f2 = this.f17950i;
        RectF rectF = new RectF(-f2, -f2, f2, f2);
        RectF rectF2 = new RectF(rectF);
        float f3 = this.f17953l;
        rectF2.inset(-f3, -f3);
        Path path = this.f17951j;
        if (path == null) {
            this.f17951j = new Path();
        } else {
            path.reset();
        }
        this.f17951j.setFillType(Path.FillType.EVEN_ODD);
        this.f17951j.moveTo(-this.f17950i, 0.0f);
        this.f17951j.rLineTo(-this.f17953l, 0.0f);
        this.f17951j.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f17951j.arcTo(rectF, 270.0f, -90.0f, false);
        this.f17951j.close();
        float f4 = -rectF2.top;
        if (f4 > 0.0f) {
            float f5 = this.f17950i / f4;
            this.f17947f.setShader(new RadialGradient(0.0f, 0.0f, f4, new int[]{0, this.o, this.p, this.q}, new float[]{0.0f, f5, ((1.0f - f5) / 2.0f) + f5, 1.0f}, Shader.TileMode.CLAMP));
        }
        this.f17948g.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, new int[]{this.o, this.p, this.q}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f17948g.setAntiAlias(false);
    }

    public void a(float f2, float f3) {
        if (f2 >= 0.0f && f3 >= 0.0f) {
            float c2 = c(f2);
            float c3 = c(f3);
            if (c2 > c3) {
                if (!this.t) {
                    this.t = true;
                }
                c2 = c3;
            }
            if (this.m == c2 && this.f17952k == c3) {
                return;
            }
            this.m = c2;
            this.f17952k = c3;
            this.f17953l = Math.round(c2 * 1.5f);
            this.n = true;
            invalidateSelf();
            return;
        }
        throw new IllegalArgumentException("invalid shadow size");
    }

    public static float a(float f2, float f3, boolean z) {
        if (!z) {
            return f2;
        }
        double d2 = f2;
        double d3 = 1.0d - u;
        double d4 = f3;
        Double.isNaN(d4);
        Double.isNaN(d2);
        return (float) (d2 + (d3 * d4));
    }

    public final void a(float f2) {
        if (this.s != f2) {
            this.s = f2;
            invalidateSelf();
        }
    }

    private void a(Canvas canvas) {
        int i2;
        float f2;
        int i3;
        float f3;
        float f4;
        float f5;
        int save = canvas.save();
        canvas.rotate(this.s, this.f17949h.centerX(), this.f17949h.centerY());
        float f6 = this.f17950i;
        float f7 = (-f6) - this.f17953l;
        float f8 = f6 * 2.0f;
        boolean z = this.f17949h.width() - f8 > 0.0f;
        boolean z2 = this.f17949h.height() - f8 > 0.0f;
        float f9 = this.m;
        float f10 = f6 / ((f9 - (0.5f * f9)) + f6);
        float f11 = f6 / ((f9 - (0.25f * f9)) + f6);
        float f12 = f6 / ((f9 - (f9 * 1.0f)) + f6);
        int save2 = canvas.save();
        RectF rectF = this.f17949h;
        canvas.translate(rectF.left + f6, rectF.top + f6);
        canvas.scale(f10, f11);
        canvas.drawPath(this.f17951j, this.f17947f);
        if (z) {
            canvas.scale(1.0f / f10, 1.0f);
            i2 = save2;
            f2 = f12;
            i3 = save;
            f3 = f11;
            canvas.drawRect(0.0f, f7, this.f17949h.width() - f8, -this.f17950i, this.f17948g);
        } else {
            i2 = save2;
            f2 = f12;
            i3 = save;
            f3 = f11;
        }
        canvas.restoreToCount(i2);
        int save3 = canvas.save();
        RectF rectF2 = this.f17949h;
        canvas.translate(rectF2.right - f6, rectF2.bottom - f6);
        float f13 = f2;
        canvas.scale(f10, f13);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f17951j, this.f17947f);
        if (z) {
            canvas.scale(1.0f / f10, 1.0f);
            f4 = f3;
            f5 = f13;
            canvas.drawRect(0.0f, f7, this.f17949h.width() - f8, (-this.f17950i) + this.f17953l, this.f17948g);
        } else {
            f4 = f3;
            f5 = f13;
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF3 = this.f17949h;
        canvas.translate(rectF3.left + f6, rectF3.bottom - f6);
        canvas.scale(f10, f5);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f17951j, this.f17947f);
        if (z2) {
            canvas.scale(1.0f / f5, 1.0f);
            canvas.drawRect(0.0f, f7, this.f17949h.height() - f8, -this.f17950i, this.f17948g);
        }
        canvas.restoreToCount(save4);
        int save5 = canvas.save();
        RectF rectF4 = this.f17949h;
        canvas.translate(rectF4.right - f6, rectF4.top + f6);
        float f14 = f4;
        canvas.scale(f10, f14);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f17951j, this.f17947f);
        if (z2) {
            canvas.scale(1.0f / f14, 1.0f);
            canvas.drawRect(0.0f, f7, this.f17949h.height() - f8, -this.f17950i, this.f17948g);
        }
        canvas.restoreToCount(save5);
        canvas.restoreToCount(i3);
    }

    private void a(Rect rect) {
        float f2 = this.f17952k;
        float f3 = 1.5f * f2;
        this.f17949h.set(rect.left + f2, rect.top + f3, rect.right - f2, rect.bottom - f3);
        Drawable a2 = a();
        RectF rectF = this.f17949h;
        a2.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        c();
    }
}

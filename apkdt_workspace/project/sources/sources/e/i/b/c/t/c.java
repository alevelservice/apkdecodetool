package e.i.b.c.t;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.material.internal.Experimental;

/* compiled from: MaterialShapeDrawable.java */
@Experimental("The shapes API is currently experimental and subject to change")
/* loaded from: classes.dex */
public class c extends Drawable implements androidx.core.graphics.drawable.b {

    @Nullable
    private PorterDuffColorFilter B;

    @Nullable
    private e q;

    /* renamed from: e, reason: collision with root package name */
    private final Paint f17954e = new Paint();

    /* renamed from: f, reason: collision with root package name */
    private final Matrix[] f17955f = new Matrix[4];

    /* renamed from: g, reason: collision with root package name */
    private final Matrix[] f17956g = new Matrix[4];

    /* renamed from: h, reason: collision with root package name */
    private final d[] f17957h = new d[4];

    /* renamed from: i, reason: collision with root package name */
    private final Matrix f17958i = new Matrix();

    /* renamed from: j, reason: collision with root package name */
    private final Path f17959j = new Path();

    /* renamed from: k, reason: collision with root package name */
    private final PointF f17960k = new PointF();

    /* renamed from: l, reason: collision with root package name */
    private final d f17961l = new d();
    private final Region m = new Region();
    private final Region n = new Region();
    private final float[] o = new float[2];
    private final float[] p = new float[2];
    private boolean r = false;
    private boolean s = false;
    private float t = 1.0f;
    private int u = -16777216;
    private int v = 5;
    private int w = 10;
    private int x = 255;
    private float y = 1.0f;
    private float z = 0.0f;
    private Paint.Style A = Paint.Style.FILL_AND_STROKE;
    private PorterDuff.Mode C = PorterDuff.Mode.SRC_IN;
    private ColorStateList D = null;

    public c(@Nullable e eVar) {
        this.q = null;
        this.q = eVar;
        for (int i2 = 0; i2 < 4; i2++) {
            this.f17955f[i2] = new Matrix();
            this.f17956g[i2] = new Matrix();
            this.f17957h[i2] = new d();
        }
    }

    private static int a(int i2, int i3) {
        return (i2 * (i3 + (i3 >>> 7))) >>> 8;
    }

    private void c(int i2, int i3, int i4) {
        a(i2, i3, i4, this.f17960k);
        a(i2).a(a(i2, i3, i4), this.t, this.f17957h[i2]);
        float b2 = b(((i2 - 1) + 4) % 4, i3, i4) + 1.5707964f;
        this.f17955f[i2].reset();
        Matrix matrix = this.f17955f[i2];
        PointF pointF = this.f17960k;
        matrix.setTranslate(pointF.x, pointF.y);
        this.f17955f[i2].preRotate((float) Math.toDegrees(b2));
    }

    private void d(int i2, int i3, int i4) {
        float[] fArr = this.o;
        d[] dVarArr = this.f17957h;
        fArr[0] = dVarArr[i2].f17964c;
        fArr[1] = dVarArr[i2].f17965d;
        this.f17955f[i2].mapPoints(fArr);
        float b2 = b(i2, i3, i4);
        this.f17956g[i2].reset();
        Matrix matrix = this.f17956g[i2];
        float[] fArr2 = this.o;
        matrix.setTranslate(fArr2[0], fArr2[1]);
        this.f17956g[i2].preRotate((float) Math.toDegrees(b2));
    }

    public void a(boolean z) {
        this.r = z;
        invalidateSelf();
    }

    public ColorStateList b() {
        return this.D;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f17954e.setColorFilter(this.B);
        int alpha = this.f17954e.getAlpha();
        this.f17954e.setAlpha(a(alpha, this.x));
        this.f17954e.setStrokeWidth(this.z);
        this.f17954e.setStyle(this.A);
        int i2 = this.v;
        if (i2 > 0 && this.r) {
            this.f17954e.setShadowLayer(this.w, 0.0f, i2, this.u);
        }
        if (this.q != null) {
            b(canvas.getWidth(), canvas.getHeight(), this.f17959j);
            canvas.drawPath(this.f17959j, this.f17954e);
        } else {
            canvas.drawRect(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), this.f17954e);
        }
        this.f17954e.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        Rect bounds = getBounds();
        this.m.set(bounds);
        b(bounds.width(), bounds.height(), this.f17959j);
        this.n.setPath(this.f17959j, this.m);
        this.m.op(this.n, Region.Op.DIFFERENCE);
        return this.m;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i2) {
        this.x = i2;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f17954e.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTint(@ColorInt int i2) {
        setTintList(ColorStateList.valueOf(i2));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        this.D = colorStateList;
        c();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        this.C = mode;
        c();
        invalidateSelf();
    }

    private void b(int i2, Path path) {
        int i3 = (i2 + 1) % 4;
        float[] fArr = this.o;
        d[] dVarArr = this.f17957h;
        fArr[0] = dVarArr[i2].f17964c;
        fArr[1] = dVarArr[i2].f17965d;
        this.f17955f[i2].mapPoints(fArr);
        float[] fArr2 = this.p;
        d[] dVarArr2 = this.f17957h;
        fArr2[0] = dVarArr2[i3].f17962a;
        fArr2[1] = dVarArr2[i3].f17963b;
        this.f17955f[i3].mapPoints(fArr2);
        float f2 = this.o[0];
        float[] fArr3 = this.p;
        float hypot = (float) Math.hypot(f2 - fArr3[0], r0[1] - fArr3[1]);
        this.f17961l.b(0.0f, 0.0f);
        b(i2).a(hypot, this.t, this.f17961l);
        this.f17961l.a(this.f17956g[i2], path);
    }

    public float a() {
        return this.t;
    }

    public void a(float f2) {
        this.t = f2;
        invalidateSelf();
    }

    public void a(Paint.Style style) {
        this.A = style;
        invalidateSelf();
    }

    private void c() {
        ColorStateList colorStateList = this.D;
        if (colorStateList != null && this.C != null) {
            int colorForState = colorStateList.getColorForState(getState(), 0);
            this.B = new PorterDuffColorFilter(colorForState, this.C);
            if (this.s) {
                this.u = colorForState;
                return;
            }
            return;
        }
        this.B = null;
    }

    public void a(int i2, int i3, Path path) {
        path.rewind();
        if (this.q == null) {
            return;
        }
        for (int i4 = 0; i4 < 4; i4++) {
            c(i4, i2, i3);
            d(i4, i2, i3);
        }
        for (int i5 = 0; i5 < 4; i5++) {
            a(i5, path);
            b(i5, path);
        }
        path.close();
    }

    private b b(int i2) {
        if (i2 == 1) {
            return this.q.e();
        }
        if (i2 == 2) {
            return this.q.a();
        }
        if (i2 != 3) {
            return this.q.f();
        }
        return this.q.d();
    }

    private void a(int i2, Path path) {
        float[] fArr = this.o;
        d[] dVarArr = this.f17957h;
        fArr[0] = dVarArr[i2].f17962a;
        fArr[1] = dVarArr[i2].f17963b;
        this.f17955f[i2].mapPoints(fArr);
        if (i2 == 0) {
            float[] fArr2 = this.o;
            path.moveTo(fArr2[0], fArr2[1]);
        } else {
            float[] fArr3 = this.o;
            path.lineTo(fArr3[0], fArr3[1]);
        }
        this.f17957h[i2].a(this.f17955f[i2], path);
    }

    private float b(int i2, int i3, int i4) {
        int i5 = (i2 + 1) % 4;
        a(i2, i3, i4, this.f17960k);
        PointF pointF = this.f17960k;
        float f2 = pointF.x;
        float f3 = pointF.y;
        a(i5, i3, i4, pointF);
        PointF pointF2 = this.f17960k;
        return (float) Math.atan2(pointF2.y - f3, pointF2.x - f2);
    }

    private a a(int i2) {
        if (i2 == 1) {
            return this.q.h();
        }
        if (i2 == 2) {
            return this.q.c();
        }
        if (i2 != 3) {
            return this.q.g();
        }
        return this.q.b();
    }

    private void a(int i2, int i3, int i4, PointF pointF) {
        if (i2 == 1) {
            pointF.set(i3, 0.0f);
            return;
        }
        if (i2 == 2) {
            pointF.set(i3, i4);
        } else if (i2 != 3) {
            pointF.set(0.0f, 0.0f);
        } else {
            pointF.set(0.0f, i4);
        }
    }

    private void b(int i2, int i3, Path path) {
        a(i2, i3, path);
        if (this.y == 1.0f) {
            return;
        }
        this.f17958i.reset();
        Matrix matrix = this.f17958i;
        float f2 = this.y;
        matrix.setScale(f2, f2, i2 / 2, i3 / 2);
        path.transform(this.f17958i);
    }

    private float a(int i2, int i3, int i4) {
        a(((i2 - 1) + 4) % 4, i3, i4, this.f17960k);
        PointF pointF = this.f17960k;
        float f2 = pointF.x;
        float f3 = pointF.y;
        a((i2 + 1) % 4, i3, i4, pointF);
        PointF pointF2 = this.f17960k;
        float f4 = pointF2.x;
        float f5 = pointF2.y;
        a(i2, i3, i4, pointF2);
        PointF pointF3 = this.f17960k;
        float f6 = pointF3.x;
        float atan2 = ((float) Math.atan2(f3 - r6, f2 - f6)) - ((float) Math.atan2(f5 - pointF3.y, f4 - f6));
        if (atan2 >= 0.0f) {
            return atan2;
        }
        double d2 = atan2;
        Double.isNaN(d2);
        return (float) (d2 + 6.283185307179586d);
    }
}

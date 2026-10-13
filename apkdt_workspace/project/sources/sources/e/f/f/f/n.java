package e.f.f.f;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.facebook.common.internal.VisibleForTesting;
import java.util.Arrays;

/* compiled from: RoundedDrawable.java */
/* loaded from: classes.dex */
public abstract class n extends Drawable implements j, r {

    @Nullable
    @VisibleForTesting
    Matrix A;

    @Nullable
    private s F;

    /* renamed from: e, reason: collision with root package name */
    private final Drawable f17349e;

    @Nullable
    @VisibleForTesting
    float[] o;

    @Nullable
    @VisibleForTesting
    RectF t;

    @Nullable
    @VisibleForTesting
    Matrix z;

    /* renamed from: f, reason: collision with root package name */
    protected boolean f17350f = false;

    /* renamed from: g, reason: collision with root package name */
    protected boolean f17351g = false;

    /* renamed from: h, reason: collision with root package name */
    protected float f17352h = 0.0f;

    /* renamed from: i, reason: collision with root package name */
    protected final Path f17353i = new Path();

    /* renamed from: j, reason: collision with root package name */
    protected boolean f17354j = true;

    /* renamed from: k, reason: collision with root package name */
    protected int f17355k = 0;

    /* renamed from: l, reason: collision with root package name */
    protected final Path f17356l = new Path();
    private final float[] m = new float[8];

    @VisibleForTesting
    final float[] n = new float[8];

    @VisibleForTesting
    final RectF p = new RectF();

    @VisibleForTesting
    final RectF q = new RectF();

    @VisibleForTesting
    final RectF r = new RectF();

    @VisibleForTesting
    final RectF s = new RectF();

    @VisibleForTesting
    final Matrix u = new Matrix();

    @VisibleForTesting
    final Matrix v = new Matrix();

    @VisibleForTesting
    final Matrix w = new Matrix();

    @VisibleForTesting
    final Matrix x = new Matrix();

    @VisibleForTesting
    final Matrix y = new Matrix();

    @VisibleForTesting
    final Matrix B = new Matrix();
    private float C = 0.0f;
    private boolean D = false;
    private boolean E = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Drawable drawable) {
        this.f17349e = drawable;
    }

    @Override // e.f.f.f.j
    public void a(boolean z) {
        this.f17350f = z;
        this.E = true;
        invalidateSelf();
    }

    @Override // e.f.f.f.j
    public void b(boolean z) {
        if (this.D != z) {
            this.D = z;
            this.E = true;
            invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() {
        Matrix matrix;
        s sVar = this.F;
        if (sVar != null) {
            sVar.a(this.w);
            this.F.a(this.p);
        } else {
            this.w.reset();
            this.p.set(getBounds());
        }
        this.r.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        this.s.set(this.f17349e.getBounds());
        this.u.setRectToRect(this.r, this.s, Matrix.ScaleToFit.FILL);
        if (this.D) {
            RectF rectF = this.t;
            if (rectF == null) {
                this.t = new RectF(this.p);
            } else {
                rectF.set(this.p);
            }
            RectF rectF2 = this.t;
            float f2 = this.f17352h;
            rectF2.inset(f2, f2);
            if (this.z == null) {
                this.z = new Matrix();
            }
            this.z.setRectToRect(this.p, this.t, Matrix.ScaleToFit.FILL);
        } else {
            Matrix matrix2 = this.z;
            if (matrix2 != null) {
                matrix2.reset();
            }
        }
        if (!this.w.equals(this.x) || !this.u.equals(this.v) || ((matrix = this.z) != null && !matrix.equals(this.A))) {
            this.f17354j = true;
            this.w.invert(this.y);
            this.B.set(this.w);
            if (this.D) {
                this.B.postConcat(this.z);
            }
            this.B.preConcat(this.u);
            this.x.set(this.w);
            this.v.set(this.u);
            if (this.D) {
                Matrix matrix3 = this.A;
                if (matrix3 == null) {
                    this.A = new Matrix(this.z);
                } else {
                    matrix3.set(this.z);
                }
            } else {
                Matrix matrix4 = this.A;
                if (matrix4 != null) {
                    matrix4.reset();
                }
            }
        }
        if (this.p.equals(this.q)) {
            return;
        }
        this.E = true;
        this.q.set(this.p);
    }

    @Override // android.graphics.drawable.Drawable
    public void clearColorFilter() {
        this.f17349e.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("RoundedDrawable#draw");
        }
        this.f17349e.draw(canvas);
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(api = 19)
    public int getAlpha() {
        return this.f17349e.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    @RequiresApi(api = 21)
    public ColorFilter getColorFilter() {
        return this.f17349e.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f17349e.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f17349e.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f17349e.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f17349e.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f17349e.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(int i2, @NonNull PorterDuff.Mode mode) {
        this.f17349e.setColorFilter(i2, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f17349e.setColorFilter(colorFilter);
    }

    @Override // e.f.f.f.j
    public void a(float[] fArr) {
        if (fArr == null) {
            Arrays.fill(this.m, 0.0f);
            this.f17351g = false;
        } else {
            com.facebook.common.internal.h.a(fArr.length == 8, "radii should have exactly 8 values");
            System.arraycopy(fArr, 0, this.m, 0, 8);
            this.f17351g = false;
            for (int i2 = 0; i2 < 8; i2++) {
                this.f17351g |= fArr[i2] > 0.0f;
            }
        }
        this.E = true;
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
        float[] fArr;
        if (this.E) {
            this.f17356l.reset();
            RectF rectF = this.p;
            float f2 = this.f17352h;
            rectF.inset(f2 / 2.0f, f2 / 2.0f);
            if (this.f17350f) {
                this.f17356l.addCircle(this.p.centerX(), this.p.centerY(), Math.min(this.p.width(), this.p.height()) / 2.0f, Path.Direction.CW);
            } else {
                int i2 = 0;
                while (true) {
                    fArr = this.n;
                    if (i2 >= fArr.length) {
                        break;
                    }
                    fArr[i2] = (this.m[i2] + this.C) - (this.f17352h / 2.0f);
                    i2++;
                }
                this.f17356l.addRoundRect(this.p, fArr, Path.Direction.CW);
            }
            RectF rectF2 = this.p;
            float f3 = this.f17352h;
            rectF2.inset((-f3) / 2.0f, (-f3) / 2.0f);
            this.f17353i.reset();
            float f4 = this.C + (this.D ? this.f17352h : 0.0f);
            this.p.inset(f4, f4);
            if (this.f17350f) {
                this.f17353i.addCircle(this.p.centerX(), this.p.centerY(), Math.min(this.p.width(), this.p.height()) / 2.0f, Path.Direction.CW);
            } else if (this.D) {
                if (this.o == null) {
                    this.o = new float[8];
                }
                for (int i3 = 0; i3 < this.n.length; i3++) {
                    this.o[i3] = this.m[i3] - this.f17352h;
                }
                this.f17353i.addRoundRect(this.p, this.o, Path.Direction.CW);
            } else {
                this.f17353i.addRoundRect(this.p, this.m, Path.Direction.CW);
            }
            float f5 = -f4;
            this.p.inset(f5, f5);
            this.f17353i.setFillType(Path.FillType.WINDING);
            this.E = false;
        }
    }

    @Override // e.f.f.f.j
    public void a(int i2, float f2) {
        if (this.f17355k == i2 && this.f17352h == f2) {
            return;
        }
        this.f17355k = i2;
        this.f17352h = f2;
        this.E = true;
        invalidateSelf();
    }

    @Override // e.f.f.f.j
    public void a(float f2) {
        if (this.C != f2) {
            this.C = f2;
            this.E = true;
            invalidateSelf();
        }
    }

    @Override // e.f.f.f.r
    public void a(@Nullable s sVar) {
        this.F = sVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public boolean a() {
        return this.f17350f || this.f17351g || this.f17352h > 0.0f;
    }
}

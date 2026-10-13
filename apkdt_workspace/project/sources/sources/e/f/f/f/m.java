package e.f.f.f;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.facebook.common.internal.VisibleForTesting;
import java.util.Arrays;
import javax.annotation.Nullable;

/* compiled from: RoundedCornersDrawable.java */
/* loaded from: classes.dex */
public class m extends h implements j {

    /* renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    b f17342h;

    /* renamed from: i, reason: collision with root package name */
    private final RectF f17343i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private RectF f17344j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    private Matrix f17345k;

    /* renamed from: l, reason: collision with root package name */
    private final float[] f17346l;

    @VisibleForTesting
    final float[] m;

    @VisibleForTesting
    final Paint n;
    private boolean o;
    private float p;
    private int q;
    private int r;
    private float s;
    private boolean t;
    private final Path u;
    private final Path v;
    private final RectF w;

    /* compiled from: RoundedCornersDrawable.java */
    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f17347a = new int[b.values().length];

        static {
            try {
                f17347a[b.CLIPPING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17347a[b.OVERLAY_COLOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* compiled from: RoundedCornersDrawable.java */
    /* loaded from: classes.dex */
    public enum b {
        OVERLAY_COLOR,
        CLIPPING
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(Drawable drawable) {
        super(drawable);
        com.facebook.common.internal.h.a(drawable);
        this.f17342h = b.OVERLAY_COLOR;
        this.f17343i = new RectF();
        this.f17346l = new float[8];
        this.m = new float[8];
        this.n = new Paint(1);
        this.o = false;
        this.p = 0.0f;
        this.q = 0;
        this.r = 0;
        this.s = 0.0f;
        this.t = false;
        this.u = new Path();
        this.v = new Path();
        this.w = new RectF();
    }

    @Override // e.f.f.f.j
    public void a(boolean z) {
        this.o = z;
        b();
        invalidateSelf();
    }

    @Override // e.f.f.f.j
    public void b(boolean z) {
        this.t = z;
        b();
        invalidateSelf();
    }

    @Override // e.f.f.f.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f17343i.set(getBounds());
        int i2 = a.f17347a[this.f17342h.ordinal()];
        if (i2 == 1) {
            int save = canvas.save();
            this.u.setFillType(Path.FillType.EVEN_ODD);
            canvas.clipPath(this.u);
            super.draw(canvas);
            canvas.restoreToCount(save);
        } else if (i2 == 2) {
            if (this.t) {
                RectF rectF = this.f17344j;
                if (rectF == null) {
                    this.f17344j = new RectF(this.f17343i);
                    this.f17345k = new Matrix();
                } else {
                    rectF.set(this.f17343i);
                }
                RectF rectF2 = this.f17344j;
                float f2 = this.p;
                rectF2.inset(f2, f2);
                this.f17345k.setRectToRect(this.f17343i, this.f17344j, Matrix.ScaleToFit.FILL);
                int save2 = canvas.save();
                canvas.clipRect(this.f17343i);
                canvas.concat(this.f17345k);
                super.draw(canvas);
                canvas.restoreToCount(save2);
            } else {
                super.draw(canvas);
            }
            this.n.setStyle(Paint.Style.FILL);
            this.n.setColor(this.r);
            this.n.setStrokeWidth(0.0f);
            this.u.setFillType(Path.FillType.EVEN_ODD);
            canvas.drawPath(this.u, this.n);
            if (this.o) {
                float width = ((this.f17343i.width() - this.f17343i.height()) + this.p) / 2.0f;
                float height = ((this.f17343i.height() - this.f17343i.width()) + this.p) / 2.0f;
                if (width > 0.0f) {
                    RectF rectF3 = this.f17343i;
                    float f3 = rectF3.left;
                    canvas.drawRect(f3, rectF3.top, f3 + width, rectF3.bottom, this.n);
                    RectF rectF4 = this.f17343i;
                    float f4 = rectF4.right;
                    canvas.drawRect(f4 - width, rectF4.top, f4, rectF4.bottom, this.n);
                }
                if (height > 0.0f) {
                    RectF rectF5 = this.f17343i;
                    float f5 = rectF5.left;
                    float f6 = rectF5.top;
                    canvas.drawRect(f5, f6, rectF5.right, f6 + height, this.n);
                    RectF rectF6 = this.f17343i;
                    float f7 = rectF6.left;
                    float f8 = rectF6.bottom;
                    canvas.drawRect(f7, f8 - height, rectF6.right, f8, this.n);
                }
            }
        }
        if (this.q != 0) {
            this.n.setStyle(Paint.Style.STROKE);
            this.n.setColor(this.q);
            this.n.setStrokeWidth(this.p);
            this.u.setFillType(Path.FillType.EVEN_ODD);
            canvas.drawPath(this.v, this.n);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.f.f.f.h, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        b();
    }

    private void b() {
        float[] fArr;
        this.u.reset();
        this.v.reset();
        this.w.set(getBounds());
        RectF rectF = this.w;
        float f2 = this.s;
        rectF.inset(f2, f2);
        this.u.addRect(this.w, Path.Direction.CW);
        if (this.o) {
            this.u.addCircle(this.w.centerX(), this.w.centerY(), Math.min(this.w.width(), this.w.height()) / 2.0f, Path.Direction.CW);
        } else {
            this.u.addRoundRect(this.w, this.f17346l, Path.Direction.CW);
        }
        RectF rectF2 = this.w;
        float f3 = this.s;
        rectF2.inset(-f3, -f3);
        RectF rectF3 = this.w;
        float f4 = this.p;
        rectF3.inset(f4 / 2.0f, f4 / 2.0f);
        if (this.o) {
            this.v.addCircle(this.w.centerX(), this.w.centerY(), Math.min(this.w.width(), this.w.height()) / 2.0f, Path.Direction.CW);
        } else {
            int i2 = 0;
            while (true) {
                fArr = this.m;
                if (i2 >= fArr.length) {
                    break;
                }
                fArr[i2] = (this.f17346l[i2] + this.s) - (this.p / 2.0f);
                i2++;
            }
            this.v.addRoundRect(this.w, fArr, Path.Direction.CW);
        }
        RectF rectF4 = this.w;
        float f5 = this.p;
        rectF4.inset((-f5) / 2.0f, (-f5) / 2.0f);
    }

    @Override // e.f.f.f.j
    public void a(float[] fArr) {
        if (fArr == null) {
            Arrays.fill(this.f17346l, 0.0f);
        } else {
            com.facebook.common.internal.h.a(fArr.length == 8, "radii should have exactly 8 values");
            System.arraycopy(fArr, 0, this.f17346l, 0, 8);
        }
        b();
        invalidateSelf();
    }

    public void a(int i2) {
        this.r = i2;
        invalidateSelf();
    }

    @Override // e.f.f.f.j
    public void a(int i2, float f2) {
        this.q = i2;
        this.p = f2;
        b();
        invalidateSelf();
    }

    @Override // e.f.f.f.j
    public void a(float f2) {
        this.s = f2;
        b();
        invalidateSelf();
    }
}

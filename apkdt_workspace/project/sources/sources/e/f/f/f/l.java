package e.f.f.f;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import com.facebook.common.internal.VisibleForTesting;
import java.util.Arrays;
import javax.annotation.Nullable;

/* compiled from: RoundedColorDrawable.java */
/* loaded from: classes.dex */
public class l extends Drawable implements j {

    /* renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    @Nullable
    float[] f17336g;

    /* renamed from: e, reason: collision with root package name */
    private final float[] f17334e = new float[8];

    /* renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    final float[] f17335f = new float[8];

    /* renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    final Paint f17337h = new Paint(1);

    /* renamed from: i, reason: collision with root package name */
    private boolean f17338i = false;

    /* renamed from: j, reason: collision with root package name */
    private float f17339j = 0.0f;

    /* renamed from: k, reason: collision with root package name */
    private float f17340k = 0.0f;

    /* renamed from: l, reason: collision with root package name */
    private int f17341l = 0;
    private boolean m = false;

    @VisibleForTesting
    final Path n = new Path();

    @VisibleForTesting
    final Path o = new Path();
    private int p = 0;
    private final RectF q = new RectF();
    private int r = 255;

    public l(int i2) {
        a(i2);
    }

    @TargetApi(11)
    public static l a(ColorDrawable colorDrawable) {
        return new l(colorDrawable.getColor());
    }

    @Override // e.f.f.f.j
    public void b(boolean z) {
        if (this.m != z) {
            this.m = z;
            a();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f17337h.setColor(f.a(this.p, this.r));
        this.f17337h.setStyle(Paint.Style.FILL);
        canvas.drawPath(this.n, this.f17337h);
        if (this.f17339j != 0.0f) {
            this.f17337h.setColor(f.a(this.f17341l, this.r));
            this.f17337h.setStyle(Paint.Style.STROKE);
            this.f17337h.setStrokeWidth(this.f17339j);
            canvas.drawPath(this.o, this.f17337h);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.r;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return f.a(f.a(this.p, this.r));
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        a();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (i2 != this.r) {
            this.r = i2;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // e.f.f.f.j
    public void a(boolean z) {
        this.f17338i = z;
        a();
        invalidateSelf();
    }

    @Override // e.f.f.f.j
    public void a(float[] fArr) {
        if (fArr == null) {
            Arrays.fill(this.f17334e, 0.0f);
        } else {
            com.facebook.common.internal.h.a(fArr.length == 8, "radii should have exactly 8 values");
            System.arraycopy(fArr, 0, this.f17334e, 0, 8);
        }
        a();
        invalidateSelf();
    }

    public void a(int i2) {
        if (this.p != i2) {
            this.p = i2;
            invalidateSelf();
        }
    }

    @Override // e.f.f.f.j
    public void a(int i2, float f2) {
        if (this.f17341l != i2) {
            this.f17341l = i2;
            invalidateSelf();
        }
        if (this.f17339j != f2) {
            this.f17339j = f2;
            a();
            invalidateSelf();
        }
    }

    @Override // e.f.f.f.j
    public void a(float f2) {
        if (this.f17340k != f2) {
            this.f17340k = f2;
            a();
            invalidateSelf();
        }
    }

    private void a() {
        float[] fArr;
        float[] fArr2;
        this.n.reset();
        this.o.reset();
        this.q.set(getBounds());
        RectF rectF = this.q;
        float f2 = this.f17339j;
        rectF.inset(f2 / 2.0f, f2 / 2.0f);
        int i2 = 0;
        if (this.f17338i) {
            this.o.addCircle(this.q.centerX(), this.q.centerY(), Math.min(this.q.width(), this.q.height()) / 2.0f, Path.Direction.CW);
        } else {
            int i3 = 0;
            while (true) {
                fArr = this.f17335f;
                if (i3 >= fArr.length) {
                    break;
                }
                fArr[i3] = (this.f17334e[i3] + this.f17340k) - (this.f17339j / 2.0f);
                i3++;
            }
            this.o.addRoundRect(this.q, fArr, Path.Direction.CW);
        }
        RectF rectF2 = this.q;
        float f3 = this.f17339j;
        rectF2.inset((-f3) / 2.0f, (-f3) / 2.0f);
        float f4 = this.f17340k + (this.m ? this.f17339j : 0.0f);
        this.q.inset(f4, f4);
        if (this.f17338i) {
            this.n.addCircle(this.q.centerX(), this.q.centerY(), Math.min(this.q.width(), this.q.height()) / 2.0f, Path.Direction.CW);
        } else if (this.m) {
            if (this.f17336g == null) {
                this.f17336g = new float[8];
            }
            while (true) {
                fArr2 = this.f17336g;
                if (i2 >= fArr2.length) {
                    break;
                }
                fArr2[i2] = this.f17334e[i2] - this.f17339j;
                i2++;
            }
            this.n.addRoundRect(this.q, fArr2, Path.Direction.CW);
        } else {
            this.n.addRoundRect(this.q, this.f17334e, Path.Direction.CW);
        }
        float f5 = -f4;
        this.q.inset(f5, f5);
    }
}

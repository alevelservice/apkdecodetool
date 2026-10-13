package e.f.f.f;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import com.facebook.common.internal.VisibleForTesting;
import java.util.Arrays;

/* compiled from: FadeDrawable.java */
/* loaded from: classes.dex */
public class g extends a {

    /* renamed from: k, reason: collision with root package name */
    private final Drawable[] f17324k;

    /* renamed from: l, reason: collision with root package name */
    private final boolean f17325l;
    private final int m;

    @VisibleForTesting
    int n;

    @VisibleForTesting
    int o;

    @VisibleForTesting
    long p;

    @VisibleForTesting
    int[] q;

    @VisibleForTesting
    int[] r;

    @VisibleForTesting
    int s;

    @VisibleForTesting
    boolean[] t;

    @VisibleForTesting
    int u;

    public g(Drawable[] drawableArr) {
        this(drawableArr, false);
    }

    private boolean a(float f2) {
        boolean z = true;
        for (int i2 = 0; i2 < this.f17324k.length; i2++) {
            int i3 = this.t[i2] ? 1 : -1;
            int[] iArr = this.r;
            iArr[i2] = (int) (this.q[i2] + (i3 * 255 * f2));
            if (iArr[i2] < 0) {
                iArr[i2] = 0;
            }
            int[] iArr2 = this.r;
            if (iArr2[i2] > 255) {
                iArr2[i2] = 255;
            }
            if (this.t[i2] && this.r[i2] < 255) {
                z = false;
            }
            if (!this.t[i2] && this.r[i2] > 0) {
                z = false;
            }
        }
        return z;
    }

    private void g() {
        this.n = 2;
        Arrays.fill(this.q, this.m);
        this.q[0] = 255;
        Arrays.fill(this.r, this.m);
        this.r[0] = 255;
        Arrays.fill(this.t, this.f17325l);
        this.t[0] = true;
    }

    public void b() {
        this.u++;
    }

    public void c() {
        this.u--;
        invalidateSelf();
    }

    public void d(int i2) {
        this.o = i2;
        if (this.n == 1) {
            this.n = 0;
        }
    }

    @Override // e.f.f.f.a, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean a2;
        int i2 = this.n;
        int i3 = 0;
        if (i2 == 0) {
            System.arraycopy(this.r, 0, this.q, 0, this.f17324k.length);
            this.p = f();
            a2 = a(this.o == 0 ? 1.0f : 0.0f);
            this.n = a2 ? 2 : 1;
        } else if (i2 != 1) {
            a2 = true;
        } else {
            com.facebook.common.internal.h.b(this.o > 0);
            a2 = a(((float) (f() - this.p)) / this.o);
            this.n = a2 ? 2 : 1;
        }
        while (true) {
            Drawable[] drawableArr = this.f17324k;
            if (i3 >= drawableArr.length) {
                break;
            }
            a(canvas, drawableArr[i3], (this.r[i3] * this.s) / 255);
            i3++;
        }
        if (a2) {
            return;
        }
        invalidateSelf();
    }

    public void e() {
        this.n = 2;
        for (int i2 = 0; i2 < this.f17324k.length; i2++) {
            this.r[i2] = this.t[i2] ? 255 : 0;
        }
        invalidateSelf();
    }

    protected long f() {
        return SystemClock.uptimeMillis();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.s;
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.u == 0) {
            super.invalidateSelf();
        }
    }

    @Override // e.f.f.f.a, android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (this.s != i2) {
            this.s = i2;
            invalidateSelf();
        }
    }

    public g(Drawable[] drawableArr, boolean z) {
        super(drawableArr);
        com.facebook.common.internal.h.b(drawableArr.length >= 1, "At least one layer required!");
        this.f17324k = drawableArr;
        this.q = new int[drawableArr.length];
        this.r = new int[drawableArr.length];
        this.s = 255;
        this.t = new boolean[drawableArr.length];
        this.u = 0;
        this.f17325l = z;
        this.m = this.f17325l ? 255 : 0;
        g();
    }

    public void b(int i2) {
        this.n = 0;
        this.t[i2] = true;
        invalidateSelf();
    }

    public void c(int i2) {
        this.n = 0;
        this.t[i2] = false;
        invalidateSelf();
    }

    public void d() {
        this.n = 0;
        Arrays.fill(this.t, true);
        invalidateSelf();
    }

    private void a(Canvas canvas, Drawable drawable, int i2) {
        if (drawable == null || i2 <= 0) {
            return;
        }
        this.u++;
        drawable.mutate().setAlpha(i2);
        this.u--;
        drawable.draw(canvas);
    }
}

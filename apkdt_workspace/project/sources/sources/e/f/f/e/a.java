package e.f.f.e;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.facebook.common.internal.VisibleForTesting;
import e.f.f.e.b.b;
import e.f.f.f.q;
import io.reactivex.rxjava3.annotations.SchedulerSupport;
import javax.annotation.Nullable;

/* compiled from: DebugControllerOverlayDrawable.java */
/* loaded from: classes.dex */
public class a extends Drawable implements b {

    /* renamed from: e, reason: collision with root package name */
    private String f17298e;

    /* renamed from: f, reason: collision with root package name */
    private String f17299f;

    /* renamed from: g, reason: collision with root package name */
    private int f17300g;

    /* renamed from: h, reason: collision with root package name */
    private int f17301h;

    /* renamed from: i, reason: collision with root package name */
    private int f17302i;

    /* renamed from: j, reason: collision with root package name */
    private String f17303j;

    /* renamed from: k, reason: collision with root package name */
    private q.b f17304k;

    /* renamed from: l, reason: collision with root package name */
    private int f17305l;
    private int m;
    private int n = 80;
    private final Paint o = new Paint(1);
    private final Matrix p = new Matrix();
    private final Rect q = new Rect();
    private final RectF r = new RectF();
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private long x;
    private String y;

    public a() {
        a();
    }

    public void a() {
        this.f17300g = -1;
        this.f17301h = -1;
        this.f17302i = -1;
        this.f17305l = -1;
        this.m = -1;
        this.f17303j = null;
        a((String) null);
        this.x = -1L;
        this.y = null;
        invalidateSelf();
    }

    public void b(String str) {
        this.y = str;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        this.o.setStyle(Paint.Style.STROKE);
        this.o.setStrokeWidth(2.0f);
        this.o.setColor(-26624);
        canvas.drawRect(bounds.left, bounds.top, bounds.right, bounds.bottom, this.o);
        this.o.setStyle(Paint.Style.FILL);
        this.o.setColor(a(this.f17300g, this.f17301h, this.f17304k));
        canvas.drawRect(bounds.left, bounds.top, bounds.right, bounds.bottom, this.o);
        this.o.setStyle(Paint.Style.FILL);
        this.o.setStrokeWidth(0.0f);
        this.o.setColor(-1);
        this.v = this.s;
        this.w = this.t;
        String str = this.f17299f;
        if (str != null) {
            a(canvas, "IDs: %s, %s", this.f17298e, str);
        } else {
            a(canvas, "ID: %s", this.f17298e);
        }
        a(canvas, "D: %dx%d", Integer.valueOf(bounds.width()), Integer.valueOf(bounds.height()));
        a(canvas, "I: %dx%d", Integer.valueOf(this.f17300g), Integer.valueOf(this.f17301h));
        a(canvas, "I: %d KiB", Integer.valueOf(this.f17302i / 1024));
        String str2 = this.f17303j;
        if (str2 != null) {
            a(canvas, "i format: %s", str2);
        }
        int i2 = this.f17305l;
        if (i2 > 0) {
            a(canvas, "anim: f %d, l %d", Integer.valueOf(i2), Integer.valueOf(this.m));
        }
        q.b bVar = this.f17304k;
        if (bVar != null) {
            a(canvas, "scale: %s", bVar);
        }
        long j2 = this.x;
        if (j2 >= 0) {
            a(canvas, "t: %d ms", Long.valueOf(j2));
        }
        String str3 = this.y;
        if (str3 != null) {
            a(canvas, "origin: %s", str3);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        a(rect, 9, 8);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public void a(@Nullable String str) {
        if (str == null) {
            str = SchedulerSupport.NONE;
        }
        this.f17298e = str;
        invalidateSelf();
    }

    public void a(int i2, int i3) {
        this.f17300g = i2;
        this.f17301h = i3;
        invalidateSelf();
    }

    public void a(int i2) {
        this.f17302i = i2;
    }

    public void a(q.b bVar) {
        this.f17304k = bVar;
    }

    private void a(Rect rect, int i2, int i3) {
        int min = Math.min(40, Math.max(10, Math.min(rect.width() / i3, rect.height() / i2)));
        this.o.setTextSize(min);
        this.u = min + 8;
        if (this.n == 80) {
            this.u *= -1;
        }
        this.s = rect.left + 10;
        this.t = this.n == 80 ? rect.bottom - 10 : rect.top + 10 + 10;
    }

    private void a(Canvas canvas, String str, @Nullable Object... objArr) {
        if (objArr == null) {
            canvas.drawText(str, this.v, this.w, this.o);
        } else {
            canvas.drawText(String.format(str, objArr), this.v, this.w, this.o);
        }
        this.w += this.u;
    }

    @VisibleForTesting
    int a(int i2, int i3, @Nullable q.b bVar) {
        int width = getBounds().width();
        int height = getBounds().height();
        if (width > 0 && height > 0 && i2 > 0 && i3 > 0) {
            if (bVar != null) {
                Rect rect = this.q;
                rect.top = 0;
                rect.left = 0;
                rect.right = width;
                rect.bottom = height;
                this.p.reset();
                bVar.a(this.p, this.q, i2, i3, 0.0f, 0.0f);
                RectF rectF = this.r;
                rectF.top = 0.0f;
                rectF.left = 0.0f;
                rectF.right = i2;
                rectF.bottom = i3;
                this.p.mapRect(rectF);
                int width2 = (int) this.r.width();
                int height2 = (int) this.r.height();
                width = Math.min(width, width2);
                height = Math.min(height, height2);
            }
            float f2 = width;
            float f3 = f2 * 0.1f;
            float f4 = f2 * 0.5f;
            float f5 = height;
            float f6 = 0.1f * f5;
            float f7 = f5 * 0.5f;
            int abs = Math.abs(i2 - width);
            int abs2 = Math.abs(i3 - height);
            float f8 = abs;
            if (f8 < f3 && abs2 < f6) {
                return 1716301648;
            }
            if (f8 < f4 && abs2 < f7) {
                return 1728026624;
            }
        }
        return 1727284022;
    }

    @Override // e.f.f.e.b.b
    public void a(long j2) {
        this.x = j2;
        invalidateSelf();
    }
}

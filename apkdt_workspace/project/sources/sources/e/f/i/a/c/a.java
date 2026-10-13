package e.f.i.a.c;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import e.f.i.a.a.e;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: AnimatedDrawableBackendImpl.java */
/* loaded from: classes.dex */
public class a implements e.f.i.a.a.a {

    /* renamed from: a, reason: collision with root package name */
    private final e.f.i.a.d.a f17489a;

    /* renamed from: b, reason: collision with root package name */
    private final e f17490b;

    /* renamed from: c, reason: collision with root package name */
    private final e.f.i.a.a.c f17491c;

    /* renamed from: d, reason: collision with root package name */
    private final Rect f17492d;

    /* renamed from: e, reason: collision with root package name */
    private final int[] f17493e;

    /* renamed from: f, reason: collision with root package name */
    private final e.f.i.a.a.b[] f17494f;

    /* renamed from: g, reason: collision with root package name */
    private final Rect f17495g = new Rect();

    /* renamed from: h, reason: collision with root package name */
    private final Rect f17496h = new Rect();

    /* renamed from: i, reason: collision with root package name */
    private final boolean f17497i;

    /* renamed from: j, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    private Bitmap f17498j;

    public a(e.f.i.a.d.a aVar, e eVar, Rect rect, boolean z) {
        this.f17489a = aVar;
        this.f17490b = eVar;
        this.f17491c = eVar.b();
        this.f17493e = this.f17491c.d();
        this.f17489a.a(this.f17493e);
        this.f17489a.c(this.f17493e);
        this.f17489a.b(this.f17493e);
        this.f17492d = a(this.f17491c, rect);
        this.f17497i = z;
        this.f17494f = new e.f.i.a.a.b[this.f17491c.a()];
        for (int i2 = 0; i2 < this.f17491c.a(); i2++) {
            this.f17494f[i2] = this.f17491c.a(i2);
        }
    }

    private static Rect a(e.f.i.a.a.c cVar, Rect rect) {
        if (rect == null) {
            return new Rect(0, 0, cVar.getWidth(), cVar.getHeight());
        }
        return new Rect(0, 0, Math.min(rect.width(), cVar.getWidth()), Math.min(rect.height(), cVar.getHeight()));
    }

    private synchronized void e() {
        if (this.f17498j != null) {
            this.f17498j.recycle();
            this.f17498j = null;
        }
    }

    @Override // e.f.i.a.a.a
    public int b() {
        return this.f17491c.b();
    }

    @Override // e.f.i.a.a.a
    public int c() {
        return this.f17492d.height();
    }

    @Override // e.f.i.a.a.a
    public int d() {
        return this.f17492d.width();
    }

    @Override // e.f.i.a.a.a
    public int getHeight() {
        return this.f17491c.getHeight();
    }

    @Override // e.f.i.a.a.a
    public int getWidth() {
        return this.f17491c.getWidth();
    }

    @Override // e.f.i.a.a.a
    public int b(int i2) {
        return this.f17493e[i2];
    }

    private void b(Canvas canvas, e.f.i.a.a.d dVar) {
        double width = this.f17492d.width();
        double width2 = this.f17491c.getWidth();
        Double.isNaN(width);
        Double.isNaN(width2);
        double d2 = width / width2;
        double height = this.f17492d.height();
        double height2 = this.f17491c.getHeight();
        Double.isNaN(height);
        Double.isNaN(height2);
        double d3 = height / height2;
        double width3 = dVar.getWidth();
        Double.isNaN(width3);
        int round = (int) Math.round(width3 * d2);
        double height3 = dVar.getHeight();
        Double.isNaN(height3);
        int round2 = (int) Math.round(height3 * d3);
        double a2 = dVar.a();
        Double.isNaN(a2);
        int i2 = (int) (a2 * d2);
        double b2 = dVar.b();
        Double.isNaN(b2);
        int i3 = (int) (b2 * d3);
        synchronized (this) {
            int width4 = this.f17492d.width();
            int height4 = this.f17492d.height();
            a(width4, height4);
            dVar.a(round, round2, this.f17498j);
            this.f17495g.set(0, 0, width4, height4);
            this.f17496h.set(i2, i3, width4 + i2, height4 + i3);
            canvas.drawBitmap(this.f17498j, this.f17495g, this.f17496h, (Paint) null);
        }
    }

    @Override // e.f.i.a.a.a
    public int a() {
        return this.f17491c.a();
    }

    @Override // e.f.i.a.a.a
    public e.f.i.a.a.b a(int i2) {
        return this.f17494f[i2];
    }

    @Override // e.f.i.a.a.a
    public e.f.i.a.a.a a(Rect rect) {
        return a(this.f17491c, rect).equals(this.f17492d) ? this : new a(this.f17489a, this.f17490b, rect, this.f17497i);
    }

    @Override // e.f.i.a.a.a
    public void a(int i2, Canvas canvas) {
        e.f.i.a.a.d b2 = this.f17491c.b(i2);
        try {
            if (this.f17491c.c()) {
                b(canvas, b2);
            } else {
                a(canvas, b2);
            }
        } finally {
            b2.dispose();
        }
    }

    private synchronized void a(int i2, int i3) {
        if (this.f17498j != null && (this.f17498j.getWidth() < i2 || this.f17498j.getHeight() < i3)) {
            e();
        }
        if (this.f17498j == null) {
            this.f17498j = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        }
        this.f17498j.eraseColor(0);
    }

    private void a(Canvas canvas, e.f.i.a.a.d dVar) {
        int width;
        int height;
        int a2;
        int b2;
        if (this.f17497i) {
            float max = Math.max(dVar.getWidth() / Math.min(dVar.getWidth(), canvas.getWidth()), dVar.getHeight() / Math.min(dVar.getHeight(), canvas.getHeight()));
            width = (int) (dVar.getWidth() / max);
            height = (int) (dVar.getHeight() / max);
            a2 = (int) (dVar.a() / max);
            b2 = (int) (dVar.b() / max);
        } else {
            width = dVar.getWidth();
            height = dVar.getHeight();
            a2 = dVar.a();
            b2 = dVar.b();
        }
        synchronized (this) {
            a(width, height);
            dVar.a(width, height, this.f17498j);
            canvas.save();
            canvas.translate(a2, b2);
            canvas.drawBitmap(this.f17498j, 0.0f, 0.0f, (Paint) null);
            canvas.restore();
        }
    }
}

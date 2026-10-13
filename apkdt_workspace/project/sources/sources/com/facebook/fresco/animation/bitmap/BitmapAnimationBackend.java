package com.facebook.fresco.animation.bitmap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.IntRange;
import e.f.g.a.a.c;
import e.f.g.a.a.d;
import e.f.i.b.f;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.Nullable;

/* loaded from: classes.dex */
public class BitmapAnimationBackend implements e.f.g.a.a.a, c.b {
    private static final Class<?> m = BitmapAnimationBackend.class;

    /* renamed from: a, reason: collision with root package name */
    private final f f3589a;

    /* renamed from: b, reason: collision with root package name */
    private final com.facebook.fresco.animation.bitmap.a f3590b;

    /* renamed from: c, reason: collision with root package name */
    private final d f3591c;

    /* renamed from: d, reason: collision with root package name */
    private final b f3592d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private final com.facebook.fresco.animation.bitmap.d.a f3593e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private final com.facebook.fresco.animation.bitmap.d.b f3594f;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private Rect f3596h;

    /* renamed from: i, reason: collision with root package name */
    private int f3597i;

    /* renamed from: j, reason: collision with root package name */
    private int f3598j;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    private a f3600l;

    /* renamed from: k, reason: collision with root package name */
    private Bitmap.Config f3599k = Bitmap.Config.ARGB_8888;

    /* renamed from: g, reason: collision with root package name */
    private final Paint f3595g = new Paint(6);

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface FrameType {
    }

    /* loaded from: classes.dex */
    public interface a {
        void a(BitmapAnimationBackend bitmapAnimationBackend, int i2);

        void a(BitmapAnimationBackend bitmapAnimationBackend, int i2, int i3);

        void b(BitmapAnimationBackend bitmapAnimationBackend, int i2);
    }

    public BitmapAnimationBackend(f fVar, com.facebook.fresco.animation.bitmap.a aVar, d dVar, b bVar, @Nullable com.facebook.fresco.animation.bitmap.d.a aVar2, @Nullable com.facebook.fresco.animation.bitmap.d.b bVar2) {
        this.f3589a = fVar;
        this.f3590b = aVar;
        this.f3591c = dVar;
        this.f3592d = bVar;
        this.f3593e = aVar2;
        this.f3594f = bVar2;
        f();
    }

    private void f() {
        this.f3597i = this.f3592d.d();
        if (this.f3597i == -1) {
            Rect rect = this.f3596h;
            this.f3597i = rect == null ? -1 : rect.width();
        }
        this.f3598j = this.f3592d.c();
        if (this.f3598j == -1) {
            Rect rect2 = this.f3596h;
            this.f3598j = rect2 != null ? rect2.height() : -1;
        }
    }

    @Override // e.f.g.a.a.d
    public int a() {
        return this.f3591c.a();
    }

    @Override // e.f.g.a.a.d
    public int b() {
        return this.f3591c.b();
    }

    @Override // e.f.g.a.a.a
    public int c() {
        return this.f3598j;
    }

    @Override // e.f.g.a.a.a
    public void clear() {
        this.f3590b.clear();
    }

    @Override // e.f.g.a.a.a
    public int d() {
        return this.f3597i;
    }

    @Override // e.f.g.a.a.c.b
    public void e() {
        clear();
    }

    @Override // e.f.g.a.a.d
    public int a(int i2) {
        return this.f3591c.a(i2);
    }

    @Override // e.f.g.a.a.a
    public void b(@IntRange(from = 0, to = 255) int i2) {
        this.f3595g.setAlpha(i2);
    }

    @Override // e.f.g.a.a.a
    public boolean a(Drawable drawable, Canvas canvas, int i2) {
        com.facebook.fresco.animation.bitmap.d.b bVar;
        a aVar;
        a aVar2 = this.f3600l;
        if (aVar2 != null) {
            aVar2.b(this, i2);
        }
        boolean a2 = a(canvas, i2, 0);
        if (!a2 && (aVar = this.f3600l) != null) {
            aVar.a(this, i2);
        }
        com.facebook.fresco.animation.bitmap.d.a aVar3 = this.f3593e;
        if (aVar3 != null && (bVar = this.f3594f) != null) {
            aVar3.a(bVar, this.f3590b, this, i2);
        }
        return a2;
    }

    private boolean a(Canvas canvas, int i2, int i3) {
        e.f.c.g.a<Bitmap> b2;
        boolean a2;
        int i4 = 3;
        try {
            if (i3 == 0) {
                b2 = this.f3590b.b(i2);
                a2 = a(i2, b2, canvas, 0);
                i4 = 1;
            } else if (i3 == 1) {
                b2 = this.f3590b.a(i2, this.f3597i, this.f3598j);
                a2 = a(i2, b2) && a(i2, b2, canvas, 1);
                i4 = 2;
            } else if (i3 == 2) {
                b2 = this.f3589a.a(this.f3597i, this.f3598j, this.f3599k);
                a2 = a(i2, b2) && a(i2, b2, canvas, 2);
            } else {
                if (i3 != 3) {
                    return false;
                }
                b2 = this.f3590b.c(i2);
                a2 = a(i2, b2, canvas, 3);
                i4 = -1;
            }
            e.f.c.g.a.b(b2);
            return (a2 || i4 == -1) ? a2 : a(canvas, i2, i4);
        } catch (RuntimeException e2) {
            e.f.c.d.a.b(m, "Failed to create frame bitmap", (Throwable) e2);
            return false;
        } finally {
            e.f.c.g.a.b(null);
        }
    }

    @Override // e.f.g.a.a.a
    public void a(@Nullable ColorFilter colorFilter) {
        this.f3595g.setColorFilter(colorFilter);
    }

    @Override // e.f.g.a.a.a
    public void a(@Nullable Rect rect) {
        this.f3596h = rect;
        this.f3592d.a(rect);
        f();
    }

    private boolean a(int i2, @Nullable e.f.c.g.a<Bitmap> aVar) {
        if (!e.f.c.g.a.c(aVar)) {
            return false;
        }
        boolean a2 = this.f3592d.a(i2, aVar.A());
        if (!a2) {
            e.f.c.g.a.b(aVar);
        }
        return a2;
    }

    private boolean a(int i2, @Nullable e.f.c.g.a<Bitmap> aVar, Canvas canvas, int i3) {
        if (!e.f.c.g.a.c(aVar)) {
            return false;
        }
        if (this.f3596h == null) {
            canvas.drawBitmap(aVar.A(), 0.0f, 0.0f, this.f3595g);
        } else {
            canvas.drawBitmap(aVar.A(), (Rect) null, this.f3596h, this.f3595g);
        }
        if (i3 != 3) {
            this.f3590b.b(i2, aVar, i3);
        }
        a aVar2 = this.f3600l;
        if (aVar2 == null) {
            return true;
        }
        aVar2.a(this, i2, i3);
        return true;
    }
}

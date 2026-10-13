package e.f.f.f;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import com.facebook.common.internal.VisibleForTesting;
import e.f.f.f.q;

/* compiled from: ScaleTypeDrawable.java */
/* loaded from: classes.dex */
public class p extends h {

    /* renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    q.b f17357h;

    /* renamed from: i, reason: collision with root package name */
    @VisibleForTesting
    Object f17358i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    PointF f17359j;

    /* renamed from: k, reason: collision with root package name */
    @VisibleForTesting
    int f17360k;

    /* renamed from: l, reason: collision with root package name */
    @VisibleForTesting
    int f17361l;

    @VisibleForTesting
    Matrix m;
    private Matrix n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(Drawable drawable, q.b bVar) {
        super(drawable);
        com.facebook.common.internal.h.a(drawable);
        this.f17359j = null;
        this.f17360k = 0;
        this.f17361l = 0;
        this.n = new Matrix();
        this.f17357h = bVar;
    }

    private void d() {
        boolean z;
        q.b bVar = this.f17357h;
        boolean z2 = true;
        if (bVar instanceof q.l) {
            Object b2 = ((q.l) bVar).b();
            z = b2 == null || !b2.equals(this.f17358i);
            this.f17358i = b2;
        } else {
            z = false;
        }
        if (this.f17360k == getCurrent().getIntrinsicWidth() && this.f17361l == getCurrent().getIntrinsicHeight()) {
            z2 = false;
        }
        if (z2 || z) {
            b();
        }
    }

    public void a(PointF pointF) {
        if (com.facebook.common.internal.g.a(this.f17359j, pointF)) {
            return;
        }
        if (this.f17359j == null) {
            this.f17359j = new PointF();
        }
        this.f17359j.set(pointF);
        b();
        invalidateSelf();
    }

    @Override // e.f.f.f.h
    public Drawable b(Drawable drawable) {
        Drawable b2 = super.b(drawable);
        b();
        return b2;
    }

    public q.b c() {
        return this.f17357h;
    }

    @Override // e.f.f.f.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        d();
        if (this.m != null) {
            int save = canvas.save();
            canvas.clipRect(getBounds());
            canvas.concat(this.m);
            super.draw(canvas);
            canvas.restoreToCount(save);
            return;
        }
        super.draw(canvas);
    }

    @Override // e.f.f.f.h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        b();
    }

    @VisibleForTesting
    void b() {
        Drawable current = getCurrent();
        Rect bounds = getBounds();
        int width = bounds.width();
        int height = bounds.height();
        int intrinsicWidth = current.getIntrinsicWidth();
        this.f17360k = intrinsicWidth;
        int intrinsicHeight = current.getIntrinsicHeight();
        this.f17361l = intrinsicHeight;
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            current.setBounds(bounds);
            this.m = null;
            return;
        }
        if (intrinsicWidth == width && intrinsicHeight == height) {
            current.setBounds(bounds);
            this.m = null;
            return;
        }
        if (this.f17357h == q.b.f17362a) {
            current.setBounds(bounds);
            this.m = null;
            return;
        }
        current.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        q.b bVar = this.f17357h;
        Matrix matrix = this.n;
        PointF pointF = this.f17359j;
        float f2 = pointF != null ? pointF.x : 0.5f;
        PointF pointF2 = this.f17359j;
        bVar.a(matrix, bounds, intrinsicWidth, intrinsicHeight, f2, pointF2 != null ? pointF2.y : 0.5f);
        this.m = this.n;
    }

    @Override // e.f.f.f.h, e.f.f.f.s
    public void a(Matrix matrix) {
        b(matrix);
        d();
        Matrix matrix2 = this.m;
        if (matrix2 != null) {
            matrix.preConcat(matrix2);
        }
    }
}

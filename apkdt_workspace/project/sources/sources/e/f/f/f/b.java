package e.f.f.f;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import com.facebook.common.internal.VisibleForTesting;

/* compiled from: AutoRotateDrawable.java */
/* loaded from: classes.dex */
public class b extends h implements Runnable, c {

    /* renamed from: h, reason: collision with root package name */
    private int f17315h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f17316i;

    /* renamed from: j, reason: collision with root package name */
    @VisibleForTesting
    float f17317j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f17318k;

    public b(Drawable drawable, int i2) {
        this(drawable, i2, true);
    }

    private int b() {
        return (int) ((20.0f / this.f17315h) * 360.0f);
    }

    private void c() {
        if (this.f17318k) {
            return;
        }
        this.f17318k = true;
        scheduleSelf(this, SystemClock.uptimeMillis() + 20);
    }

    @Override // e.f.f.f.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int save = canvas.save();
        Rect bounds = getBounds();
        int i2 = bounds.right - bounds.left;
        int i3 = bounds.bottom - bounds.top;
        float f2 = this.f17317j;
        if (!this.f17316i) {
            f2 = 360.0f - f2;
        }
        canvas.rotate(f2, bounds.left + (i2 / 2), bounds.top + (i3 / 2));
        super.draw(canvas);
        canvas.restoreToCount(save);
        c();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f17318k = false;
        this.f17317j += b();
        invalidateSelf();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Drawable drawable, int i2, boolean z) {
        super(drawable);
        com.facebook.common.internal.h.a(drawable);
        this.f17317j = 0.0f;
        this.f17318k = false;
        this.f17315h = i2;
        this.f17316i = z;
    }
}

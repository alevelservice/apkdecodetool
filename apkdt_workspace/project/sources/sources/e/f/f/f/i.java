package e.f.f.f;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.facebook.common.internal.VisibleForTesting;

/* compiled from: OrientedDrawable.java */
/* loaded from: classes.dex */
public class i extends h {

    /* renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    final Matrix f17329h;

    /* renamed from: i, reason: collision with root package name */
    private int f17330i;

    /* renamed from: j, reason: collision with root package name */
    private int f17331j;

    /* renamed from: k, reason: collision with root package name */
    private final Matrix f17332k;

    /* renamed from: l, reason: collision with root package name */
    private final RectF f17333l;

    public i(Drawable drawable, int i2, int i3) {
        super(drawable);
        this.f17332k = new Matrix();
        this.f17333l = new RectF();
        com.facebook.common.internal.h.a(i2 % 90 == 0);
        com.facebook.common.internal.h.a(i3 >= 0 && i3 <= 8);
        this.f17329h = new Matrix();
        this.f17330i = i2;
        this.f17331j = i3;
    }

    @Override // e.f.f.f.h, e.f.f.f.s
    public void a(Matrix matrix) {
        b(matrix);
        if (this.f17329h.isIdentity()) {
            return;
        }
        matrix.preConcat(this.f17329h);
    }

    @Override // e.f.f.f.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i2;
        if (this.f17330i <= 0 && ((i2 = this.f17331j) == 0 || i2 == 1)) {
            super.draw(canvas);
            return;
        }
        int save = canvas.save();
        canvas.concat(this.f17329h);
        super.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // e.f.f.f.h, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        int i2 = this.f17331j;
        if (i2 != 5 && i2 != 7 && this.f17330i % 180 == 0) {
            return super.getIntrinsicHeight();
        }
        return super.getIntrinsicWidth();
    }

    @Override // e.f.f.f.h, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        int i2 = this.f17331j;
        if (i2 != 5 && i2 != 7 && this.f17330i % 180 == 0) {
            return super.getIntrinsicWidth();
        }
        return super.getIntrinsicHeight();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.f.f.f.h, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        int i2;
        Drawable current = getCurrent();
        if (this.f17330i <= 0 && ((i2 = this.f17331j) == 0 || i2 == 1)) {
            current.setBounds(rect);
            return;
        }
        int i3 = this.f17331j;
        if (i3 == 2) {
            this.f17329h.setScale(-1.0f, 1.0f);
        } else if (i3 == 7) {
            this.f17329h.setRotate(270.0f, rect.centerX(), rect.centerY());
            this.f17329h.postScale(-1.0f, 1.0f);
        } else if (i3 == 4) {
            this.f17329h.setScale(1.0f, -1.0f);
        } else if (i3 != 5) {
            this.f17329h.setRotate(this.f17330i, rect.centerX(), rect.centerY());
        } else {
            this.f17329h.setRotate(270.0f, rect.centerX(), rect.centerY());
            this.f17329h.postScale(1.0f, -1.0f);
        }
        this.f17332k.reset();
        this.f17329h.invert(this.f17332k);
        this.f17333l.set(rect);
        this.f17332k.mapRect(this.f17333l);
        RectF rectF = this.f17333l;
        current.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }
}

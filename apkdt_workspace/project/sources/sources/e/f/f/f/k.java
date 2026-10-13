package e.f.f.f;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import com.facebook.common.internal.VisibleForTesting;
import java.lang.ref.WeakReference;
import javax.annotation.Nullable;

/* compiled from: RoundedBitmapDrawable.java */
/* loaded from: classes.dex */
public class k extends n {
    private final Paint G;
    private final Paint H;

    @Nullable
    private final Bitmap I;
    private WeakReference<Bitmap> J;

    public k(Resources resources, @Nullable Bitmap bitmap, @Nullable Paint paint) {
        super(new BitmapDrawable(resources, bitmap));
        this.G = new Paint();
        this.H = new Paint(1);
        this.I = bitmap;
        if (paint != null) {
            this.G.set(paint);
        }
        this.G.setFlags(1);
        this.H.setStyle(Paint.Style.STROKE);
    }

    private void d() {
        WeakReference<Bitmap> weakReference = this.J;
        if (weakReference == null || weakReference.get() != this.I) {
            this.J = new WeakReference<>(this.I);
            Paint paint = this.G;
            Bitmap bitmap = this.I;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
            this.f17354j = true;
        }
        if (this.f17354j) {
            this.G.getShader().setLocalMatrix(this.B);
            this.f17354j = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // e.f.f.f.n
    @VisibleForTesting
    public boolean a() {
        return super.a() && this.I != null;
    }

    @Override // e.f.f.f.n, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("RoundedBitmapDrawable#draw");
        }
        if (!a()) {
            super.draw(canvas);
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
                return;
            }
            return;
        }
        c();
        b();
        d();
        int save = canvas.save();
        canvas.concat(this.y);
        canvas.drawPath(this.f17353i, this.G);
        float f2 = this.f17352h;
        if (f2 > 0.0f) {
            this.H.setStrokeWidth(f2);
            this.H.setColor(f.a(this.f17355k, this.G.getAlpha()));
            canvas.drawPath(this.f17356l, this.H);
        }
        canvas.restoreToCount(save);
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
    }

    @Override // e.f.f.f.n, android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        super.setAlpha(i2);
        if (i2 != this.G.getAlpha()) {
            this.G.setAlpha(i2);
            super.setAlpha(i2);
            invalidateSelf();
        }
    }

    @Override // e.f.f.f.n, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
        this.G.setColorFilter(colorFilter);
    }
}

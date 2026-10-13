package com.alipay.biometrics.ui.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class CircleForegroud extends ImageView {
    private static final Xfermode SXFERMODE = new PorterDuffXfermode(PorterDuff.Mode.XOR);
    protected Context mContext;
    private Bitmap mMaskBitmap;
    private Paint mPaint;
    private WeakReference<Bitmap> mWeakBitmap;

    public CircleForegroud(Context context) {
        super(context);
        sharedConstructor();
    }

    private void sharedConstructor() {
        this.mPaint = new Paint(1);
    }

    public Bitmap createMask1() {
        Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(1);
        paint.setAntiAlias(true);
        paint.setColor(-1);
        float width = getWidth();
        float height = (getHeight() - width) / 2.0f;
        canvas.drawOval(new RectF(0.0f, height, width, height + width), paint);
        return createBitmap;
    }

    @Override // android.view.View
    public void invalidate() {
        this.mWeakBitmap = null;
        Bitmap bitmap = this.mMaskBitmap;
        if (bitmap != null) {
            bitmap.recycle();
        }
        super.invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable drawable;
        if (!isInEditMode()) {
            int saveLayer = canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
            try {
                Bitmap bitmap = this.mWeakBitmap != null ? this.mWeakBitmap.get() : null;
                if ((bitmap == null || bitmap.isRecycled()) && (drawable = getDrawable()) != null) {
                    try {
                        bitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
                        Canvas canvas2 = new Canvas(bitmap);
                        drawable.setBounds(0, 0, getWidth(), getHeight());
                        drawable.draw(canvas2);
                        if (this.mMaskBitmap == null || this.mMaskBitmap.isRecycled()) {
                            this.mMaskBitmap = createMask1();
                        }
                        this.mPaint.reset();
                        this.mPaint.setFilterBitmap(false);
                        this.mPaint.setXfermode(SXFERMODE);
                        canvas2.drawBitmap(this.mMaskBitmap, 0.0f, 0.0f, this.mPaint);
                        this.mWeakBitmap = new WeakReference<>(bitmap);
                    } catch (OutOfMemoryError unused) {
                        System.gc();
                        return;
                    }
                }
                if (bitmap != null) {
                    this.mPaint.setXfermode(null);
                    canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.mPaint);
                    return;
                }
            } catch (Exception unused2) {
            } finally {
                canvas.restoreToCount(saveLayer);
            }
            return;
        }
        super.onDraw(canvas);
    }

    public CircleForegroud(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        sharedConstructor();
    }

    public CircleForegroud(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        sharedConstructor();
    }
}

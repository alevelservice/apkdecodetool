package com.alipay.biometrics.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import com.alipay.mobile.security.bio.utils.BitmapHelper;
import e.b.a.a.a.a.a.a;
import e.b.a.a.a.a.a.e;

/* loaded from: classes.dex */
public class RoundProgressBar extends View {
    public static final int FILL = 1;
    public static final int STROKE = 0;
    private float backColorWidth;
    private int backgroundColor;
    private int endAngle;
    public BitmapShader mBitmapShader;
    private Matrix mMatrix;
    private int mWidth;
    private int max;
    private Paint paint;
    private int progress;
    private int radius;
    private int roundColor;
    private int roundProgressColor;
    private boolean roundShader;
    private float roundWidth;
    private int startAngle;
    private int style;
    private int textColor;
    private boolean textIsDisplayable;
    private float textSize;

    public RoundProgressBar(Context context) {
        this(context, null);
    }

    private void paintStroke(Canvas canvas, RectF rectF) {
        this.paint.setStyle(Paint.Style.STROKE);
        BitmapShader bitmapShader = this.mBitmapShader;
        if (bitmapShader != null) {
            this.paint.setShader(bitmapShader);
        }
        int i2 = this.startAngle;
        canvas.drawArc(rectF, i2 + 90, ((this.endAngle - i2) * this.progress) / this.max, false, this.paint);
        this.paint.setShader(null);
    }

    public int getCricleColor() {
        return this.roundColor;
    }

    public int getCricleProgressColor() {
        return this.roundProgressColor;
    }

    public synchronized int getMax() {
        return this.max;
    }

    public synchronized int getProgress() {
        return this.progress;
    }

    public int getRadius() {
        return this.radius;
    }

    public float getRoundWidth() {
        return this.roundWidth;
    }

    public int getTextColor() {
        return this.textColor;
    }

    public float getTextSize() {
        return this.textSize;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float width = getWidth() / 2;
        this.radius = (int) (width - (this.roundWidth / 2.0f));
        this.paint.setColor(this.roundColor);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(this.roundWidth);
        this.paint.setAntiAlias(true);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setColor(this.backgroundColor);
        canvas.drawCircle(width, width, this.radius, this.paint);
        this.paint.setStrokeWidth(0.0f);
        this.paint.setColor(this.textColor);
        this.paint.setTextSize(this.textSize);
        this.paint.setTypeface(Typeface.DEFAULT_BOLD);
        int i2 = (int) ((this.progress / this.max) * 100.0f);
        float measureText = this.paint.measureText(i2 + "%");
        this.paint.setShader(null);
        if (this.textIsDisplayable && i2 != 0 && this.style == 0) {
            canvas.drawText(i2 + "%", width - (measureText / 2.0f), width + (this.textSize / 2.0f), this.paint);
        }
        this.paint.setStrokeWidth(this.roundWidth);
        int i3 = this.radius;
        RectF rectF = new RectF(r0 - i3, r0 - i3, r0 + i3, r0 + i3);
        this.paint.setColor(this.roundColor);
        int i4 = this.startAngle;
        canvas.drawArc(rectF, i4 + 90, this.endAngle - i4, false, this.paint);
        this.paint.setColor(this.roundProgressColor);
        int i5 = this.style;
        if (i5 == 0) {
            paintStroke(canvas, rectF);
            return;
        }
        if (i5 != 1) {
            return;
        }
        this.paint.setStyle(Paint.Style.FILL_AND_STROKE);
        if (this.progress != 0) {
            int i6 = this.startAngle;
            canvas.drawArc(rectF, i6 + 90, ((this.endAngle - i6) * r0) / this.max, true, this.paint);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        this.backgroundColor = i2;
        postInvalidate();
    }

    public void setCricleColor(int i2) {
        this.roundColor = i2;
    }

    public void setCricleProgressColor(int i2) {
        this.roundProgressColor = i2;
    }

    public synchronized void setMax(int i2) {
        if (i2 >= 0) {
            this.max = i2;
        } else {
            throw new IllegalArgumentException("max not less than 0");
        }
    }

    public synchronized void setProgress(int i2) {
        if (i2 >= 0) {
            if (i2 > this.max) {
                i2 = this.max;
            }
            if (i2 <= this.max) {
                this.progress = i2;
                postInvalidate();
            }
        } else {
            throw new IllegalArgumentException("progress not less than 0");
        }
    }

    public void setRoundColor(int i2) {
        this.roundColor = i2;
        postInvalidate();
    }

    public void setRoundWidth(float f2) {
        this.roundWidth = f2;
    }

    public void setTextColor(int i2) {
        this.textColor = i2;
    }

    public void setTextSize(float f2) {
        this.textSize = f2;
    }

    public RoundProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundProgressBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.style = 0;
        this.radius = 0;
        this.paint = new Paint();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.f16858c);
        this.roundColor = obtainStyledAttributes.getColor(e.f16864i, -65536);
        this.roundProgressColor = obtainStyledAttributes.getColor(e.f16865j, -16711936);
        this.textColor = obtainStyledAttributes.getColor(e.n, -16711936);
        this.textSize = obtainStyledAttributes.getDimension(e.p, 15.0f);
        this.roundWidth = obtainStyledAttributes.getDimension(e.f16866k, 5.0f);
        this.max = obtainStyledAttributes.getInteger(e.f16862g, 100);
        this.textIsDisplayable = obtainStyledAttributes.getBoolean(e.o, true);
        this.style = obtainStyledAttributes.getInt(e.m, 0);
        this.roundShader = obtainStyledAttributes.getBoolean(e.f16863h, false);
        this.backColorWidth = obtainStyledAttributes.getDimension(e.f16860e, 0.0f);
        this.startAngle = obtainStyledAttributes.getInt(e.f16867l, 0);
        String str = "bio startAngle:" + this.startAngle;
        this.endAngle = obtainStyledAttributes.getInt(e.f16861f, 360);
        this.backgroundColor = obtainStyledAttributes.getColor(e.f16859d, -1);
        if (this.backColorWidth > 0.0f && this.roundShader) {
            this.mMatrix = new Matrix();
            Bitmap readBitMap = BitmapHelper.readBitMap(context, a.f16839a);
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.mBitmapShader = new BitmapShader(readBitMap, tileMode, tileMode);
            this.mWidth = (int) this.backColorWidth;
            float min = (this.mWidth * 1.0f) / Math.min(readBitMap.getWidth(), readBitMap.getHeight());
            this.mMatrix.setScale(min, min);
            this.mBitmapShader.setLocalMatrix(this.mMatrix);
        }
        obtainStyledAttributes.recycle();
    }
}

package com.alipay.zoloz.zface.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import com.alipay.zoloz.toyger.R;

/* loaded from: classes.dex */
public class UploadProgressBar extends View {
    public static final int FILL = 1;
    public static final int STROKE = 0;
    final int ANGLE_STEP;
    private float backColorWidth;
    private int backgroundColor;
    private int endAngle;
    private Handler mMainHandle;
    private Matrix mMatrix;
    int mProgressAngle;
    public SweepGradient mSweepGradient;
    private int mWidth;
    private int max;
    protected Paint paint;
    private int progress;
    private int radius;
    protected int roundColor;
    protected int roundProgressColor;
    private boolean roundShader;
    private float roundWidth;
    private int secondProgressColor;
    protected int startAngle;
    private int style;
    private int textColor;
    private boolean textIsDisplayable;
    private float textSize;

    public UploadProgressBar(Context context) {
        this(context, null);
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
        int i4 = this.style;
        if (i4 == 0) {
            paintStroke(canvas, rectF);
            return;
        }
        if (i4 != 1) {
            return;
        }
        this.paint.setStyle(Paint.Style.FILL_AND_STROKE);
        if (this.progress != 0) {
            int i5 = this.startAngle;
            canvas.drawArc(rectF, i5 + 90, ((this.endAngle - i5) * r0) / this.max, true, this.paint);
        }
    }

    protected void paintStroke(Canvas canvas, RectF rectF) {
        int i2;
        int i3;
        this.paint.setStyle(Paint.Style.STROKE);
        SweepGradient sweepGradient = this.mSweepGradient;
        if (sweepGradient != null) {
            this.paint.setShader(sweepGradient);
        }
        int i4 = this.startAngle;
        int i5 = i4 + 180;
        int i6 = 180 - (i4 * 2);
        canvas.drawArc(rectF, i5, i6, false, this.paint);
        int i7 = this.mProgressAngle % 360;
        int i8 = 0;
        if (i7 < i5) {
            int i9 = i7 + 120;
            if (i9 > i5) {
                i2 = i9 - i5;
                i7 = i5;
            }
            i2 = 0;
        } else {
            int i10 = i5 + i6;
            if (i7 <= i10) {
                i2 = i7 + 120 < i10 ? 120 : i10 - i7;
            }
            i2 = 0;
        }
        if (i2 > 0) {
            this.paint.setColor(this.roundProgressColor);
            canvas.drawArc(rectF, i7, i2, false, this.paint);
        }
        int i11 = this.mProgressAngle % 360;
        int i12 = this.startAngle;
        int i13 = 180 - (i12 * 2);
        this.paint.setColor(this.roundColor);
        float f2 = i12;
        canvas.drawArc(rectF, f2, i13, false, this.paint);
        if (i11 < i12) {
            int i14 = i11 + 120;
            if (i14 > i12) {
                i8 = i14 - i12;
                i11 = i12;
            }
        } else {
            int i15 = i13 + i12;
            if (i11 <= i15) {
                i8 = i11 + 120 < i15 ? 120 : i15 - i11;
            }
        }
        if (i8 > 0) {
            this.paint.setColor(this.roundProgressColor);
            canvas.drawArc(rectF, i11, i8, false, this.paint);
        } else if (i11 > 270 && (i3 = (this.mProgressAngle + 120) % 360) < 180 && i3 > i12) {
            this.paint.setColor(this.roundProgressColor);
            canvas.drawArc(rectF, f2, i3 - i12, false, this.paint);
        }
        this.paint.setShader(null);
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

    public synchronized void setProgressAngle(int i2) {
        this.mProgressAngle = i2;
        postInvalidate();
    }

    public void setRoundColor(int i2) {
        this.roundColor = i2;
        postInvalidate();
    }

    public void setRoundProgressColor(int i2) {
        this.roundProgressColor = i2;
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

    public UploadProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UploadProgressBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.style = 0;
        this.radius = 0;
        this.mProgressAngle = 0;
        this.ANGLE_STEP = 120;
        this.paint = new Paint();
        this.mMainHandle = new Handler(Looper.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.zface_round_progressBar);
        this.roundColor = obtainStyledAttributes.getColor(R.styleable.zface_round_progressBar_zface_round_color, -65536);
        this.roundProgressColor = obtainStyledAttributes.getColor(R.styleable.zface_round_progressBar_zface_round_progress_color, -16711936);
        this.secondProgressColor = obtainStyledAttributes.getColor(R.styleable.zface_round_progressBar_zface_round_progress_color, -16711936);
        this.textColor = obtainStyledAttributes.getColor(R.styleable.zface_round_progressBar_zface_text_color, -16711936);
        this.textSize = obtainStyledAttributes.getDimension(R.styleable.zface_round_progressBar_zface_text_size, 15.0f);
        this.roundWidth = obtainStyledAttributes.getDimension(R.styleable.zface_round_progressBar_zface_round_width, 5.0f);
        this.max = obtainStyledAttributes.getInteger(R.styleable.zface_round_progressBar_zface_max, 100);
        this.textIsDisplayable = obtainStyledAttributes.getBoolean(R.styleable.zface_round_progressBar_zface_text_is_displayable, true);
        this.style = obtainStyledAttributes.getInt(R.styleable.zface_round_progressBar_zface_style, 0);
        this.roundShader = obtainStyledAttributes.getBoolean(R.styleable.zface_round_progressBar_zface_progress_shader, false);
        this.backColorWidth = obtainStyledAttributes.getDimension(R.styleable.zface_round_progressBar_zface_color_bg_width, 0.0f);
        this.startAngle = obtainStyledAttributes.getInt(R.styleable.zface_round_progressBar_zface_start_angle, 0);
        this.endAngle = obtainStyledAttributes.getInt(R.styleable.zface_round_progressBar_zface_end_angle, 360);
        this.backgroundColor = obtainStyledAttributes.getColor(R.styleable.zface_round_progressBar_zface_background_color, -1);
        if (this.backColorWidth > 0.0f && this.roundShader) {
            int color = obtainStyledAttributes.getColor(R.styleable.zface_round_progressBar_zface_round_progress_start_color, -16711936);
            int color2 = obtainStyledAttributes.getColor(R.styleable.zface_round_progressBar_zface_round_progress_end_color, -16711936);
            float f2 = this.backColorWidth;
            float f3 = f2 / 2.0f;
            float f4 = f2 / 2.0f;
            this.mSweepGradient = new SweepGradient(f3, f4, color, color2);
            Matrix matrix = new Matrix();
            matrix.setRotate(90.0f, f3, f4);
            this.mSweepGradient.setLocalMatrix(matrix);
        }
        obtainStyledAttributes.recycle();
    }
}

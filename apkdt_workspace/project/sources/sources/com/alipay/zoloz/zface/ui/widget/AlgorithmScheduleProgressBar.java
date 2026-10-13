package com.alipay.zoloz.zface.ui.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.graphics.Typeface;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.alipay.zoloz.toyger.R;

/* loaded from: classes.dex */
public class AlgorithmScheduleProgressBar extends View {
    public static final int FILL = 1;
    public static final int STROKE = 0;
    private final int DEFAULT_INTERVAL;
    private final boolean DEFAULT_USE_ACCELERATE;
    private float backColorWidth;
    private int backgroundColor;
    private int endAngle;
    private int mAnimateValue;
    private Handler mHandler;
    private boolean mIsShowingProgress;
    private Matrix mMatrix;
    private Shader mProgressShader;
    public ValueAnimator mValueAnimator;
    private int mWidth;
    private int max;
    private Paint paint;
    private int progress;
    private int radius;
    private int roundColor;
    private int roundProgressColor;
    private int roundProgressEndColor;
    private int roundProgressStartColor;
    private boolean roundShader;
    private float roundWidth;
    private int startAngle;
    private int style;
    private int textColor;
    private boolean textIsDisplayable;
    private float textSize;

    public AlgorithmScheduleProgressBar(Context context) {
        this(context, null);
    }

    private void paintStroke(Canvas canvas, RectF rectF) {
        this.paint.setStyle(Paint.Style.STROKE);
        Shader shader = this.mProgressShader;
        if (shader != null) {
            this.paint.setShader(shader);
        }
        int i2 = this.startAngle;
        canvas.drawArc(rectF, i2 + 90, ((this.endAngle - i2) * this.progress) / this.max, false, this.paint);
        this.paint.setShader(null);
    }

    private void showAnimator(final int i2, int i3, boolean z) {
        if (this.mIsShowingProgress) {
            return;
        }
        this.mIsShowingProgress = true;
        long j2 = i3;
        this.mHandler.postDelayed(new Runnable() { // from class: com.alipay.zoloz.zface.ui.widget.AlgorithmScheduleProgressBar.1
            @Override // java.lang.Runnable
            public void run() {
                AlgorithmScheduleProgressBar.this.mIsShowingProgress = false;
            }
        }, j2);
        int progress = getProgress();
        ValueAnimator valueAnimator = this.mValueAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.mValueAnimator = ValueAnimator.ofInt(progress, i2);
        this.mValueAnimator.setDuration(j2);
        if (z) {
            this.mValueAnimator.setInterpolator(new LinearInterpolator());
        } else {
            this.mValueAnimator.setInterpolator(new AccelerateInterpolator());
        }
        this.mValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.alipay.zoloz.zface.ui.widget.AlgorithmScheduleProgressBar.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                AlgorithmScheduleProgressBar.this.mAnimateValue = Integer.parseInt(AlgorithmScheduleProgressBar.this.mValueAnimator.getAnimatedValue() + "");
                AlgorithmScheduleProgressBar algorithmScheduleProgressBar = AlgorithmScheduleProgressBar.this;
                algorithmScheduleProgressBar.setProgress(algorithmScheduleProgressBar.mAnimateValue);
                if (i2 == AlgorithmScheduleProgressBar.this.mAnimateValue) {
                    AlgorithmScheduleProgressBar.this.mIsShowingProgress = false;
                    AlgorithmScheduleProgressBar.this.mValueAnimator.cancel();
                    AlgorithmScheduleProgressBar.this.mValueAnimator = null;
                }
            }
        });
        this.mValueAnimator.start();
    }

    public int getCricleColor() {
        return this.roundColor;
    }

    public int getCricleProgressColor() {
        return this.roundProgressStartColor;
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
        this.roundProgressStartColor = i2;
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

    public void showProgress(float f2) {
        showProgress(f2, 500, false);
    }

    public AlgorithmScheduleProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void showProgress(float f2, int i2) {
        showProgress(f2, i2, false);
    }

    public AlgorithmScheduleProgressBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.DEFAULT_INTERVAL = 500;
        this.DEFAULT_USE_ACCELERATE = false;
        this.mHandler = new Handler();
        this.mIsShowingProgress = false;
        this.style = 0;
        this.radius = 0;
        this.paint = new Paint();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.zface_round_progressBar);
        this.roundColor = obtainStyledAttributes.getColor(R.styleable.zface_round_progressBar_zface_round_color, -65536);
        this.textColor = obtainStyledAttributes.getColor(R.styleable.zface_round_progressBar_zface_text_color, -16711936);
        this.textSize = obtainStyledAttributes.getDimension(R.styleable.zface_round_progressBar_zface_text_size, 15.0f);
        this.roundWidth = obtainStyledAttributes.getDimension(R.styleable.zface_round_progressBar_zface_round_width, 5.0f);
        this.max = obtainStyledAttributes.getInteger(R.styleable.zface_round_progressBar_zface_max, 100);
        this.textIsDisplayable = obtainStyledAttributes.getBoolean(R.styleable.zface_round_progressBar_zface_text_is_displayable, true);
        this.style = obtainStyledAttributes.getInt(R.styleable.zface_round_progressBar_zface_style, 0);
        this.roundShader = obtainStyledAttributes.getBoolean(R.styleable.zface_round_progressBar_zface_progress_shader, false);
        this.backColorWidth = obtainStyledAttributes.getDimension(R.styleable.zface_round_progressBar_zface_color_bg_width, 0.0f);
        this.startAngle = obtainStyledAttributes.getInt(R.styleable.zface_round_progressBar_zface_start_angle, 0);
        String str = "bio startAngle:" + this.startAngle;
        this.endAngle = obtainStyledAttributes.getInt(R.styleable.zface_round_progressBar_zface_end_angle, 360);
        this.backgroundColor = obtainStyledAttributes.getColor(R.styleable.zface_round_progressBar_zface_background_color, -1);
        this.roundProgressColor = obtainStyledAttributes.getColor(R.styleable.zface_round_progressBar_zface_round_progress_color, -16711936);
        this.roundProgressStartColor = obtainStyledAttributes.getColor(R.styleable.zface_round_progressBar_zface_round_progress_start_color, -16711936);
        this.roundProgressEndColor = obtainStyledAttributes.getColor(R.styleable.zface_round_progressBar_zface_round_progress_end_color, -16711936);
        float f2 = this.backColorWidth;
        if (f2 > 0.0f && this.roundShader) {
            float f3 = f2 / 2.0f;
            float f4 = f2 / 2.0f;
            this.mProgressShader = new SweepGradient(f3, f4, this.roundProgressStartColor, this.roundProgressEndColor);
            Matrix matrix = new Matrix();
            matrix.setRotate(90.0f, f3, f4);
            this.mProgressShader.setLocalMatrix(matrix);
        }
        obtainStyledAttributes.recycle();
    }

    public void showProgress(float f2, int i2, boolean z) {
        showAnimator((int) (f2 * getMax()), i2, z);
    }
}

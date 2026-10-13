package com.alipay.biometrics.ui.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
public class WaveView extends View {
    private static final float DEFAULT_AMPLITUDE_RATIO = 0.05f;
    private static final float DEFAULT_WATER_LEVEL_RATIO = 0.5f;
    private static final float DEFAULT_WAVE_LENGTH_RATIO = 1.0f;
    private static final float DEFAULT_WAVE_SHIFT_RATIO = 0.0f;
    private float mAmplitudeRatio;
    private int mBehindWaveColor;
    private Paint mBorderPaint;
    private float mDefaultAmplitude;
    private double mDefaultAngularFrequency;
    private float mDefaultWaterLevel;
    private float mDefaultWaveLength;
    private int mFrontWaveColor;
    private Matrix mShaderMatrix;
    private ShapeType mShapeType;
    private boolean mShowWave;
    private Paint mViewPaint;
    private float mWaterLevelRatio;
    private float mWaveLengthRatio;
    private BitmapShader mWaveShader;
    private float mWaveShiftRatio;
    public static final int DEFAULT_BEHIND_WAVE_COLOR = Color.parseColor("#28FFFFFF");
    public static final int DEFAULT_FRONT_WAVE_COLOR = Color.parseColor("#3CFFFFFF");
    public static final ShapeType DEFAULT_WAVE_SHAPE = ShapeType.CIRCLE;

    /* renamed from: com.alipay.biometrics.ui.widget.WaveView$1, reason: invalid class name */
    /* loaded from: classes.dex */
    /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$alipay$biometrics$ui$widget$WaveView$ShapeType = new int[ShapeType.values().length];

        static {
            try {
                $SwitchMap$com$alipay$biometrics$ui$widget$WaveView$ShapeType[ShapeType.CIRCLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$alipay$biometrics$ui$widget$WaveView$ShapeType[ShapeType.SQUARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum ShapeType {
        CIRCLE,
        SQUARE
    }

    public WaveView(Context context) {
        super(context);
        this.mAmplitudeRatio = DEFAULT_AMPLITUDE_RATIO;
        this.mWaveLengthRatio = DEFAULT_WAVE_LENGTH_RATIO;
        this.mWaterLevelRatio = DEFAULT_WATER_LEVEL_RATIO;
        this.mWaveShiftRatio = 0.0f;
        this.mBehindWaveColor = DEFAULT_BEHIND_WAVE_COLOR;
        this.mFrontWaveColor = DEFAULT_FRONT_WAVE_COLOR;
        this.mShapeType = DEFAULT_WAVE_SHAPE;
        init();
    }

    private void createShader() {
        double width = getWidth();
        Double.isNaN(width);
        this.mDefaultAngularFrequency = 6.283185307179586d / width;
        this.mDefaultAmplitude = getHeight() * DEFAULT_AMPLITUDE_RATIO;
        this.mDefaultWaterLevel = getHeight() * DEFAULT_WATER_LEVEL_RATIO;
        this.mDefaultWaveLength = getWidth();
        try {
            Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            Paint paint = new Paint();
            paint.setStrokeWidth(2.0f);
            paint.setAntiAlias(true);
            int width2 = getWidth() + 1;
            int height = getHeight() + 1;
            float[] fArr = new float[width2];
            paint.setColor(this.mBehindWaveColor);
            for (int i2 = 0; i2 < width2; i2++) {
                double d2 = i2;
                double d3 = this.mDefaultAngularFrequency;
                Double.isNaN(d2);
                double d4 = d2 * d3;
                double d5 = this.mDefaultWaterLevel;
                double d6 = this.mDefaultAmplitude;
                double sin = Math.sin(d4);
                Double.isNaN(d6);
                Double.isNaN(d5);
                float f2 = (float) (d5 + (d6 * sin));
                float f3 = i2;
                canvas.drawLine(f3, f2, f3, height, paint);
                fArr[i2] = f2;
            }
            paint.setColor(this.mFrontWaveColor);
            int i3 = (int) (this.mDefaultWaveLength / 4.0f);
            for (int i4 = 0; i4 < width2; i4++) {
                float f4 = i4;
                canvas.drawLine(f4, fArr[(i4 + i3) % width2], f4, height, paint);
            }
            this.mWaveShader = new BitmapShader(createBitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP);
            this.mViewPaint.setShader(this.mWaveShader);
        } catch (OutOfMemoryError e2) {
            e2.toString();
        }
    }

    private void init() {
        this.mShaderMatrix = new Matrix();
        this.mViewPaint = new Paint();
        this.mViewPaint.setAntiAlias(true);
    }

    private void paintCircleShape(Canvas canvas, float f2) {
        if (f2 > 0.0f) {
            canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, ((getWidth() - f2) / 2.0f) - DEFAULT_WAVE_LENGTH_RATIO, this.mBorderPaint);
        }
        canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, (getWidth() / 2.0f) - f2, this.mViewPaint);
    }

    private void paintSquare(Canvas canvas, float f2) {
        if (f2 > 0.0f) {
            float f3 = f2 / 2.0f;
            canvas.drawRect(f3, f3, (getWidth() - f3) - DEFAULT_WATER_LEVEL_RATIO, (getHeight() - f3) - DEFAULT_WATER_LEVEL_RATIO, this.mBorderPaint);
        }
        canvas.drawRect(f2, f2, getWidth() - f2, getHeight() - f2, this.mViewPaint);
    }

    public float getAmplitudeRatio() {
        return this.mAmplitudeRatio;
    }

    public float getWaterLevelRatio() {
        return this.mWaterLevelRatio;
    }

    public float getWaveLengthRatio() {
        return this.mWaveLengthRatio;
    }

    public float getWaveShiftRatio() {
        return this.mWaveShiftRatio;
    }

    public boolean isShowWave() {
        return this.mShowWave;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mShowWave && this.mWaveShader != null) {
            if (this.mViewPaint.getShader() == null) {
                this.mViewPaint.setShader(this.mWaveShader);
            }
            this.mShaderMatrix.setScale(this.mWaveLengthRatio / DEFAULT_WAVE_LENGTH_RATIO, this.mAmplitudeRatio / DEFAULT_AMPLITUDE_RATIO, 0.0f, this.mDefaultWaterLevel);
            this.mShaderMatrix.postTranslate(this.mWaveShiftRatio * getWidth(), (DEFAULT_WATER_LEVEL_RATIO - this.mWaterLevelRatio) * getHeight());
            this.mWaveShader.setLocalMatrix(this.mShaderMatrix);
            Paint paint = this.mBorderPaint;
            float strokeWidth = paint != null ? paint.getStrokeWidth() : 0.0f;
            int i2 = AnonymousClass1.$SwitchMap$com$alipay$biometrics$ui$widget$WaveView$ShapeType[this.mShapeType.ordinal()];
            if (i2 == 1) {
                paintCircleShape(canvas, strokeWidth);
                return;
            } else {
                if (i2 != 2) {
                    return;
                }
                paintSquare(canvas, strokeWidth);
                return;
            }
        }
        this.mViewPaint.setShader(null);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        createShader();
    }

    public void setAmplitudeRatio(float f2) {
        if (this.mAmplitudeRatio != f2) {
            this.mAmplitudeRatio = f2;
            invalidate();
        }
    }

    public void setBorder(int i2, int i3) {
        if (this.mBorderPaint == null) {
            this.mBorderPaint = new Paint();
            this.mBorderPaint.setAntiAlias(true);
            this.mBorderPaint.setStyle(Paint.Style.STROKE);
        }
        this.mBorderPaint.setColor(i3);
        this.mBorderPaint.setStrokeWidth(i2);
        invalidate();
    }

    public void setShapeType(ShapeType shapeType) {
        this.mShapeType = shapeType;
        invalidate();
    }

    public void setShowWave(boolean z) {
        this.mShowWave = z;
    }

    public void setWaterLevelRatio(float f2) {
        if (this.mWaterLevelRatio != f2) {
            this.mWaterLevelRatio = f2;
            invalidate();
        }
    }

    public void setWaveColor(int i2, int i3) {
        this.mBehindWaveColor = i2;
        this.mFrontWaveColor = i3;
        this.mWaveShader = null;
        createShader();
        invalidate();
    }

    public void setWaveLengthRatio(float f2) {
        this.mWaveLengthRatio = f2;
    }

    public void setWaveShiftRatio(float f2) {
        if (this.mWaveShiftRatio != f2) {
            this.mWaveShiftRatio = f2;
            invalidate();
        }
    }

    public WaveView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAmplitudeRatio = DEFAULT_AMPLITUDE_RATIO;
        this.mWaveLengthRatio = DEFAULT_WAVE_LENGTH_RATIO;
        this.mWaterLevelRatio = DEFAULT_WATER_LEVEL_RATIO;
        this.mWaveShiftRatio = 0.0f;
        this.mBehindWaveColor = DEFAULT_BEHIND_WAVE_COLOR;
        this.mFrontWaveColor = DEFAULT_FRONT_WAVE_COLOR;
        this.mShapeType = DEFAULT_WAVE_SHAPE;
        init();
    }

    public WaveView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mAmplitudeRatio = DEFAULT_AMPLITUDE_RATIO;
        this.mWaveLengthRatio = DEFAULT_WAVE_LENGTH_RATIO;
        this.mWaterLevelRatio = DEFAULT_WATER_LEVEL_RATIO;
        this.mWaveShiftRatio = 0.0f;
        this.mBehindWaveColor = DEFAULT_BEHIND_WAVE_COLOR;
        this.mFrontWaveColor = DEFAULT_FRONT_WAVE_COLOR;
        this.mShapeType = DEFAULT_WAVE_SHAPE;
        init();
    }
}

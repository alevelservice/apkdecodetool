package com.zoloz.android.phone.zdoc.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.util.AttributeSet;
import android.view.View;
import com.zoloz.android.phone.zdoc.R;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class BaseMaskView extends View {
    private int mBackgroundColor;
    private float mBottomMargin;
    protected RectF mCaptureRect;
    private Paint mCoverPaint;
    private Paint mFramePaint;
    private float mInvisibleHeight;
    private boolean mIsDrawn;
    private int mLineColor;

    /* loaded from: classes2.dex */
    protected abstract class AbsMaskDrawer {
        protected Path mPath;

        public AbsMaskDrawer(Path path) {
            this.mPath = path;
        }

        public abstract void draw(Canvas canvas, Paint paint);
    }

    /* loaded from: classes2.dex */
    protected class CoverMaskDrawer extends AbsMaskDrawer {
        public CoverMaskDrawer(Path path) {
            super(path);
        }

        @Override // com.zoloz.android.phone.zdoc.ui.BaseMaskView.AbsMaskDrawer
        public void draw(Canvas canvas, Paint paint) {
            canvas.save();
            canvas.clipPath(this.mPath, Region.Op.DIFFERENCE);
            canvas.drawColor(paint.getColor());
            canvas.restore();
        }
    }

    /* loaded from: classes2.dex */
    protected class FrameMaskDrawer extends AbsMaskDrawer {
        public FrameMaskDrawer(Path path) {
            super(path);
        }

        @Override // com.zoloz.android.phone.zdoc.ui.BaseMaskView.AbsMaskDrawer
        public void draw(Canvas canvas, Paint paint) {
            canvas.save();
            canvas.drawPath(this.mPath, paint);
            canvas.restore();
        }
    }

    public BaseMaskView(Context context) {
        super(context);
        this.mInvisibleHeight = 0.2f;
        this.mBottomMargin = 0.8f;
        this.mIsDrawn = false;
        init(context, null);
    }

    private int getColor(int i2) {
        return getResources().getColor(i2);
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DefaultMaskView);
        this.mBackgroundColor = obtainStyledAttributes.getColor(R.styleable.DefaultMaskView_z_mask_background, getColor(R.color.z_black_60));
        this.mLineColor = obtainStyledAttributes.getColor(R.styleable.DefaultMaskView_z_line_color, getColor(R.color.z_white));
        this.mInvisibleHeight = obtainStyledAttributes.getFloat(R.styleable.DefaultMaskView_z_mask_invisible_height, this.mInvisibleHeight);
        this.mBottomMargin = obtainStyledAttributes.getFloat(R.styleable.DefaultMaskView_z_mask_bottom_margin, this.mBottomMargin);
        initCustomAttributes(context, attributeSet);
        obtainStyledAttributes.recycle();
        this.mCoverPaint = new Paint();
        this.mCoverPaint.setStyle(Paint.Style.FILL);
        this.mCoverPaint.setColor(this.mBackgroundColor);
        this.mCoverPaint.setAntiAlias(true);
        this.mFramePaint = new Paint();
        this.mFramePaint.setStyle(Paint.Style.STROKE);
        this.mFramePaint.setColor(this.mLineColor);
        this.mFramePaint.setAntiAlias(true);
        this.mFramePaint.setStrokeWidth((int) (getStokeWidth() * getContext().getResources().getDisplayMetrics().density));
    }

    private boolean isCanRefresh() {
        return false;
    }

    protected abstract RectF calcCaptureRect(int i2, int i3);

    public int getCenterPositionY() {
        RectF rectF = this.mCaptureRect;
        if (rectF == null) {
            return 0;
        }
        return (int) (rectF.top + (rectF.height() / 2.0f));
    }

    protected abstract List<AbsMaskDrawer> getCoverDrawer(int i2, int i3);

    public Rect getDocFrame() {
        RectF rectF = this.mCaptureRect;
        return new Rect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    protected abstract List<AbsMaskDrawer> getFrameDrawer(int i2, int i3);

    public int getInvisibleHeight() {
        return (int) (getHeight() * this.mInvisibleHeight);
    }

    protected int getStokeWidth() {
        return 2;
    }

    public int getTipsBottomMargin() {
        return (int) (getHeight() * this.mBottomMargin);
    }

    protected void initCustomAttributes(Context context, AttributeSet attributeSet) {
    }

    @Override // android.view.View
    public void invalidate() {
        this.mIsDrawn = false;
        super.invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.mIsDrawn || isCanRefresh()) {
            this.mCaptureRect = calcCaptureRect(canvas.getWidth(), canvas.getHeight());
            List<AbsMaskDrawer> coverDrawer = getCoverDrawer(canvas.getWidth(), canvas.getHeight());
            if (coverDrawer != null) {
                Iterator<AbsMaskDrawer> it = coverDrawer.iterator();
                while (it.hasNext()) {
                    it.next().draw(canvas, this.mCoverPaint);
                }
            }
            List<AbsMaskDrawer> frameDrawer = getFrameDrawer(canvas.getWidth(), canvas.getHeight());
            if (frameDrawer != null) {
                Iterator<AbsMaskDrawer> it2 = frameDrawer.iterator();
                while (it2.hasNext()) {
                    it2.next().draw(canvas, this.mFramePaint);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<AbsMaskDrawer> toList(AbsMaskDrawer... absMaskDrawerArr) {
        if (absMaskDrawerArr != null) {
            return Arrays.asList(absMaskDrawerArr);
        }
        return null;
    }

    public BaseMaskView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mInvisibleHeight = 0.2f;
        this.mBottomMargin = 0.8f;
        this.mIsDrawn = false;
        init(context, attributeSet);
    }

    public BaseMaskView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mInvisibleHeight = 0.2f;
        this.mBottomMargin = 0.8f;
        this.mIsDrawn = false;
        init(context, attributeSet);
    }
}

package com.zoloz.android.phone.zdoc.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.util.AttributeSet;
import androidx.core.content.a;
import com.zoloz.android.phone.zdoc.R;
import com.zoloz.android.phone.zdoc.ui.BaseMaskView;
import java.util.List;

/* loaded from: classes2.dex */
public class PassportMaskView extends BaseMaskView {

    /* loaded from: classes2.dex */
    private class MRZMarkDrawer extends BaseMaskView.AbsMaskDrawer {
        public MRZMarkDrawer(Path path) {
            super(path);
        }

        @Override // com.zoloz.android.phone.zdoc.ui.BaseMaskView.AbsMaskDrawer
        public void draw(Canvas canvas, Paint paint) {
            canvas.save();
            canvas.clipPath(this.mPath, Region.Op.INTERSECT);
            canvas.drawColor(a.a(PassportMaskView.this.getContext(), R.color.z_white_50));
            canvas.restore();
        }
    }

    public PassportMaskView(Context context) {
        super(context);
    }

    private Path createCoverPath() {
        Path path = new Path();
        path.addRoundRect(this.mCaptureRect, 30.0f, 30.0f, Path.Direction.CCW);
        return path;
    }

    private Path createFramePath() {
        Path path = new Path();
        path.addRoundRect(this.mCaptureRect, 30.0f, 30.0f, Path.Direction.CCW);
        RectF rectF = this.mCaptureRect;
        float height = rectF.top + (rectF.height() / 2.0f);
        path.moveTo(this.mCaptureRect.left, height);
        path.lineTo(this.mCaptureRect.right, height);
        RectF rectF2 = this.mCaptureRect;
        float height2 = rectF2.top + ((rectF2.height() * 388.0f) / 448.0f);
        path.moveTo(this.mCaptureRect.left, height2);
        path.lineTo(this.mCaptureRect.right, height2);
        return path;
    }

    @Override // com.zoloz.android.phone.zdoc.ui.BaseMaskView
    protected RectF calcCaptureRect(int i2, int i3) {
        double d2 = i2;
        Double.isNaN(d2);
        int i4 = (int) (0.1d * d2);
        Double.isNaN(d2);
        int i5 = (int) (0.9d * d2);
        double d3 = i3;
        Double.isNaN(d3);
        int i6 = (int) (0.15d * d3);
        double d4 = i6;
        Double.isNaN(d2);
        Double.isNaN(d4);
        int i7 = (int) (d4 + (((d2 * 0.8d) * 448.0d) / 315.0d));
        if (getInvisibleHeight() + i7 > getHeight()) {
            double height = getHeight() - getInvisibleHeight();
            Double.isNaN(d3);
            Double.isNaN(height);
            i7 = (int) (height - (d3 * 0.05d));
            int width = (int) ((getWidth() - r10) / 2.0f);
            i5 = width + ((int) (((i7 - i6) * 315) / 448.0f));
            i4 = width;
        }
        return new RectF(i4, i6, i5, i7);
    }

    @Override // com.zoloz.android.phone.zdoc.ui.BaseMaskView
    protected List<BaseMaskView.AbsMaskDrawer> getCoverDrawer(int i2, int i3) {
        return toList(new BaseMaskView.CoverMaskDrawer(createCoverPath()));
    }

    @Override // com.zoloz.android.phone.zdoc.ui.BaseMaskView
    protected List<BaseMaskView.AbsMaskDrawer> getFrameDrawer(int i2, int i3) {
        return toList(new BaseMaskView.FrameMaskDrawer(createFramePath()));
    }

    @Override // com.zoloz.android.phone.zdoc.ui.BaseMaskView
    public int getTipsBottomMargin() {
        double height = getHeight();
        Double.isNaN(height);
        return (int) (height * 0.85d);
    }

    public PassportMaskView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PassportMaskView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}

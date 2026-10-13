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
public class MRZMaskView extends BaseMaskView {
    public static final float[] BOTTOM_RADII = {0.0f, 0.0f, 0.0f, 0.0f, 30.0f, 30.0f, 30.0f, 30.0f};
    public static final float ROUND_CORNER = 30.0f;

    /* loaded from: classes2.dex */
    private class MRZMarkDrawer extends BaseMaskView.AbsMaskDrawer {
        public MRZMarkDrawer(Path path) {
            super(path);
        }

        @Override // com.zoloz.android.phone.zdoc.ui.BaseMaskView.AbsMaskDrawer
        public void draw(Canvas canvas, Paint paint) {
            canvas.save();
            canvas.clipPath(this.mPath, Region.Op.INTERSECT);
            canvas.drawColor(a.a(MRZMaskView.this.getContext(), R.color.z_white_50));
            canvas.restore();
        }
    }

    public MRZMaskView(Context context) {
        super(context);
    }

    private Path createFramePath() {
        Path path = new Path();
        RectF rectF = this.mCaptureRect;
        float height = rectF.top + (rectF.height() * 0.75f);
        path.moveTo(this.mCaptureRect.left, height);
        path.lineTo(this.mCaptureRect.right, height);
        path.addRoundRect(this.mCaptureRect, BOTTOM_RADII, Path.Direction.CCW);
        return path;
    }

    private Path createPath() {
        Path path = new Path();
        path.addRoundRect(this.mCaptureRect, BOTTOM_RADII, Path.Direction.CCW);
        return path;
    }

    private Path createWriteCoverPath() {
        RectF rectF = new RectF(this.mCaptureRect);
        RectF rectF2 = this.mCaptureRect;
        rectF.top = rectF2.top + (rectF2.height() * 0.75f);
        Path path = new Path();
        path.addRoundRect(rectF, BOTTOM_RADII, Path.Direction.CCW);
        return path;
    }

    @Override // com.zoloz.android.phone.zdoc.ui.BaseMaskView
    protected RectF calcCaptureRect(int i2, int i3) {
        float f2 = i2;
        int i4 = (int) (0.05f * f2);
        float f3 = f2 * 0.95f;
        return new RectF(i4, (int) (i3 * 0.2f), (int) f3, (int) (((f3 * 500.0f) / 712.0f) + r5));
    }

    @Override // com.zoloz.android.phone.zdoc.ui.BaseMaskView
    protected List<BaseMaskView.AbsMaskDrawer> getCoverDrawer(int i2, int i3) {
        return toList(new BaseMaskView.CoverMaskDrawer(createPath()), new MRZMarkDrawer(createWriteCoverPath()));
    }

    @Override // com.zoloz.android.phone.zdoc.ui.BaseMaskView
    protected List<BaseMaskView.AbsMaskDrawer> getFrameDrawer(int i2, int i3) {
        return toList(new BaseMaskView.FrameMaskDrawer(createFramePath()));
    }

    public MRZMaskView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MRZMaskView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}

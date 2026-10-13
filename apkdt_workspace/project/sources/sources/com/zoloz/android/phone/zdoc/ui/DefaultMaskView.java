package com.zoloz.android.phone.zdoc.ui;

import android.content.Context;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import com.zoloz.android.phone.zdoc.ui.BaseMaskView;
import java.util.List;

/* loaded from: classes2.dex */
public class DefaultMaskView extends BaseMaskView {
    public DefaultMaskView(Context context) {
        super(context);
    }

    private Path createPath(int i2, int i3) {
        Path path = new Path();
        path.addRoundRect(this.mCaptureRect, 30.0f, 30.0f, Path.Direction.CCW);
        return path;
    }

    @Override // com.zoloz.android.phone.zdoc.ui.BaseMaskView
    protected RectF calcCaptureRect(int i2, int i3) {
        float f2 = i2;
        int i4 = (int) (0.05f * f2);
        float f3 = f2 * 0.95f;
        return new RectF(i4, (int) (i3 * 0.2f), (int) f3, (int) (((f3 * 436.0f) / 682.0f) + r5));
    }

    @Override // com.zoloz.android.phone.zdoc.ui.BaseMaskView
    protected List<BaseMaskView.AbsMaskDrawer> getCoverDrawer(int i2, int i3) {
        return toList(new BaseMaskView.CoverMaskDrawer(this, createPath(i2, i3)));
    }

    @Override // com.zoloz.android.phone.zdoc.ui.BaseMaskView
    protected List<BaseMaskView.AbsMaskDrawer> getFrameDrawer(int i2, int i3) {
        return toList(new BaseMaskView.FrameMaskDrawer(this, createPath(i2, i3)));
    }

    public DefaultMaskView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DefaultMaskView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}

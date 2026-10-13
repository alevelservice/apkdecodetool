package com.zoloz.android.phone.zdoc.ui;

import android.content.Context;
import android.graphics.RectF;
import android.util.AttributeSet;
import com.alipay.mobile.security.bio.utils.DisplayUtil;
import com.zoloz.android.phone.zdoc.ui.BaseMaskView;
import java.util.List;

/* loaded from: classes2.dex */
public class EmptyMaskView extends BaseMaskView {
    public EmptyMaskView(Context context) {
        super(context);
    }

    @Override // com.zoloz.android.phone.zdoc.ui.BaseMaskView
    protected RectF calcCaptureRect(int i2, int i3) {
        return new RectF(0, DisplayUtil.dip2px(getContext(), 48.0f), i2, i3 - getInvisibleHeight());
    }

    @Override // com.zoloz.android.phone.zdoc.ui.BaseMaskView
    protected List<BaseMaskView.AbsMaskDrawer> getCoverDrawer(int i2, int i3) {
        return null;
    }

    @Override // com.zoloz.android.phone.zdoc.ui.BaseMaskView
    protected List<BaseMaskView.AbsMaskDrawer> getFrameDrawer(int i2, int i3) {
        return null;
    }

    @Override // com.zoloz.android.phone.zdoc.ui.BaseMaskView
    public int getTipsBottomMargin() {
        return (int) (getHeight() * 0.85f);
    }

    public EmptyMaskView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public EmptyMaskView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}

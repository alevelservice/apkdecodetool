package com.alipay.biometrics.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.graphics.Region;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import e.b.a.a.a.a.a.e;

/* loaded from: classes.dex */
public class CircleFrameLayout extends FrameLayout {
    private final String BRAND;
    private float circleX;
    private float circleY;
    boolean isEnable;
    WidgetListener widgetListener;

    /* loaded from: classes.dex */
    public interface WidgetListener {
        void notifyError(int i2);
    }

    public CircleFrameLayout(Context context) {
        super(context);
        this.BRAND = "Meizu";
        this.circleX = -1.0f;
        this.circleY = -1.0f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.isEnable) {
            if (this.circleX < 0.0f) {
                this.circleX = (canvas.getWidth() * 1.0f) / 2.0f;
                this.circleY = (canvas.getHeight() * 1.0f) / 2.0f;
            }
            Path path = new Path();
            float f2 = this.circleX;
            path.addCircle(f2, this.circleY, f2, Path.Direction.CCW);
            canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
            try {
                if (!canvas.clipPath(path, Region.Op.REPLACE) && this.widgetListener != null) {
                    "Meizu".equalsIgnoreCase(Build.BRAND);
                }
            } catch (UnsupportedOperationException e2) {
                e2.toString();
            }
        }
        super.dispatchDraw(canvas);
    }

    public void setEnable(boolean z) {
        this.isEnable = z;
        postInvalidate();
    }

    public void setWidgetListener(WidgetListener widgetListener) {
        this.widgetListener = widgetListener;
    }

    public CircleFrameLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.BRAND = "Meizu";
        this.circleX = -1.0f;
        this.circleY = -1.0f;
    }

    public CircleFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.BRAND = "Meizu";
        this.circleX = -1.0f;
        this.circleY = -1.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.f16856a);
        this.isEnable = obtainStyledAttributes.getBoolean(e.f16857b, false);
        obtainStyledAttributes.recycle();
    }
}

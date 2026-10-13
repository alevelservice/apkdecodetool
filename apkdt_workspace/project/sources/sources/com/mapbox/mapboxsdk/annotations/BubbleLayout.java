package com.mapbox.mapboxsdk.annotations;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import com.alipay.zoloz.toyger.blob.BlobStatic;
import com.mapbox.mapboxsdk.o;

@Deprecated
/* loaded from: classes2.dex */
public class BubbleLayout extends LinearLayout {
    public static final float DEFAULT_STROKE_WIDTH = -1.0f;

    /* renamed from: e, reason: collision with root package name */
    private b f15685e;

    /* renamed from: f, reason: collision with root package name */
    private float f15686f;

    /* renamed from: g, reason: collision with root package name */
    private float f15687g;

    /* renamed from: h, reason: collision with root package name */
    private float f15688h;

    /* renamed from: i, reason: collision with root package name */
    private float f15689i;

    /* renamed from: j, reason: collision with root package name */
    private c f15690j;

    /* renamed from: k, reason: collision with root package name */
    private int f15691k;

    /* renamed from: l, reason: collision with root package name */
    private float f15692l;
    private int m;

    public BubbleLayout(@NonNull Context context) {
        this(context, null, 0);
    }

    private void a() {
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int a2 = this.f15685e.a();
        if (a2 == 0) {
            paddingLeft = (int) (paddingLeft + this.f15686f);
        } else if (a2 == 1) {
            paddingRight = (int) (paddingRight + this.f15686f);
        } else if (a2 == 2) {
            paddingTop = (int) (paddingTop + this.f15687g);
        } else if (a2 == 3) {
            paddingBottom = (int) (paddingBottom + this.f15687g);
        }
        float f2 = this.f15692l;
        if (f2 > 0.0f) {
            paddingLeft = (int) (paddingLeft + f2);
            paddingRight = (int) (paddingRight + f2);
            paddingTop = (int) (paddingTop + f2);
            paddingBottom = (int) (paddingBottom + f2);
        }
        setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }

    private void b() {
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int a2 = this.f15685e.a();
        if (a2 == 0) {
            paddingLeft = (int) (paddingLeft - this.f15686f);
        } else if (a2 == 1) {
            paddingRight = (int) (paddingRight - this.f15686f);
        } else if (a2 == 2) {
            paddingTop = (int) (paddingTop - this.f15687g);
        } else if (a2 == 3) {
            paddingBottom = (int) (paddingBottom - this.f15687g);
        }
        float f2 = this.f15692l;
        if (f2 > 0.0f) {
            paddingLeft = (int) (paddingLeft - f2);
            paddingRight = (int) (paddingRight - f2);
            paddingTop = (int) (paddingTop - f2);
            paddingBottom = (int) (paddingBottom - f2);
        }
        setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }

    static float convertDpToPixel(float f2, Context context) {
        return f2 * (context.getResources().getDisplayMetrics().densityDpi / BlobStatic.MONITOR_IMAGE_WIDTH);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NonNull Canvas canvas) {
        c cVar = this.f15690j;
        if (cVar != null) {
            cVar.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    public b getArrowDirection() {
        return this.f15685e;
    }

    public float getArrowHeight() {
        return this.f15687g;
    }

    public float getArrowPosition() {
        return this.f15688h;
    }

    public float getArrowWidth() {
        return this.f15686f;
    }

    public int getBubbleColor() {
        return this.f15691k;
    }

    public float getCornersRadius() {
        return this.f15689i;
    }

    public int getStrokeColor() {
        return this.m;
    }

    public float getStrokeWidth() {
        return this.f15692l;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        a(0, getWidth(), 0, getHeight());
    }

    @NonNull
    public BubbleLayout setArrowDirection(b bVar) {
        b();
        this.f15685e = bVar;
        a();
        return this;
    }

    @NonNull
    public BubbleLayout setArrowHeight(float f2) {
        b();
        this.f15687g = f2;
        a();
        return this;
    }

    @NonNull
    public BubbleLayout setArrowPosition(float f2) {
        b();
        this.f15688h = f2;
        a();
        return this;
    }

    @NonNull
    public BubbleLayout setArrowWidth(float f2) {
        b();
        this.f15686f = f2;
        a();
        return this;
    }

    @NonNull
    public BubbleLayout setBubbleColor(int i2) {
        this.f15691k = i2;
        requestLayout();
        return this;
    }

    @NonNull
    public BubbleLayout setCornersRadius(float f2) {
        this.f15689i = f2;
        requestLayout();
        return this;
    }

    @NonNull
    public BubbleLayout setStrokeColor(int i2) {
        this.m = i2;
        requestLayout();
        return this;
    }

    @NonNull
    public BubbleLayout setStrokeWidth(float f2) {
        b();
        this.f15692l = f2;
        a();
        return this;
    }

    public BubbleLayout(@NonNull Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BubbleLayout(@NonNull Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, o.mapbox_BubbleLayout);
        this.f15685e = new b(obtainStyledAttributes.getInt(o.mapbox_BubbleLayout_mapbox_bl_arrowDirection, 0));
        this.f15686f = obtainStyledAttributes.getDimension(o.mapbox_BubbleLayout_mapbox_bl_arrowWidth, convertDpToPixel(8.0f, context));
        this.f15687g = obtainStyledAttributes.getDimension(o.mapbox_BubbleLayout_mapbox_bl_arrowHeight, convertDpToPixel(8.0f, context));
        this.f15688h = obtainStyledAttributes.getDimension(o.mapbox_BubbleLayout_mapbox_bl_arrowPosition, convertDpToPixel(12.0f, context));
        this.f15689i = obtainStyledAttributes.getDimension(o.mapbox_BubbleLayout_mapbox_bl_cornersRadius, 0.0f);
        this.f15691k = obtainStyledAttributes.getColor(o.mapbox_BubbleLayout_mapbox_bl_bubbleColor, -1);
        this.f15692l = obtainStyledAttributes.getDimension(o.mapbox_BubbleLayout_mapbox_bl_strokeWidth, -1.0f);
        this.m = obtainStyledAttributes.getColor(o.mapbox_BubbleLayout_mapbox_bl_strokeColor, -7829368);
        obtainStyledAttributes.recycle();
        a();
    }

    private void a(int i2, int i3, int i4, int i5) {
        if (i3 < i2 || i5 < i4) {
            return;
        }
        this.f15690j = new c(new RectF(i2, i4, i3, i5), this.f15685e, this.f15686f, this.f15687g, this.f15688h, this.f15689i, this.f15691k, this.f15692l, this.m);
    }
}

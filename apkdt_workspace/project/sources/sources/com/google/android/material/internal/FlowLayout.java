package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class FlowLayout extends ViewGroup {

    /* renamed from: e, reason: collision with root package name */
    private int f13834e;

    /* renamed from: f, reason: collision with root package name */
    private int f13835f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f13836g;

    public FlowLayout(Context context) {
        this(context, null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, e.i.b.c.k.FlowLayout, 0, 0);
        this.f13834e = obtainStyledAttributes.getDimensionPixelSize(e.i.b.c.k.FlowLayout_lineSpacing, 0);
        this.f13835f = obtainStyledAttributes.getDimensionPixelSize(e.i.b.c.k.FlowLayout_itemSpacing, 0);
        obtainStyledAttributes.recycle();
    }

    protected int getItemSpacing() {
        return this.f13835f;
    }

    protected int getLineSpacing() {
        return this.f13834e;
    }

    protected boolean isSingleLine() {
        return this.f13836g;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        if (getChildCount() == 0) {
            return;
        }
        boolean z2 = ViewCompat.n(this) == 1;
        int paddingRight = z2 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z2 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int i8 = (i4 - i2) - paddingLeft;
        int i9 = paddingRight;
        int i10 = paddingTop;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i7 = androidx.core.view.h.b(marginLayoutParams);
                    i6 = androidx.core.view.h.a(marginLayoutParams);
                } else {
                    i6 = 0;
                    i7 = 0;
                }
                int measuredWidth = i9 + i7 + childAt.getMeasuredWidth();
                if (!this.f13836g && measuredWidth > i8) {
                    i10 = paddingTop + this.f13834e;
                    i9 = paddingRight;
                }
                int i12 = i9 + i7;
                int measuredWidth2 = childAt.getMeasuredWidth() + i12;
                int measuredHeight = childAt.getMeasuredHeight() + i10;
                if (z2) {
                    childAt.layout(i8 - measuredWidth2, i10, (i8 - i9) - i7, measuredHeight);
                } else {
                    childAt.layout(i12, i10, measuredWidth2, measuredHeight);
                }
                i9 += i7 + i6 + childAt.getMeasuredWidth() + this.f13835f;
                paddingTop = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int size = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int mode2 = View.MeasureSpec.getMode(i3);
        int i6 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = i6 - getPaddingRight();
        int i7 = paddingLeft;
        int i8 = paddingTop;
        int i9 = i8;
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i2, i3);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i4 = marginLayoutParams.leftMargin + 0;
                    i5 = marginLayoutParams.rightMargin + 0;
                } else {
                    i4 = 0;
                    i5 = 0;
                }
                int i12 = i7;
                if (i7 + i4 + childAt.getMeasuredWidth() > paddingRight && !isSingleLine()) {
                    int paddingLeft2 = getPaddingLeft();
                    i9 = this.f13834e + i8;
                    i12 = paddingLeft2;
                }
                int measuredWidth = i12 + i4 + childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight() + i9;
                if (measuredWidth > i10) {
                    i10 = measuredWidth;
                }
                i8 = measuredHeight;
                i7 = i12 + i4 + i5 + childAt.getMeasuredWidth() + this.f13835f;
            }
        }
        setMeasuredDimension(a(size, mode, i10), a(size2, mode2, i8));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setItemSpacing(int i2) {
        this.f13835f = i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setLineSpacing(int i2) {
        this.f13834e = i2;
    }

    public void setSingleLine(boolean z) {
        this.f13836g = z;
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13836g = false;
        a(context, attributeSet);
    }

    private static int a(int i2, int i3, int i4) {
        if (i3 != Integer.MIN_VALUE) {
            return i3 != 1073741824 ? i4 : i2;
        }
        return Math.min(i4, i2);
    }

    @TargetApi(21)
    public FlowLayout(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f13836g = false;
        a(context, attributeSet);
    }
}

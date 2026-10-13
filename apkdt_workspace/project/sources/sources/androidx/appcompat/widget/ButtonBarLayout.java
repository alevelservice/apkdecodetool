package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ButtonBarLayout extends LinearLayout {

    /* renamed from: e, reason: collision with root package name */
    private boolean f1161e;

    /* renamed from: f, reason: collision with root package name */
    private int f1162f;

    /* renamed from: g, reason: collision with root package name */
    private int f1163g;

    public ButtonBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1162f = -1;
        this.f1163g = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.a.j.ButtonBarLayout);
        ViewCompat.a(this, context, a.a.j.ButtonBarLayout, attributeSet, obtainStyledAttributes, 0, 0);
        this.f1161e = obtainStyledAttributes.getBoolean(a.a.j.ButtonBarLayout_allowStacking, true);
        obtainStyledAttributes.recycle();
    }

    private int a(int i2) {
        int childCount = getChildCount();
        while (i2 < childCount) {
            if (getChildAt(i2).getVisibility() == 0) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    private void setStacked(boolean z) {
        setOrientation(z ? 1 : 0);
        setGravity(z ? 5 : 80);
        View findViewById = findViewById(a.a.f.spacer);
        if (findViewById != null) {
            findViewById.setVisibility(z ? 8 : 4);
        }
        for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
            bringChildToFront(getChildAt(childCount));
        }
    }

    @Override // android.view.View
    public int getMinimumHeight() {
        return Math.max(this.f1163g, super.getMinimumHeight());
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        int i4;
        boolean z;
        int size = View.MeasureSpec.getSize(i2);
        int i5 = 0;
        if (this.f1161e) {
            if (size > this.f1162f && a()) {
                setStacked(false);
            }
            this.f1162f = size;
        }
        if (a() || View.MeasureSpec.getMode(i2) != 1073741824) {
            i4 = i2;
            z = false;
        } else {
            i4 = View.MeasureSpec.makeMeasureSpec(size, e.b.b.a.a.a.c.ALL_INT);
            z = true;
        }
        super.onMeasure(i4, i3);
        if (this.f1161e && !a()) {
            if ((getMeasuredWidthAndState() & (-16777216)) == 16777216) {
                setStacked(true);
                z = true;
            }
        }
        if (z) {
            super.onMeasure(i2, i3);
        }
        int a2 = a(0);
        if (a2 >= 0) {
            View childAt = getChildAt(a2);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            int paddingTop = getPaddingTop() + childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin + 0;
            if (a()) {
                int a3 = a(a2 + 1);
                if (a3 >= 0) {
                    paddingTop += getChildAt(a3).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f));
                }
                i5 = paddingTop;
            } else {
                i5 = paddingTop + getPaddingBottom();
            }
        }
        if (ViewCompat.o(this) != i5) {
            setMinimumHeight(i5);
        }
    }

    public void setAllowStacking(boolean z) {
        if (this.f1161e != z) {
            this.f1161e = z;
            if (!this.f1161e && getOrientation() == 1) {
                setStacked(false);
            }
            requestLayout();
        }
    }

    private boolean a() {
        return getOrientation() == 1;
    }
}

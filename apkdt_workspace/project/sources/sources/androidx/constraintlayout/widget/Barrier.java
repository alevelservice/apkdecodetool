package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public class Barrier extends ConstraintHelper {
    public static final int BOTTOM = 3;
    public static final int END = 6;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int START = 5;
    public static final int TOP = 2;

    /* renamed from: f, reason: collision with root package name */
    private int f1567f;

    /* renamed from: g, reason: collision with root package name */
    private int f1568g;

    /* renamed from: h, reason: collision with root package name */
    private a.g.a.j.b f1569h;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public boolean allowsGoneWidget() {
        return this.f1569h.K();
    }

    public int getType() {
        return this.f1567f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void init(AttributeSet attributeSet) {
        super.init(attributeSet);
        this.f1569h = new a.g.a.j.b();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, c.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == c.ConstraintLayout_Layout_barrierDirection) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == c.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.f1569h.c(obtainStyledAttributes.getBoolean(index, true));
                }
            }
        }
        this.mHelperWidget = this.f1569h;
        validateParams();
    }

    public void setAllowsGoneWidget(boolean z) {
        this.f1569h.c(z);
    }

    public void setType(int i2) {
        this.f1567f = i2;
        this.f1568g = i2;
        if (Build.VERSION.SDK_INT < 17) {
            int i3 = this.f1567f;
            if (i3 == 5) {
                this.f1568g = 0;
            } else if (i3 == 6) {
                this.f1568g = 1;
            }
        } else {
            if (1 == getResources().getConfiguration().getLayoutDirection()) {
                int i4 = this.f1567f;
                if (i4 == 5) {
                    this.f1568g = 1;
                } else if (i4 == 6) {
                    this.f1568g = 0;
                }
            } else {
                int i5 = this.f1567f;
                if (i5 == 5) {
                    this.f1568g = 0;
                } else if (i5 == 6) {
                    this.f1568g = 1;
                }
            }
        }
        this.f1569h.t(this.f1568g);
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        super.setVisibility(8);
    }
}

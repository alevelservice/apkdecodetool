package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;

/* loaded from: classes.dex */
public class Constraints extends ViewGroup {
    public static final String TAG = "Constraints";
    a myConstraintSet;

    public Constraints(Context context) {
        super(context);
        super.setVisibility(8);
    }

    private void a(AttributeSet attributeSet) {
    }

    public a getConstraintSet() {
        if (this.myConstraintSet == null) {
            this.myConstraintSet = new a();
        }
        this.myConstraintSet.a(this);
        return this.myConstraintSet;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public Constraints(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet);
        super.setVisibility(8);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.LayoutParams(layoutParams);
    }

    public Constraints(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(attributeSet);
        super.setVisibility(8);
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ConstraintLayout.LayoutParams {
        public float m0;
        public boolean n0;
        public float o0;
        public float p0;
        public float q0;
        public float r0;
        public float s0;
        public float t0;
        public float u0;
        public float v0;
        public float w0;
        public float x0;
        public float y0;

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.m0 = 1.0f;
            this.n0 = false;
            this.o0 = 0.0f;
            this.p0 = 0.0f;
            this.q0 = 0.0f;
            this.r0 = 0.0f;
            this.s0 = 1.0f;
            this.t0 = 1.0f;
            this.u0 = 0.0f;
            this.v0 = 0.0f;
            this.w0 = 0.0f;
            this.x0 = 0.0f;
            this.y0 = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.m0 = 1.0f;
            this.n0 = false;
            this.o0 = 0.0f;
            this.p0 = 0.0f;
            this.q0 = 0.0f;
            this.r0 = 0.0f;
            this.s0 = 1.0f;
            this.t0 = 1.0f;
            this.u0 = 0.0f;
            this.v0 = 0.0f;
            this.w0 = 0.0f;
            this.x0 = 0.0f;
            this.y0 = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.ConstraintSet);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == c.ConstraintSet_android_alpha) {
                    this.m0 = obtainStyledAttributes.getFloat(index, this.m0);
                } else if (index == c.ConstraintSet_android_elevation) {
                    this.o0 = obtainStyledAttributes.getFloat(index, this.o0);
                    this.n0 = true;
                } else if (index == c.ConstraintSet_android_rotationX) {
                    this.q0 = obtainStyledAttributes.getFloat(index, this.q0);
                } else if (index == c.ConstraintSet_android_rotationY) {
                    this.r0 = obtainStyledAttributes.getFloat(index, this.r0);
                } else if (index == c.ConstraintSet_android_rotation) {
                    this.p0 = obtainStyledAttributes.getFloat(index, this.p0);
                } else if (index == c.ConstraintSet_android_scaleX) {
                    this.s0 = obtainStyledAttributes.getFloat(index, this.s0);
                } else if (index == c.ConstraintSet_android_scaleY) {
                    this.t0 = obtainStyledAttributes.getFloat(index, this.t0);
                } else if (index == c.ConstraintSet_android_transformPivotX) {
                    this.u0 = obtainStyledAttributes.getFloat(index, this.u0);
                } else if (index == c.ConstraintSet_android_transformPivotY) {
                    this.v0 = obtainStyledAttributes.getFloat(index, this.v0);
                } else if (index == c.ConstraintSet_android_translationX) {
                    this.w0 = obtainStyledAttributes.getFloat(index, this.w0);
                } else if (index == c.ConstraintSet_android_translationY) {
                    this.x0 = obtainStyledAttributes.getFloat(index, this.x0);
                } else if (index == c.ConstraintSet_android_translationZ) {
                    this.w0 = obtainStyledAttributes.getFloat(index, this.y0);
                }
            }
        }
    }
}

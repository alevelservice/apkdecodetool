package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;

/* loaded from: classes.dex */
public class Placeholder extends View {

    /* renamed from: e, reason: collision with root package name */
    private int f1592e;

    /* renamed from: f, reason: collision with root package name */
    private View f1593f;

    /* renamed from: g, reason: collision with root package name */
    private int f1594g;

    public Placeholder(Context context) {
        super(context);
        this.f1592e = -1;
        this.f1593f = null;
        this.f1594g = 4;
        a(null);
    }

    private void a(AttributeSet attributeSet) {
        super.setVisibility(this.f1594g);
        this.f1592e = -1;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, c.ConstraintLayout_placeholder);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == c.ConstraintLayout_placeholder_content) {
                    this.f1592e = obtainStyledAttributes.getResourceId(index, this.f1592e);
                } else if (index == c.ConstraintLayout_placeholder_emptyVisibility) {
                    this.f1594g = obtainStyledAttributes.getInt(index, this.f1594g);
                }
            }
        }
    }

    public View getContent() {
        return this.f1593f;
    }

    public int getEmptyVisibility() {
        return this.f1594g;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int height = rect.height();
            int width = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((width / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((height / 2.0f) + (rect.height() / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int i2) {
        View findViewById;
        if (this.f1592e == i2) {
            return;
        }
        View view = this.f1593f;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.LayoutParams) this.f1593f.getLayoutParams()).Z = false;
            this.f1593f = null;
        }
        this.f1592e = i2;
        if (i2 == -1 || (findViewById = ((View) getParent()).findViewById(i2)) == null) {
            return;
        }
        findViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i2) {
        this.f1594g = i2;
    }

    public void updatePostMeasure(ConstraintLayout constraintLayout) {
        if (this.f1593f == null) {
            return;
        }
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.f1593f.getLayoutParams();
        layoutParams2.k0.n(0);
        layoutParams.k0.o(layoutParams2.k0.s());
        layoutParams.k0.g(layoutParams2.k0.i());
        layoutParams2.k0.n(8);
    }

    public void updatePreLayout(ConstraintLayout constraintLayout) {
        if (this.f1592e == -1 && !isInEditMode()) {
            setVisibility(this.f1594g);
        }
        this.f1593f = constraintLayout.findViewById(this.f1592e);
        View view = this.f1593f;
        if (view != null) {
            ((ConstraintLayout.LayoutParams) view.getLayoutParams()).Z = true;
            this.f1593f.setVisibility(0);
            setVisibility(0);
        }
    }

    public Placeholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1592e = -1;
        this.f1593f = null;
        this.f1594g = 4;
        a(attributeSet);
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f1592e = -1;
        this.f1593f = null;
        this.f1594g = 4;
        a(attributeSet);
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2);
        this.f1592e = -1;
        this.f1593f = null;
        this.f1594g = 4;
        a(attributeSet);
    }
}

package androidx.viewpager.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class PagerTabStrip extends PagerTitleStrip {
    private boolean A;
    private float B;
    private float C;
    private int D;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private final Paint u;
    private final Rect v;
    private int w;
    private boolean x;
    private boolean y;
    private int z;

    /* loaded from: classes.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PagerTabStrip.this.mPager.setCurrentItem(r2.getCurrentItem() - 1);
        }
    }

    /* loaded from: classes.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ViewPager viewPager = PagerTabStrip.this.mPager;
            viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
        }
    }

    public PagerTabStrip(@NonNull Context context) {
        this(context, null);
    }

    public boolean getDrawFullUnderline() {
        return this.x;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.viewpager.widget.PagerTitleStrip
    public int getMinHeight() {
        return Math.max(super.getMinHeight(), this.s);
    }

    @ColorInt
    public int getTabIndicatorColor() {
        return this.o;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int left = this.mCurrText.getLeft() - this.t;
        int right = this.mCurrText.getRight() + this.t;
        int i2 = height - this.p;
        this.u.setColor((this.w << 24) | (this.o & 16777215));
        float f2 = height;
        canvas.drawRect(left, i2, right, f2, this.u);
        if (this.x) {
            this.u.setColor((-16777216) | (this.o & 16777215));
            canvas.drawRect(getPaddingLeft(), height - this.z, getWidth() - getPaddingRight(), f2, this.u);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && this.A) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (action == 0) {
            this.B = x;
            this.C = y;
            this.A = false;
        } else if (action != 1) {
            if (action == 2 && (Math.abs(x - this.B) > this.D || Math.abs(y - this.C) > this.D)) {
                this.A = true;
            }
        } else if (x < this.mCurrText.getLeft() - this.t) {
            ViewPager viewPager = this.mPager;
            viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
        } else if (x > this.mCurrText.getRight() + this.t) {
            ViewPager viewPager2 = this.mPager;
            viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1);
        }
        return true;
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i2) {
        super.setBackgroundColor(i2);
        if (this.y) {
            return;
        }
        this.x = (i2 & (-16777216)) == 0;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.y) {
            return;
        }
        this.x = drawable == null;
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i2) {
        super.setBackgroundResource(i2);
        if (this.y) {
            return;
        }
        this.x = i2 == 0;
    }

    public void setDrawFullUnderline(boolean z) {
        this.x = z;
        this.y = true;
        invalidate();
    }

    @Override // android.view.View
    public void setPadding(int i2, int i3, int i4, int i5) {
        int i6 = this.q;
        if (i5 < i6) {
            i5 = i6;
        }
        super.setPadding(i2, i3, i4, i5);
    }

    public void setTabIndicatorColor(@ColorInt int i2) {
        this.o = i2;
        this.u.setColor(this.o);
        invalidate();
    }

    public void setTabIndicatorColorResource(@ColorRes int i2) {
        setTabIndicatorColor(androidx.core.content.a.a(getContext(), i2));
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void setTextSpacing(int i2) {
        int i3 = this.r;
        if (i2 < i3) {
            i2 = i3;
        }
        super.setTextSpacing(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void updateTextPositions(int i2, float f2, boolean z) {
        Rect rect = this.v;
        int height = getHeight();
        int left = this.mCurrText.getLeft() - this.t;
        int right = this.mCurrText.getRight() + this.t;
        int i3 = height - this.p;
        rect.set(left, i3, right, height);
        super.updateTextPositions(i2, f2, z);
        this.w = (int) (Math.abs(f2 - 0.5f) * 2.0f * 255.0f);
        rect.union(this.mCurrText.getLeft() - this.t, i3, this.mCurrText.getRight() + this.t, height);
        invalidate(rect);
    }

    public PagerTabStrip(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.u = new Paint();
        this.v = new Rect();
        this.w = 255;
        this.x = false;
        this.y = false;
        this.o = this.mTextColor;
        this.u.setColor(this.o);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.p = (int) ((3.0f * f2) + 0.5f);
        this.q = (int) ((6.0f * f2) + 0.5f);
        this.r = (int) (64.0f * f2);
        this.t = (int) ((16.0f * f2) + 0.5f);
        this.z = (int) ((1.0f * f2) + 0.5f);
        this.s = (int) ((f2 * 32.0f) + 0.5f);
        this.D = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        setTextSpacing(getTextSpacing());
        setWillNotDraw(false);
        this.mPrevText.setFocusable(true);
        this.mPrevText.setOnClickListener(new a());
        this.mNextText.setFocusable(true);
        this.mNextText.setOnClickListener(new b());
        if (getBackground() == null) {
            this.x = true;
        }
    }
}

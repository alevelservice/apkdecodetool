package androidx.cardview.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;

/* loaded from: classes.dex */
public class CardView extends FrameLayout {

    /* renamed from: h, reason: collision with root package name */
    private static final int[] f1535h = {R.attr.colorBackground};

    /* renamed from: i, reason: collision with root package name */
    private static final e f1536i;

    /* renamed from: e, reason: collision with root package name */
    private boolean f1537e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f1538f;

    /* renamed from: g, reason: collision with root package name */
    private final d f1539g;
    final Rect mContentPadding;
    final Rect mShadowBounds;
    int mUserSetMinHeight;
    int mUserSetMinWidth;

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            f1536i = new b();
        } else if (i2 >= 17) {
            f1536i = new androidx.cardview.widget.a();
        } else {
            f1536i = new c();
        }
        f1536i.a();
    }

    public CardView(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return f1536i.e(this.f1539g);
    }

    public float getCardElevation() {
        return f1536i.a(this.f1539g);
    }

    @Px
    public int getContentPaddingBottom() {
        return this.mContentPadding.bottom;
    }

    @Px
    public int getContentPaddingLeft() {
        return this.mContentPadding.left;
    }

    @Px
    public int getContentPaddingRight() {
        return this.mContentPadding.right;
    }

    @Px
    public int getContentPaddingTop() {
        return this.mContentPadding.top;
    }

    public float getMaxCardElevation() {
        return f1536i.d(this.f1539g);
    }

    public boolean getPreventCornerOverlap() {
        return this.f1538f;
    }

    public float getRadius() {
        return f1536i.b(this.f1539g);
    }

    public boolean getUseCompatPadding() {
        return this.f1537e;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        if (!(f1536i instanceof b)) {
            int mode = View.MeasureSpec.getMode(i2);
            if (mode == Integer.MIN_VALUE || mode == 1073741824) {
                i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f1536i.h(this.f1539g)), View.MeasureSpec.getSize(i2)), mode);
            }
            int mode2 = View.MeasureSpec.getMode(i3);
            if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                i3 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f1536i.g(this.f1539g)), View.MeasureSpec.getSize(i3)), mode2);
            }
            super.onMeasure(i2, i3);
            return;
        }
        super.onMeasure(i2, i3);
    }

    public void setCardBackgroundColor(@ColorInt int i2) {
        f1536i.a(this.f1539g, ColorStateList.valueOf(i2));
    }

    public void setCardElevation(float f2) {
        f1536i.b(this.f1539g, f2);
    }

    public void setContentPadding(@Px int i2, @Px int i3, @Px int i4, @Px int i5) {
        this.mContentPadding.set(i2, i3, i4, i5);
        f1536i.f(this.f1539g);
    }

    public void setMaxCardElevation(float f2) {
        f1536i.c(this.f1539g, f2);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i2) {
        this.mUserSetMinHeight = i2;
        super.setMinimumHeight(i2);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i2) {
        this.mUserSetMinWidth = i2;
        super.setMinimumWidth(i2);
    }

    @Override // android.view.View
    public void setPadding(int i2, int i3, int i4, int i5) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i2, int i3, int i4, int i5) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.f1538f) {
            this.f1538f = z;
            f1536i.i(this.f1539g);
        }
    }

    public void setRadius(float f2) {
        f1536i.a(this.f1539g, f2);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f1537e != z) {
            this.f1537e = z;
            f1536i.c(this.f1539g);
        }
    }

    /* loaded from: classes.dex */
    class a implements d {

        /* renamed from: a, reason: collision with root package name */
        private Drawable f1540a;

        a() {
        }

        @Override // androidx.cardview.widget.d
        public void a(Drawable drawable) {
            this.f1540a = drawable;
            CardView.this.setBackgroundDrawable(drawable);
        }

        @Override // androidx.cardview.widget.d
        public boolean b() {
            return CardView.this.getUseCompatPadding();
        }

        @Override // androidx.cardview.widget.d
        public Drawable c() {
            return this.f1540a;
        }

        @Override // androidx.cardview.widget.d
        public View d() {
            return CardView.this;
        }

        @Override // androidx.cardview.widget.d
        public boolean a() {
            return CardView.this.getPreventCornerOverlap();
        }

        @Override // androidx.cardview.widget.d
        public void a(int i2, int i3, int i4, int i5) {
            CardView.this.mShadowBounds.set(i2, i3, i4, i5);
            CardView cardView = CardView.this;
            Rect rect = cardView.mContentPadding;
            CardView.super.setPadding(i2 + rect.left, i3 + rect.top, i4 + rect.right, i5 + rect.bottom);
        }

        @Override // androidx.cardview.widget.d
        public void a(int i2, int i3) {
            CardView cardView = CardView.this;
            if (i2 > cardView.mUserSetMinWidth) {
                CardView.super.setMinimumWidth(i2);
            }
            CardView cardView2 = CardView.this;
            if (i3 > cardView2.mUserSetMinHeight) {
                CardView.super.setMinimumHeight(i3);
            }
        }
    }

    public CardView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, a.d.a.cardViewStyle);
    }

    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        f1536i.a(this.f1539g, colorStateList);
    }

    public CardView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        int color;
        ColorStateList valueOf;
        this.mContentPadding = new Rect();
        this.mShadowBounds = new Rect();
        this.f1539g = new a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.d.e.CardView, i2, a.d.d.CardView);
        if (obtainStyledAttributes.hasValue(a.d.e.CardView_cardBackgroundColor)) {
            valueOf = obtainStyledAttributes.getColorStateList(a.d.e.CardView_cardBackgroundColor);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(f1535h);
            int color2 = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color2, fArr);
            if (fArr[2] > 0.5f) {
                color = getResources().getColor(a.d.b.cardview_light_background);
            } else {
                color = getResources().getColor(a.d.b.cardview_dark_background);
            }
            valueOf = ColorStateList.valueOf(color);
        }
        ColorStateList colorStateList = valueOf;
        float dimension = obtainStyledAttributes.getDimension(a.d.e.CardView_cardCornerRadius, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(a.d.e.CardView_cardElevation, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(a.d.e.CardView_cardMaxElevation, 0.0f);
        this.f1537e = obtainStyledAttributes.getBoolean(a.d.e.CardView_cardUseCompatPadding, false);
        this.f1538f = obtainStyledAttributes.getBoolean(a.d.e.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(a.d.e.CardView_contentPadding, 0);
        this.mContentPadding.left = obtainStyledAttributes.getDimensionPixelSize(a.d.e.CardView_contentPaddingLeft, dimensionPixelSize);
        this.mContentPadding.top = obtainStyledAttributes.getDimensionPixelSize(a.d.e.CardView_contentPaddingTop, dimensionPixelSize);
        this.mContentPadding.right = obtainStyledAttributes.getDimensionPixelSize(a.d.e.CardView_contentPaddingRight, dimensionPixelSize);
        this.mContentPadding.bottom = obtainStyledAttributes.getDimensionPixelSize(a.d.e.CardView_contentPaddingBottom, dimensionPixelSize);
        float f2 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.mUserSetMinWidth = obtainStyledAttributes.getDimensionPixelSize(a.d.e.CardView_android_minWidth, 0);
        this.mUserSetMinHeight = obtainStyledAttributes.getDimensionPixelSize(a.d.e.CardView_android_minHeight, 0);
        obtainStyledAttributes.recycle();
        f1536i.a(this.f1539g, context, colorStateList, dimension, dimension2, f2);
    }
}

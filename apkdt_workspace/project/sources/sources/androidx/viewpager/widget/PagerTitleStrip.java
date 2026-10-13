package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.ViewPager;
import e.b.b.a.a.a.c;
import java.lang.ref.WeakReference;
import java.util.Locale;

@ViewPager.DecorView
/* loaded from: classes.dex */
public class PagerTitleStrip extends ViewGroup {
    private static final int[] m = {R.attr.textAppearance, R.attr.textSize, R.attr.textColor, R.attr.gravity};
    private static final int[] n = {R.attr.textAllCaps};

    /* renamed from: e, reason: collision with root package name */
    private int f3029e;

    /* renamed from: f, reason: collision with root package name */
    private int f3030f;

    /* renamed from: g, reason: collision with root package name */
    private int f3031g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f3032h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f3033i;

    /* renamed from: j, reason: collision with root package name */
    private final a f3034j;

    /* renamed from: k, reason: collision with root package name */
    private WeakReference<androidx.viewpager.widget.a> f3035k;

    /* renamed from: l, reason: collision with root package name */
    private int f3036l;
    TextView mCurrText;
    float mLastKnownPositionOffset;
    TextView mNextText;
    ViewPager mPager;
    TextView mPrevText;
    int mTextColor;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends DataSetObserver implements ViewPager.h, ViewPager.g {

        /* renamed from: a, reason: collision with root package name */
        private int f3037a;

        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void a(int i2, float f2, int i3) {
            if (f2 > 0.5f) {
                i2++;
            }
            PagerTitleStrip.this.updateTextPositions(i2, f2, false);
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void b(int i2) {
            if (this.f3037a == 0) {
                PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
                pagerTitleStrip.updateText(pagerTitleStrip.mPager.getCurrentItem(), PagerTitleStrip.this.mPager.getAdapter());
                float f2 = PagerTitleStrip.this.mLastKnownPositionOffset;
                if (f2 < 0.0f) {
                    f2 = 0.0f;
                }
                PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
                pagerTitleStrip2.updateTextPositions(pagerTitleStrip2.mPager.getCurrentItem(), f2, true);
            }
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
            pagerTitleStrip.updateText(pagerTitleStrip.mPager.getCurrentItem(), PagerTitleStrip.this.mPager.getAdapter());
            float f2 = PagerTitleStrip.this.mLastKnownPositionOffset;
            if (f2 < 0.0f) {
                f2 = 0.0f;
            }
            PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
            pagerTitleStrip2.updateTextPositions(pagerTitleStrip2.mPager.getCurrentItem(), f2, true);
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void a(int i2) {
            this.f3037a = i2;
        }

        @Override // androidx.viewpager.widget.ViewPager.g
        public void a(ViewPager viewPager, androidx.viewpager.widget.a aVar, androidx.viewpager.widget.a aVar2) {
            PagerTitleStrip.this.updateAdapter(aVar, aVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b extends SingleLineTransformationMethod {

        /* renamed from: e, reason: collision with root package name */
        private Locale f3039e;

        b(Context context) {
            this.f3039e = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            if (transformation != null) {
                return transformation.toString().toUpperCase(this.f3039e);
            }
            return null;
        }
    }

    public PagerTitleStrip(@NonNull Context context) {
        this(context, null);
    }

    private static void setSingleLineAllCaps(TextView textView) {
        textView.setTransformationMethod(new b(textView.getContext()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMinHeight() {
        Drawable background = getBackground();
        if (background != null) {
            return background.getIntrinsicHeight();
        }
        return 0;
    }

    public int getTextSpacing() {
        return this.f3030f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof ViewPager) {
            ViewPager viewPager = (ViewPager) parent;
            androidx.viewpager.widget.a adapter = viewPager.getAdapter();
            viewPager.setInternalPageChangeListener(this.f3034j);
            viewPager.addOnAdapterChangeListener(this.f3034j);
            this.mPager = viewPager;
            WeakReference<androidx.viewpager.widget.a> weakReference = this.f3035k;
            updateAdapter(weakReference != null ? weakReference.get() : null, adapter);
            return;
        }
        throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.mPager;
        if (viewPager != null) {
            updateAdapter(viewPager.getAdapter(), null);
            this.mPager.setInternalPageChangeListener(null);
            this.mPager.removeOnAdapterChangeListener(this.f3034j);
            this.mPager = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        if (this.mPager != null) {
            float f2 = this.mLastKnownPositionOffset;
            if (f2 < 0.0f) {
                f2 = 0.0f;
            }
            updateTextPositions(this.f3029e, f2, true);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        int max;
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i3, paddingTop, -2);
            int size = View.MeasureSpec.getSize(i2);
            int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i2, (int) (size * 0.2f), -2);
            this.mPrevText.measure(childMeasureSpec2, childMeasureSpec);
            this.mCurrText.measure(childMeasureSpec2, childMeasureSpec);
            this.mNextText.measure(childMeasureSpec2, childMeasureSpec);
            if (View.MeasureSpec.getMode(i3) == 1073741824) {
                max = View.MeasureSpec.getSize(i3);
            } else {
                max = Math.max(getMinHeight(), this.mCurrText.getMeasuredHeight() + paddingTop);
            }
            setMeasuredDimension(size, View.resolveSizeAndState(max, i3, this.mCurrText.getMeasuredState() << 16));
            return;
        }
        throw new IllegalStateException("Must measure with an exact width");
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f3032h) {
            return;
        }
        super.requestLayout();
    }

    public void setGravity(int i2) {
        this.f3031g = i2;
        requestLayout();
    }

    public void setNonPrimaryAlpha(@FloatRange(from = 0.0d, to = 1.0d) float f2) {
        this.f3036l = ((int) (f2 * 255.0f)) & 255;
        int i2 = (this.f3036l << 24) | (this.mTextColor & 16777215);
        this.mPrevText.setTextColor(i2);
        this.mNextText.setTextColor(i2);
    }

    public void setTextColor(@ColorInt int i2) {
        this.mTextColor = i2;
        this.mCurrText.setTextColor(i2);
        int i3 = (this.f3036l << 24) | (this.mTextColor & 16777215);
        this.mPrevText.setTextColor(i3);
        this.mNextText.setTextColor(i3);
    }

    public void setTextSize(int i2, float f2) {
        this.mPrevText.setTextSize(i2, f2);
        this.mCurrText.setTextSize(i2, f2);
        this.mNextText.setTextSize(i2, f2);
    }

    public void setTextSpacing(int i2) {
        this.f3030f = i2;
        requestLayout();
    }

    void updateAdapter(androidx.viewpager.widget.a aVar, androidx.viewpager.widget.a aVar2) {
        if (aVar != null) {
            aVar.c(this.f3034j);
            this.f3035k = null;
        }
        if (aVar2 != null) {
            aVar2.a((DataSetObserver) this.f3034j);
            this.f3035k = new WeakReference<>(aVar2);
        }
        ViewPager viewPager = this.mPager;
        if (viewPager != null) {
            this.f3029e = -1;
            this.mLastKnownPositionOffset = -1.0f;
            updateText(viewPager.getCurrentItem(), aVar2);
            requestLayout();
        }
    }

    void updateText(int i2, androidx.viewpager.widget.a aVar) {
        int a2 = aVar != null ? aVar.a() : 0;
        this.f3032h = true;
        CharSequence charSequence = null;
        this.mPrevText.setText((i2 < 1 || aVar == null) ? null : aVar.a(i2 - 1));
        this.mCurrText.setText((aVar == null || i2 >= a2) ? null : aVar.a(i2));
        int i3 = i2 + 1;
        if (i3 < a2 && aVar != null) {
            charSequence = aVar.a(i3);
        }
        this.mNextText.setText(charSequence);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), c.ALL_INT);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), c.ALL_INT);
        this.mPrevText.measure(makeMeasureSpec, makeMeasureSpec2);
        this.mCurrText.measure(makeMeasureSpec, makeMeasureSpec2);
        this.mNextText.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f3029e = i2;
        if (!this.f3033i) {
            updateTextPositions(i2, this.mLastKnownPositionOffset, false);
        }
        this.f3032h = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateTextPositions(int i2, float f2, boolean z) {
        int i3;
        int i4;
        int i5;
        int i6;
        if (i2 != this.f3029e) {
            updateText(i2, this.mPager.getAdapter());
        } else if (!z && f2 == this.mLastKnownPositionOffset) {
            return;
        }
        this.f3033i = true;
        int measuredWidth = this.mPrevText.getMeasuredWidth();
        int measuredWidth2 = this.mCurrText.getMeasuredWidth();
        int measuredWidth3 = this.mNextText.getMeasuredWidth();
        int i7 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i8 = paddingRight + i7;
        int i9 = (width - (paddingLeft + i7)) - i8;
        float f3 = 0.5f + f2;
        if (f3 > 1.0f) {
            f3 -= 1.0f;
        }
        int i10 = ((width - i8) - ((int) (i9 * f3))) - i7;
        int i11 = measuredWidth2 + i10;
        int baseline = this.mPrevText.getBaseline();
        int baseline2 = this.mCurrText.getBaseline();
        int baseline3 = this.mNextText.getBaseline();
        int max = Math.max(Math.max(baseline, baseline2), baseline3);
        int i12 = max - baseline;
        int i13 = max - baseline2;
        int i14 = max - baseline3;
        int max2 = Math.max(Math.max(this.mPrevText.getMeasuredHeight() + i12, this.mCurrText.getMeasuredHeight() + i13), this.mNextText.getMeasuredHeight() + i14);
        int i15 = this.f3031g & 112;
        if (i15 == 16) {
            i3 = (((height - paddingTop) - paddingBottom) - max2) / 2;
        } else {
            if (i15 != 80) {
                i4 = i12 + paddingTop;
                i5 = i13 + paddingTop;
                i6 = paddingTop + i14;
                TextView textView = this.mCurrText;
                textView.layout(i10, i5, i11, textView.getMeasuredHeight() + i5);
                int min = Math.min(paddingLeft, (i10 - this.f3030f) - measuredWidth);
                TextView textView2 = this.mPrevText;
                textView2.layout(min, i4, measuredWidth + min, textView2.getMeasuredHeight() + i4);
                int max3 = Math.max((width - paddingRight) - measuredWidth3, i11 + this.f3030f);
                TextView textView3 = this.mNextText;
                textView3.layout(max3, i6, max3 + measuredWidth3, textView3.getMeasuredHeight() + i6);
                this.mLastKnownPositionOffset = f2;
                this.f3033i = false;
            }
            i3 = (height - paddingBottom) - max2;
        }
        i4 = i12 + i3;
        i5 = i13 + i3;
        i6 = i3 + i14;
        TextView textView4 = this.mCurrText;
        textView4.layout(i10, i5, i11, textView4.getMeasuredHeight() + i5);
        int min2 = Math.min(paddingLeft, (i10 - this.f3030f) - measuredWidth);
        TextView textView22 = this.mPrevText;
        textView22.layout(min2, i4, measuredWidth + min2, textView22.getMeasuredHeight() + i4);
        int max32 = Math.max((width - paddingRight) - measuredWidth3, i11 + this.f3030f);
        TextView textView32 = this.mNextText;
        textView32.layout(max32, i6, max32 + measuredWidth3, textView32.getMeasuredHeight() + i6);
        this.mLastKnownPositionOffset = f2;
        this.f3033i = false;
    }

    public PagerTitleStrip(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3029e = -1;
        this.mLastKnownPositionOffset = -1.0f;
        this.f3034j = new a();
        TextView textView = new TextView(context);
        this.mPrevText = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.mCurrText = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.mNextText = textView3;
        addView(textView3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, m);
        boolean z = false;
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            TextViewCompat.d(this.mPrevText, resourceId);
            TextViewCompat.d(this.mCurrText, resourceId);
            TextViewCompat.d(this.mNextText, resourceId);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, dimensionPixelSize);
        }
        if (obtainStyledAttributes.hasValue(2)) {
            int color = obtainStyledAttributes.getColor(2, 0);
            this.mPrevText.setTextColor(color);
            this.mCurrText.setTextColor(color);
            this.mNextText.setTextColor(color);
        }
        this.f3031g = obtainStyledAttributes.getInteger(3, 80);
        obtainStyledAttributes.recycle();
        this.mTextColor = this.mCurrText.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(0.6f);
        this.mPrevText.setEllipsize(TextUtils.TruncateAt.END);
        this.mCurrText.setEllipsize(TextUtils.TruncateAt.END);
        this.mNextText.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, n);
            z = obtainStyledAttributes2.getBoolean(0, false);
            obtainStyledAttributes2.recycle();
        }
        if (z) {
            setSingleLineAllCaps(this.mPrevText);
            setSingleLineAllCaps(this.mCurrText);
            setSingleLineAllCaps(this.mNextText);
        } else {
            this.mPrevText.setSingleLine();
            this.mCurrText.setSingleLine();
            this.mNextText.setSingleLine();
        }
        this.f3030f = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }
}

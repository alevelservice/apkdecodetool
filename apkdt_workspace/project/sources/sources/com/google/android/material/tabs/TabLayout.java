package com.google.android.material.tabs;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.f0;
import androidx.core.view.ViewCompat;
import androidx.core.view.u;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.internal.k;
import com.google.android.material.internal.l;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

@ViewPager.DecorView
/* loaded from: classes.dex */
public class TabLayout extends HorizontalScrollView {

    @Dimension(unit = 0)
    static final int DEFAULT_GAP_TEXT_ICON = 8;

    @Dimension(unit = 0)
    static final int FIXED_WRAP_GUTTER_MIN = 16;
    public static final int GRAVITY_CENTER = 1;
    public static final int GRAVITY_FILL = 0;
    public static final int INDICATOR_GRAVITY_BOTTOM = 0;
    public static final int INDICATOR_GRAVITY_CENTER = 1;
    public static final int INDICATOR_GRAVITY_STRETCH = 3;
    public static final int INDICATOR_GRAVITY_TOP = 2;
    public static final int MODE_FIXED = 1;
    public static final int MODE_SCROLLABLE = 0;
    private static final a.i.m.f<g> w = new a.i.m.h(16);

    /* renamed from: e, reason: collision with root package name */
    private final ArrayList<g> f13926e;

    /* renamed from: f, reason: collision with root package name */
    private g f13927f;

    /* renamed from: g, reason: collision with root package name */
    private final RectF f13928g;

    /* renamed from: h, reason: collision with root package name */
    private final f f13929h;

    /* renamed from: i, reason: collision with root package name */
    private final int f13930i;
    boolean inlineLabel;

    /* renamed from: j, reason: collision with root package name */
    private final int f13931j;

    /* renamed from: k, reason: collision with root package name */
    private final int f13932k;

    /* renamed from: l, reason: collision with root package name */
    private int f13933l;
    private c m;
    int mode;
    private final ArrayList<c> n;
    private c o;
    private ValueAnimator p;
    private androidx.viewpager.widget.a q;
    private DataSetObserver r;
    private h s;
    private b t;
    final int tabBackgroundResId;
    int tabGravity;
    ColorStateList tabIconTint;
    PorterDuff.Mode tabIconTintMode;
    int tabIndicatorAnimationDuration;
    boolean tabIndicatorFullWidth;
    int tabIndicatorGravity;
    int tabMaxWidth;
    int tabPaddingBottom;
    int tabPaddingEnd;
    int tabPaddingStart;
    int tabPaddingTop;
    ColorStateList tabRippleColorStateList;

    @Nullable
    Drawable tabSelectedIndicator;
    int tabTextAppearance;
    ColorStateList tabTextColors;
    float tabTextMultiLineSize;
    float tabTextSize;
    private boolean u;
    boolean unboundedRipple;
    private final a.i.m.f<i> v;
    ViewPager viewPager;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface Mode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface TabGravity {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface TabIndicatorGravity {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    /* loaded from: classes.dex */
    public interface c<T extends g> {
        void a(T t);

        void b(T t);

        void c(T t);
    }

    /* loaded from: classes.dex */
    public interface d extends c<g> {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class e extends DataSetObserver {
        e() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabLayout.this.populateFromPagerAdapter();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabLayout.this.populateFromPagerAdapter();
        }
    }

    /* loaded from: classes.dex */
    public static class g {

        /* renamed from: a, reason: collision with root package name */
        private Drawable f13953a;

        /* renamed from: b, reason: collision with root package name */
        private CharSequence f13954b;

        /* renamed from: c, reason: collision with root package name */
        private CharSequence f13955c;

        /* renamed from: d, reason: collision with root package name */
        private int f13956d = -1;

        /* renamed from: e, reason: collision with root package name */
        private View f13957e;

        /* renamed from: f, reason: collision with root package name */
        public TabLayout f13958f;

        /* renamed from: g, reason: collision with root package name */
        public i f13959g;

        public int c() {
            return this.f13956d;
        }

        @Nullable
        public CharSequence d() {
            return this.f13954b;
        }

        public boolean e() {
            TabLayout tabLayout = this.f13958f;
            if (tabLayout != null) {
                return tabLayout.getSelectedTabPosition() == this.f13956d;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        void f() {
            this.f13958f = null;
            this.f13959g = null;
            this.f13953a = null;
            this.f13954b = null;
            this.f13955c = null;
            this.f13956d = -1;
            this.f13957e = null;
        }

        public void g() {
            TabLayout tabLayout = this.f13958f;
            if (tabLayout != null) {
                tabLayout.selectTab(this);
                return;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        void h() {
            i iVar = this.f13959g;
            if (iVar != null) {
                iVar.b();
            }
        }

        @Nullable
        public View a() {
            return this.f13957e;
        }

        @Nullable
        public Drawable b() {
            return this.f13953a;
        }

        @NonNull
        public g a(@Nullable View view) {
            this.f13957e = view;
            h();
            return this;
        }

        void b(int i2) {
            this.f13956d = i2;
        }

        @NonNull
        public g b(@Nullable CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f13955c) && !TextUtils.isEmpty(charSequence)) {
                this.f13959g.setContentDescription(charSequence);
            }
            this.f13954b = charSequence;
            h();
            return this;
        }

        @NonNull
        public g a(@LayoutRes int i2) {
            a(LayoutInflater.from(this.f13959g.getContext()).inflate(i2, (ViewGroup) this.f13959g, false));
            return this;
        }

        @NonNull
        public g a(@Nullable Drawable drawable) {
            this.f13953a = drawable;
            h();
            return this;
        }

        @NonNull
        public g a(@Nullable CharSequence charSequence) {
            this.f13955c = charSequence;
            h();
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class i extends LinearLayout {

        /* renamed from: e, reason: collision with root package name */
        private g f13963e;

        /* renamed from: f, reason: collision with root package name */
        private TextView f13964f;

        /* renamed from: g, reason: collision with root package name */
        private ImageView f13965g;

        /* renamed from: h, reason: collision with root package name */
        private View f13966h;

        /* renamed from: i, reason: collision with root package name */
        private TextView f13967i;

        /* renamed from: j, reason: collision with root package name */
        private ImageView f13968j;

        /* renamed from: k, reason: collision with root package name */
        @Nullable
        private Drawable f13969k;

        /* renamed from: l, reason: collision with root package name */
        private int f13970l;

        public i(Context context) {
            super(context);
            this.f13970l = 2;
            a(context);
            ViewCompat.b(this, TabLayout.this.tabPaddingStart, TabLayout.this.tabPaddingTop, TabLayout.this.tabPaddingEnd, TabLayout.this.tabPaddingBottom);
            setGravity(17);
            setOrientation(!TabLayout.this.inlineLabel ? 1 : 0);
            setClickable(true);
            ViewCompat.a(this, u.a(getContext(), 1002));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int d() {
            int i2 = 0;
            int i3 = 0;
            boolean z = false;
            for (View view : new View[]{this.f13964f, this.f13965g, this.f13966h}) {
                if (view != null && view.getVisibility() == 0) {
                    i3 = z ? Math.min(i3, view.getLeft()) : view.getLeft();
                    i2 = z ? Math.max(i2, view.getRight()) : view.getRight();
                    z = true;
                }
            }
            return i2 - i3;
        }

        final void b() {
            g gVar = this.f13963e;
            Drawable drawable = null;
            View a2 = gVar != null ? gVar.a() : null;
            if (a2 != null) {
                ViewParent parent = a2.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(a2);
                    }
                    addView(a2);
                }
                this.f13966h = a2;
                TextView textView = this.f13964f;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f13965g;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f13965g.setImageDrawable(null);
                }
                this.f13967i = (TextView) a2.findViewById(R.id.text1);
                TextView textView2 = this.f13967i;
                if (textView2 != null) {
                    this.f13970l = TextViewCompat.d(textView2);
                }
                this.f13968j = (ImageView) a2.findViewById(R.id.icon);
            } else {
                View view = this.f13966h;
                if (view != null) {
                    removeView(view);
                    this.f13966h = null;
                }
                this.f13967i = null;
                this.f13968j = null;
            }
            boolean z = false;
            if (this.f13966h == null) {
                if (this.f13965g == null) {
                    ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(e.i.b.c.h.design_layout_tab_icon, (ViewGroup) this, false);
                    addView(imageView2, 0);
                    this.f13965g = imageView2;
                }
                if (gVar != null && gVar.b() != null) {
                    drawable = androidx.core.graphics.drawable.a.i(gVar.b()).mutate();
                }
                if (drawable != null) {
                    androidx.core.graphics.drawable.a.a(drawable, TabLayout.this.tabIconTint);
                    PorterDuff.Mode mode = TabLayout.this.tabIconTintMode;
                    if (mode != null) {
                        androidx.core.graphics.drawable.a.a(drawable, mode);
                    }
                }
                if (this.f13964f == null) {
                    TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(e.i.b.c.h.design_layout_tab_text, (ViewGroup) this, false);
                    addView(textView3);
                    this.f13964f = textView3;
                    this.f13970l = TextViewCompat.d(this.f13964f);
                }
                TextViewCompat.d(this.f13964f, TabLayout.this.tabTextAppearance);
                ColorStateList colorStateList = TabLayout.this.tabTextColors;
                if (colorStateList != null) {
                    this.f13964f.setTextColor(colorStateList);
                }
                a(this.f13964f, this.f13965g);
            } else if (this.f13967i != null || this.f13968j != null) {
                a(this.f13967i, this.f13968j);
            }
            if (gVar != null && !TextUtils.isEmpty(gVar.f13955c)) {
                setContentDescription(gVar.f13955c);
            }
            if (gVar != null && gVar.e()) {
                z = true;
            }
            setSelected(z);
        }

        final void c() {
            setOrientation(!TabLayout.this.inlineLabel ? 1 : 0);
            if (this.f13967i == null && this.f13968j == null) {
                a(this.f13964f, this.f13965g);
            } else {
                a(this.f13967i, this.f13968j);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.f13969k;
            boolean z = false;
            if (drawable != null && drawable.isStateful()) {
                z = false | this.f13969k.setState(drawableState);
            }
            if (z) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(ActionBar.b.class.getName());
        }

        @Override // android.view.View
        @TargetApi(14)
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(ActionBar.b.class.getName());
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i2, int i3) {
            Layout layout;
            int size = View.MeasureSpec.getSize(i2);
            int mode = View.MeasureSpec.getMode(i2);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i2 = View.MeasureSpec.makeMeasureSpec(TabLayout.this.tabMaxWidth, e.b.b.a.a.a.c.ALL_INT);
            }
            super.onMeasure(i2, i3);
            if (this.f13964f != null) {
                float f2 = TabLayout.this.tabTextSize;
                int i4 = this.f13970l;
                ImageView imageView = this.f13965g;
                boolean z = true;
                if (imageView == null || imageView.getVisibility() != 0) {
                    TextView textView = this.f13964f;
                    if (textView != null && textView.getLineCount() > 1) {
                        f2 = TabLayout.this.tabTextMultiLineSize;
                    }
                } else {
                    i4 = 1;
                }
                float textSize = this.f13964f.getTextSize();
                int lineCount = this.f13964f.getLineCount();
                int d2 = TextViewCompat.d(this.f13964f);
                if (f2 != textSize || (d2 >= 0 && i4 != d2)) {
                    if (TabLayout.this.mode == 1 && f2 > textSize && lineCount == 1 && ((layout = this.f13964f.getLayout()) == null || a(layout, 0, f2) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) {
                        z = false;
                    }
                    if (z) {
                        this.f13964f.setTextSize(0, f2);
                        this.f13964f.setMaxLines(i4);
                        super.onMeasure(i2, i3);
                    }
                }
            }
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean performClick = super.performClick();
            if (this.f13963e == null) {
                return performClick;
            }
            if (!performClick) {
                playSoundEffect(0);
            }
            this.f13963e.g();
            return true;
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z && Build.VERSION.SDK_INT < 16) {
                sendAccessibilityEvent(4);
            }
            TextView textView = this.f13964f;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.f13965g;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.f13966h;
            if (view != null) {
                view.setSelected(z);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v3, types: [android.graphics.drawable.RippleDrawable] */
        /* JADX WARN: Type inference failed for: r2v3, types: [android.graphics.drawable.LayerDrawable] */
        public void a(Context context) {
            int i2 = TabLayout.this.tabBackgroundResId;
            if (i2 != 0) {
                this.f13969k = a.a.k.a.a.c(context, i2);
                Drawable drawable = this.f13969k;
                if (drawable != null && drawable.isStateful()) {
                    this.f13969k.setState(getDrawableState());
                }
            } else {
                this.f13969k = null;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(0);
            if (TabLayout.this.tabRippleColorStateList != null) {
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setCornerRadius(1.0E-5f);
                gradientDrawable2.setColor(-1);
                ColorStateList a2 = e.i.b.c.r.a.a(TabLayout.this.tabRippleColorStateList);
                if (Build.VERSION.SDK_INT >= 21) {
                    if (TabLayout.this.unboundedRipple) {
                        gradientDrawable = null;
                    }
                    gradientDrawable = new RippleDrawable(a2, gradientDrawable, TabLayout.this.unboundedRipple ? null : gradientDrawable2);
                } else {
                    Drawable i3 = androidx.core.graphics.drawable.a.i(gradientDrawable2);
                    androidx.core.graphics.drawable.a.a(i3, a2);
                    gradientDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, i3});
                }
            }
            ViewCompat.a(this, gradientDrawable);
            TabLayout.this.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Canvas canvas) {
            Drawable drawable = this.f13969k;
            if (drawable != null) {
                drawable.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.f13969k.draw(canvas);
            }
        }

        void a(@Nullable g gVar) {
            if (gVar != this.f13963e) {
                this.f13963e = gVar;
                b();
            }
        }

        void a() {
            a((g) null);
            setSelected(false);
        }

        private void a(@Nullable TextView textView, @Nullable ImageView imageView) {
            g gVar = this.f13963e;
            Drawable mutate = (gVar == null || gVar.b() == null) ? null : androidx.core.graphics.drawable.a.i(this.f13963e.b()).mutate();
            g gVar2 = this.f13963e;
            CharSequence d2 = gVar2 != null ? gVar2.d() : null;
            if (imageView != null) {
                if (mutate != null) {
                    imageView.setImageDrawable(mutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(d2);
            if (textView != null) {
                if (z) {
                    textView.setText(d2);
                    textView.setVisibility(0);
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int dpToPx = (z && imageView.getVisibility() == 0) ? TabLayout.this.dpToPx(8) : 0;
                if (TabLayout.this.inlineLabel) {
                    if (dpToPx != androidx.core.view.h.a(marginLayoutParams)) {
                        androidx.core.view.h.a(marginLayoutParams, dpToPx);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (dpToPx != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = dpToPx;
                    androidx.core.view.h.a(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            g gVar3 = this.f13963e;
            CharSequence charSequence = gVar3 != null ? gVar3.f13955c : null;
            if (z) {
                charSequence = null;
            }
            f0.a(this, charSequence);
        }

        private float a(Layout layout, int i2, float f2) {
            return layout.getLineWidth(i2) * (f2 / layout.getPaint().getTextSize());
        }
    }

    /* loaded from: classes.dex */
    public static class j implements d {

        /* renamed from: a, reason: collision with root package name */
        private final ViewPager f13971a;

        public j(ViewPager viewPager) {
            this.f13971a = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void a(g gVar) {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void b(g gVar) {
            this.f13971a.setCurrentItem(gVar.c());
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void c(g gVar) {
        }
    }

    public TabLayout(Context context) {
        this(context, null);
    }

    private void a(@NonNull TabItem tabItem) {
        g newTab = newTab();
        CharSequence charSequence = tabItem.text;
        if (charSequence != null) {
            newTab.b(charSequence);
        }
        Drawable drawable = tabItem.icon;
        if (drawable != null) {
            newTab.a(drawable);
        }
        int i2 = tabItem.customLayout;
        if (i2 != 0) {
            newTab.a(i2);
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            newTab.a(tabItem.getContentDescription());
        }
        addTab(newTab);
    }

    private i b(@NonNull g gVar) {
        a.i.m.f<i> fVar = this.v;
        i a2 = fVar != null ? fVar.a() : null;
        if (a2 == null) {
            a2 = new i(getContext());
        }
        a2.a(gVar);
        a2.setFocusable(true);
        a2.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(gVar.f13955c)) {
            a2.setContentDescription(gVar.f13954b);
        } else {
            a2.setContentDescription(gVar.f13955c);
        }
        return a2;
    }

    private void c() {
        if (this.p == null) {
            this.p = new ValueAnimator();
            this.p.setInterpolator(e.i.b.c.l.a.f17897b);
            this.p.setDuration(this.tabIndicatorAnimationDuration);
            this.p.addUpdateListener(new a());
        }
    }

    private void d() {
        int size = this.f13926e.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f13926e.get(i2).h();
        }
    }

    private void e(@NonNull g gVar) {
        for (int size = this.n.size() - 1; size >= 0; size--) {
            this.n.get(size).c(gVar);
        }
    }

    @Dimension(unit = 0)
    private int getDefaultHeight() {
        int size = this.f13926e.size();
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                g gVar = this.f13926e.get(i2);
                if (gVar != null && gVar.b() != null && !TextUtils.isEmpty(gVar.d())) {
                    z = true;
                    break;
                }
                i2++;
            } else {
                break;
            }
        }
        return (!z || this.inlineLabel) ? 48 : 72;
    }

    private int getTabMinWidth() {
        int i2 = this.f13930i;
        if (i2 != -1) {
            return i2;
        }
        if (this.mode == 0) {
            return this.f13932k;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f13929h.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void setSelectedTabView(int i2) {
        int childCount = this.f13929h.getChildCount();
        if (i2 < childCount) {
            int i3 = 0;
            while (i3 < childCount) {
                View childAt = this.f13929h.getChildAt(i3);
                boolean z = true;
                childAt.setSelected(i3 == i2);
                if (i3 != i2) {
                    z = false;
                }
                childAt.setActivated(z);
                i3++;
            }
        }
    }

    public void addOnTabSelectedListener(@NonNull c cVar) {
        if (this.n.contains(cVar)) {
            return;
        }
        this.n.add(cVar);
    }

    public void addTab(@NonNull g gVar) {
        addTab(gVar, this.f13926e.isEmpty());
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        a(view);
    }

    public void clearOnTabSelectedListeners() {
        this.n.clear();
    }

    protected g createTabFromPool() {
        g a2 = w.a();
        return a2 == null ? new g() : a2;
    }

    @Dimension(unit = 1)
    int dpToPx(@Dimension(unit = 0) int i2) {
        return Math.round(getResources().getDisplayMetrics().density * i2);
    }

    public int getSelectedTabPosition() {
        g gVar = this.f13927f;
        if (gVar != null) {
            return gVar.c();
        }
        return -1;
    }

    @Nullable
    public g getTabAt(int i2) {
        if (i2 < 0 || i2 >= getTabCount()) {
            return null;
        }
        return this.f13926e.get(i2);
    }

    public int getTabCount() {
        return this.f13926e.size();
    }

    public int getTabGravity() {
        return this.tabGravity;
    }

    @Nullable
    public ColorStateList getTabIconTint() {
        return this.tabIconTint;
    }

    public int getTabIndicatorGravity() {
        return this.tabIndicatorGravity;
    }

    int getTabMaxWidth() {
        return this.tabMaxWidth;
    }

    public int getTabMode() {
        return this.mode;
    }

    @Nullable
    public ColorStateList getTabRippleColor() {
        return this.tabRippleColorStateList;
    }

    @Nullable
    public Drawable getTabSelectedIndicator() {
        return this.tabSelectedIndicator;
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.tabTextColors;
    }

    public boolean hasUnboundedRipple() {
        return this.unboundedRipple;
    }

    public boolean isInlineLabel() {
        return this.inlineLabel;
    }

    public boolean isTabIndicatorFullWidth() {
        return this.tabIndicatorFullWidth;
    }

    @NonNull
    public g newTab() {
        g createTabFromPool = createTabFromPool();
        createTabFromPool.f13958f = this;
        createTabFromPool.f13959g = b(createTabFromPool);
        return createTabFromPool;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.viewPager == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                a((ViewPager) parent, true, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.u) {
            setupWithViewPager(null);
            this.u = false;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        for (int i2 = 0; i2 < this.f13929h.getChildCount(); i2++) {
            View childAt = this.f13929h.getChildAt(i2);
            if (childAt instanceof i) {
                ((i) childAt).a(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        int dpToPx = dpToPx(getDefaultHeight()) + getPaddingTop() + getPaddingBottom();
        int mode = View.MeasureSpec.getMode(i3);
        if (mode == Integer.MIN_VALUE) {
            i3 = View.MeasureSpec.makeMeasureSpec(Math.min(dpToPx, View.MeasureSpec.getSize(i3)), 1073741824);
        } else if (mode == 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(dpToPx, 1073741824);
        }
        int size = View.MeasureSpec.getSize(i2);
        if (View.MeasureSpec.getMode(i2) != 0) {
            int i4 = this.f13931j;
            if (i4 <= 0) {
                i4 = size - dpToPx(56);
            }
            this.tabMaxWidth = i4;
        }
        super.onMeasure(i2, i3);
        if (getChildCount() == 1) {
            boolean z = false;
            View childAt = getChildAt(0);
            int i5 = this.mode;
            if (i5 == 0 ? childAt.getMeasuredWidth() < getMeasuredWidth() : !(i5 != 1 || childAt.getMeasuredWidth() == getMeasuredWidth())) {
                z = true;
            }
            if (z) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), HorizontalScrollView.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
            }
        }
    }

    void populateFromPagerAdapter() {
        int currentItem;
        removeAllTabs();
        androidx.viewpager.widget.a aVar = this.q;
        if (aVar != null) {
            int a2 = aVar.a();
            for (int i2 = 0; i2 < a2; i2++) {
                g newTab = newTab();
                newTab.b(this.q.a(i2));
                addTab(newTab, false);
            }
            ViewPager viewPager = this.viewPager;
            if (viewPager == null || a2 <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            selectTab(getTabAt(currentItem));
        }
    }

    protected boolean releaseFromTabPool(g gVar) {
        return w.a(gVar);
    }

    public void removeAllTabs() {
        for (int childCount = this.f13929h.getChildCount() - 1; childCount >= 0; childCount--) {
            b(childCount);
        }
        Iterator<g> it = this.f13926e.iterator();
        while (it.hasNext()) {
            g next = it.next();
            it.remove();
            next.f();
            releaseFromTabPool(next);
        }
        this.f13927f = null;
    }

    public void removeOnTabSelectedListener(@NonNull c cVar) {
        this.n.remove(cVar);
    }

    public void removeTab(g gVar) {
        if (gVar.f13958f == this) {
            removeTabAt(gVar.c());
            return;
        }
        throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
    }

    public void removeTabAt(int i2) {
        g gVar = this.f13927f;
        int c2 = gVar != null ? gVar.c() : 0;
        b(i2);
        g remove = this.f13926e.remove(i2);
        if (remove != null) {
            remove.f();
            releaseFromTabPool(remove);
        }
        int size = this.f13926e.size();
        for (int i3 = i2; i3 < size; i3++) {
            this.f13926e.get(i3).b(i3);
        }
        if (c2 == i2) {
            selectTab(this.f13926e.isEmpty() ? null : this.f13926e.get(Math.max(0, i2 - 1)));
        }
    }

    void selectTab(g gVar) {
        selectTab(gVar, true);
    }

    public void setInlineLabel(boolean z) {
        if (this.inlineLabel != z) {
            this.inlineLabel = z;
            for (int i2 = 0; i2 < this.f13929h.getChildCount(); i2++) {
                View childAt = this.f13929h.getChildAt(i2);
                if (childAt instanceof i) {
                    ((i) childAt).c();
                }
            }
            a();
        }
    }

    public void setInlineLabelResource(@BoolRes int i2) {
        setInlineLabel(getResources().getBoolean(i2));
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable c cVar) {
        c cVar2 = this.m;
        if (cVar2 != null) {
            removeOnTabSelectedListener(cVar2);
        }
        this.m = cVar;
        if (cVar != null) {
            addOnTabSelectedListener(cVar);
        }
    }

    void setPagerAdapter(@Nullable androidx.viewpager.widget.a aVar, boolean z) {
        DataSetObserver dataSetObserver;
        androidx.viewpager.widget.a aVar2 = this.q;
        if (aVar2 != null && (dataSetObserver = this.r) != null) {
            aVar2.c(dataSetObserver);
        }
        this.q = aVar;
        if (z && aVar != null) {
            if (this.r == null) {
                this.r = new e();
            }
            aVar.a(this.r);
        }
        populateFromPagerAdapter();
    }

    void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        c();
        this.p.addListener(animatorListener);
    }

    public void setScrollPosition(int i2, float f2, boolean z) {
        setScrollPosition(i2, f2, z, true);
    }

    public void setSelectedTabIndicator(@Nullable Drawable drawable) {
        if (this.tabSelectedIndicator != drawable) {
            this.tabSelectedIndicator = drawable;
            ViewCompat.H(this.f13929h);
        }
    }

    public void setSelectedTabIndicatorColor(@ColorInt int i2) {
        this.f13929h.a(i2);
    }

    public void setSelectedTabIndicatorGravity(int i2) {
        if (this.tabIndicatorGravity != i2) {
            this.tabIndicatorGravity = i2;
            ViewCompat.H(this.f13929h);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i2) {
        this.f13929h.b(i2);
    }

    public void setTabGravity(int i2) {
        if (this.tabGravity != i2) {
            this.tabGravity = i2;
            a();
        }
    }

    public void setTabIconTint(@Nullable ColorStateList colorStateList) {
        if (this.tabIconTint != colorStateList) {
            this.tabIconTint = colorStateList;
            d();
        }
    }

    public void setTabIconTintResource(@ColorRes int i2) {
        setTabIconTint(a.a.k.a.a.b(getContext(), i2));
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.tabIndicatorFullWidth = z;
        ViewCompat.H(this.f13929h);
    }

    public void setTabMode(int i2) {
        if (i2 != this.mode) {
            this.mode = i2;
            a();
        }
    }

    public void setTabRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.tabRippleColorStateList != colorStateList) {
            this.tabRippleColorStateList = colorStateList;
            for (int i2 = 0; i2 < this.f13929h.getChildCount(); i2++) {
                View childAt = this.f13929h.getChildAt(i2);
                if (childAt instanceof i) {
                    ((i) childAt).a(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(@ColorRes int i2) {
        setTabRippleColor(a.a.k.a.a.b(getContext(), i2));
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.tabTextColors != colorStateList) {
            this.tabTextColors = colorStateList;
            d();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable androidx.viewpager.widget.a aVar) {
        setPagerAdapter(aVar, false);
    }

    public void setUnboundedRipple(boolean z) {
        if (this.unboundedRipple != z) {
            this.unboundedRipple = z;
            for (int i2 = 0; i2 < this.f13929h.getChildCount(); i2++) {
                View childAt = this.f13929h.getChildAt(i2);
                if (childAt instanceof i) {
                    ((i) childAt).a(getContext());
                }
            }
        }
    }

    public void setUnboundedRippleResource(@BoolRes int i2) {
        setUnboundedRipple(getResources().getBoolean(i2));
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        setupWithViewPager(viewPager, true);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    void updateTabViews(boolean z) {
        for (int i2 = 0; i2 < this.f13929h.getChildCount(); i2++) {
            View childAt = this.f13929h.getChildAt(i2);
            childAt.setMinimumWidth(getTabMinWidth());
            a((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z) {
                childAt.requestLayout();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b implements ViewPager.g {

        /* renamed from: a, reason: collision with root package name */
        private boolean f13935a;

        b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.g
        public void a(@NonNull ViewPager viewPager, @Nullable androidx.viewpager.widget.a aVar, @Nullable androidx.viewpager.widget.a aVar2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.viewPager == viewPager) {
                tabLayout.setPagerAdapter(aVar2, this.f13935a);
            }
        }

        void a(boolean z) {
            this.f13935a = z;
        }
    }

    /* loaded from: classes.dex */
    public static class h implements ViewPager.h {

        /* renamed from: a, reason: collision with root package name */
        private final WeakReference<TabLayout> f13960a;

        /* renamed from: b, reason: collision with root package name */
        private int f13961b;

        /* renamed from: c, reason: collision with root package name */
        private int f13962c;

        public h(TabLayout tabLayout) {
            this.f13960a = new WeakReference<>(tabLayout);
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void a(int i2) {
            this.f13961b = this.f13962c;
            this.f13962c = i2;
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void b(int i2) {
            TabLayout tabLayout = this.f13960a.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i2 || i2 >= tabLayout.getTabCount()) {
                return;
            }
            int i3 = this.f13962c;
            tabLayout.selectTab(tabLayout.getTabAt(i2), i3 == 0 || (i3 == 2 && this.f13961b == 0));
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void a(int i2, float f2, int i3) {
            TabLayout tabLayout = this.f13960a.get();
            if (tabLayout != null) {
                tabLayout.setScrollPosition(i2, f2, this.f13962c != 2 || this.f13961b == 1, (this.f13962c == 2 && this.f13961b == 0) ? false : true);
            }
        }

        void a() {
            this.f13962c = 0;
            this.f13961b = 0;
        }
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, e.i.b.c.b.tabStyle);
    }

    public void addTab(@NonNull g gVar, int i2) {
        addTab(gVar, i2, this.f13926e.isEmpty());
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i2) {
        a(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    void selectTab(g gVar, boolean z) {
        g gVar2 = this.f13927f;
        if (gVar2 == gVar) {
            if (gVar2 != null) {
                c(gVar);
                a(gVar.c());
                return;
            }
            return;
        }
        int c2 = gVar != null ? gVar.c() : -1;
        if (z) {
            if ((gVar2 == null || gVar2.c() == -1) && c2 != -1) {
                setScrollPosition(c2, 0.0f, true);
            } else {
                a(c2);
            }
            if (c2 != -1) {
                setSelectedTabView(c2);
            }
        }
        this.f13927f = gVar;
        if (gVar2 != null) {
            e(gVar2);
        }
        if (gVar != null) {
            d(gVar);
        }
    }

    void setScrollPosition(int i2, float f2, boolean z, boolean z2) {
        int round = Math.round(i2 + f2);
        if (round < 0 || round >= this.f13929h.getChildCount()) {
            return;
        }
        if (z2) {
            this.f13929h.a(i2, f2);
        }
        ValueAnimator valueAnimator = this.p;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.p.cancel();
        }
        scrollTo(a(i2, f2), 0);
        if (z) {
            setSelectedTabView(round);
        }
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager, boolean z) {
        a(viewPager, z, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class f extends LinearLayout {

        /* renamed from: e, reason: collision with root package name */
        private int f13938e;

        /* renamed from: f, reason: collision with root package name */
        private final Paint f13939f;

        /* renamed from: g, reason: collision with root package name */
        private final GradientDrawable f13940g;

        /* renamed from: h, reason: collision with root package name */
        int f13941h;

        /* renamed from: i, reason: collision with root package name */
        float f13942i;

        /* renamed from: j, reason: collision with root package name */
        private int f13943j;

        /* renamed from: k, reason: collision with root package name */
        private int f13944k;

        /* renamed from: l, reason: collision with root package name */
        private int f13945l;
        private ValueAnimator m;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a implements ValueAnimator.AnimatorUpdateListener {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ int f13946e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ int f13947f;

            /* renamed from: g, reason: collision with root package name */
            final /* synthetic */ int f13948g;

            /* renamed from: h, reason: collision with root package name */
            final /* synthetic */ int f13949h;

            a(int i2, int i3, int i4, int i5) {
                this.f13946e = i2;
                this.f13947f = i3;
                this.f13948g = i4;
                this.f13949h = i5;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float animatedFraction = valueAnimator.getAnimatedFraction();
                f.this.b(e.i.b.c.l.a.a(this.f13946e, this.f13947f, animatedFraction), e.i.b.c.l.a.a(this.f13948g, this.f13949h, animatedFraction));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class b extends AnimatorListenerAdapter {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ int f13951e;

            b(int i2) {
                this.f13951e = i2;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                f fVar = f.this;
                fVar.f13941h = this.f13951e;
                fVar.f13942i = 0.0f;
            }
        }

        f(Context context) {
            super(context);
            this.f13941h = -1;
            this.f13943j = -1;
            this.f13944k = -1;
            this.f13945l = -1;
            setWillNotDraw(false);
            this.f13939f = new Paint();
            this.f13940g = new GradientDrawable();
        }

        void a(int i2) {
            if (this.f13939f.getColor() != i2) {
                this.f13939f.setColor(i2);
                ViewCompat.H(this);
            }
        }

        void b(int i2) {
            if (this.f13938e != i2) {
                this.f13938e = i2;
                ViewCompat.H(this);
            }
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            Drawable drawable = TabLayout.this.tabSelectedIndicator;
            int i2 = 0;
            int intrinsicHeight = drawable != null ? drawable.getIntrinsicHeight() : 0;
            int i3 = this.f13938e;
            if (i3 >= 0) {
                intrinsicHeight = i3;
            }
            int i4 = TabLayout.this.tabIndicatorGravity;
            if (i4 == 0) {
                i2 = getHeight() - intrinsicHeight;
                intrinsicHeight = getHeight();
            } else if (i4 == 1) {
                i2 = (getHeight() - intrinsicHeight) / 2;
                intrinsicHeight = (getHeight() + intrinsicHeight) / 2;
            } else if (i4 != 2) {
                intrinsicHeight = i4 != 3 ? 0 : getHeight();
            }
            int i5 = this.f13944k;
            if (i5 >= 0 && this.f13945l > i5) {
                Drawable drawable2 = TabLayout.this.tabSelectedIndicator;
                if (drawable2 == null) {
                    drawable2 = this.f13940g;
                }
                Drawable i6 = androidx.core.graphics.drawable.a.i(drawable2);
                i6.setBounds(this.f13944k, i2, this.f13945l, intrinsicHeight);
                Paint paint = this.f13939f;
                if (paint != null) {
                    if (Build.VERSION.SDK_INT == 21) {
                        i6.setColorFilter(paint.getColor(), PorterDuff.Mode.SRC_IN);
                    } else {
                        androidx.core.graphics.drawable.a.b(i6, paint.getColor());
                    }
                }
                i6.draw(canvas);
            }
            super.draw(canvas);
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
            super.onLayout(z, i2, i3, i4, i5);
            ValueAnimator valueAnimator = this.m;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.m.cancel();
                a(this.f13941h, Math.round((1.0f - this.m.getAnimatedFraction()) * ((float) this.m.getDuration())));
                return;
            }
            b();
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
            if (View.MeasureSpec.getMode(i2) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            boolean z = true;
            if (tabLayout.mode == 1 && tabLayout.tabGravity == 1) {
                int childCount = getChildCount();
                int i4 = 0;
                for (int i5 = 0; i5 < childCount; i5++) {
                    View childAt = getChildAt(i5);
                    if (childAt.getVisibility() == 0) {
                        i4 = Math.max(i4, childAt.getMeasuredWidth());
                    }
                }
                if (i4 <= 0) {
                    return;
                }
                if (i4 * childCount <= getMeasuredWidth() - (TabLayout.this.dpToPx(16) * 2)) {
                    boolean z2 = false;
                    for (int i6 = 0; i6 < childCount; i6++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i6).getLayoutParams();
                        if (layoutParams.width != i4 || layoutParams.weight != 0.0f) {
                            layoutParams.width = i4;
                            layoutParams.weight = 0.0f;
                            z2 = true;
                        }
                    }
                    z = z2;
                } else {
                    TabLayout tabLayout2 = TabLayout.this;
                    tabLayout2.tabGravity = 0;
                    tabLayout2.updateTabViews(false);
                }
                if (z) {
                    super.onMeasure(i2, i3);
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onRtlPropertiesChanged(int i2) {
            super.onRtlPropertiesChanged(i2);
            if (Build.VERSION.SDK_INT >= 23 || this.f13943j == i2) {
                return;
            }
            requestLayout();
            this.f13943j = i2;
        }

        private void b() {
            int i2;
            int i3;
            View childAt = getChildAt(this.f13941h);
            if (childAt == null || childAt.getWidth() <= 0) {
                i2 = -1;
                i3 = -1;
            } else {
                i2 = childAt.getLeft();
                i3 = childAt.getRight();
                TabLayout tabLayout = TabLayout.this;
                if (!tabLayout.tabIndicatorFullWidth && (childAt instanceof i)) {
                    a((i) childAt, tabLayout.f13928g);
                    i2 = (int) TabLayout.this.f13928g.left;
                    i3 = (int) TabLayout.this.f13928g.right;
                }
                if (this.f13942i > 0.0f && this.f13941h < getChildCount() - 1) {
                    View childAt2 = getChildAt(this.f13941h + 1);
                    int left = childAt2.getLeft();
                    int right = childAt2.getRight();
                    TabLayout tabLayout2 = TabLayout.this;
                    if (!tabLayout2.tabIndicatorFullWidth && (childAt2 instanceof i)) {
                        a((i) childAt2, tabLayout2.f13928g);
                        left = (int) TabLayout.this.f13928g.left;
                        right = (int) TabLayout.this.f13928g.right;
                    }
                    float f2 = this.f13942i;
                    i2 = (int) ((left * f2) + ((1.0f - f2) * i2));
                    i3 = (int) ((right * f2) + ((1.0f - f2) * i3));
                }
            }
            b(i2, i3);
        }

        boolean a() {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                if (getChildAt(i2).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        void a(int i2, float f2) {
            ValueAnimator valueAnimator = this.m;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.m.cancel();
            }
            this.f13941h = i2;
            this.f13942i = f2;
            b();
        }

        void a(int i2, int i3) {
            ValueAnimator valueAnimator = this.m;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.m.cancel();
            }
            View childAt = getChildAt(i2);
            if (childAt == null) {
                b();
                return;
            }
            int left = childAt.getLeft();
            int right = childAt.getRight();
            TabLayout tabLayout = TabLayout.this;
            if (!tabLayout.tabIndicatorFullWidth && (childAt instanceof i)) {
                a((i) childAt, tabLayout.f13928g);
                left = (int) TabLayout.this.f13928g.left;
                right = (int) TabLayout.this.f13928g.right;
            }
            int i4 = left;
            int i5 = right;
            int i6 = this.f13944k;
            int i7 = this.f13945l;
            if (i6 == i4 && i7 == i5) {
                return;
            }
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.m = valueAnimator2;
            valueAnimator2.setInterpolator(e.i.b.c.l.a.f17897b);
            valueAnimator2.setDuration(i3);
            valueAnimator2.setFloatValues(0.0f, 1.0f);
            valueAnimator2.addUpdateListener(new a(i6, i4, i7, i5));
            valueAnimator2.addListener(new b(i2));
            valueAnimator2.start();
        }

        void b(int i2, int i3) {
            if (i2 == this.f13944k && i3 == this.f13945l) {
                return;
            }
            this.f13944k = i2;
            this.f13945l = i3;
            ViewCompat.H(this);
        }

        private void a(i iVar, RectF rectF) {
            int d2 = iVar.d();
            if (d2 < TabLayout.this.dpToPx(24)) {
                d2 = TabLayout.this.dpToPx(24);
            }
            int left = (iVar.getLeft() + iVar.getRight()) / 2;
            int i2 = d2 / 2;
            rectF.set(left - i2, 0.0f, left + i2, 0.0f);
        }
    }

    public TabLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13926e = new ArrayList<>();
        this.f13928g = new RectF();
        this.tabMaxWidth = Integer.MAX_VALUE;
        this.n = new ArrayList<>();
        this.v = new a.i.m.g(12);
        setHorizontalScrollBarEnabled(false);
        this.f13929h = new f(context);
        super.addView(this.f13929h, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray c2 = k.c(context, attributeSet, e.i.b.c.k.TabLayout, i2, e.i.b.c.j.Widget_Design_TabLayout, e.i.b.c.k.TabLayout_tabTextAppearance);
        this.f13929h.b(c2.getDimensionPixelSize(e.i.b.c.k.TabLayout_tabIndicatorHeight, -1));
        this.f13929h.a(c2.getColor(e.i.b.c.k.TabLayout_tabIndicatorColor, 0));
        setSelectedTabIndicator(e.i.b.c.q.a.b(context, c2, e.i.b.c.k.TabLayout_tabIndicator));
        setSelectedTabIndicatorGravity(c2.getInt(e.i.b.c.k.TabLayout_tabIndicatorGravity, 0));
        setTabIndicatorFullWidth(c2.getBoolean(e.i.b.c.k.TabLayout_tabIndicatorFullWidth, true));
        int dimensionPixelSize = c2.getDimensionPixelSize(e.i.b.c.k.TabLayout_tabPadding, 0);
        this.tabPaddingBottom = dimensionPixelSize;
        this.tabPaddingEnd = dimensionPixelSize;
        this.tabPaddingTop = dimensionPixelSize;
        this.tabPaddingStart = dimensionPixelSize;
        this.tabPaddingStart = c2.getDimensionPixelSize(e.i.b.c.k.TabLayout_tabPaddingStart, this.tabPaddingStart);
        this.tabPaddingTop = c2.getDimensionPixelSize(e.i.b.c.k.TabLayout_tabPaddingTop, this.tabPaddingTop);
        this.tabPaddingEnd = c2.getDimensionPixelSize(e.i.b.c.k.TabLayout_tabPaddingEnd, this.tabPaddingEnd);
        this.tabPaddingBottom = c2.getDimensionPixelSize(e.i.b.c.k.TabLayout_tabPaddingBottom, this.tabPaddingBottom);
        this.tabTextAppearance = c2.getResourceId(e.i.b.c.k.TabLayout_tabTextAppearance, e.i.b.c.j.TextAppearance_Design_Tab);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(this.tabTextAppearance, a.a.j.TextAppearance);
        try {
            this.tabTextSize = obtainStyledAttributes.getDimensionPixelSize(a.a.j.TextAppearance_android_textSize, 0);
            this.tabTextColors = e.i.b.c.q.a.a(context, obtainStyledAttributes, a.a.j.TextAppearance_android_textColor);
            obtainStyledAttributes.recycle();
            if (c2.hasValue(e.i.b.c.k.TabLayout_tabTextColor)) {
                this.tabTextColors = e.i.b.c.q.a.a(context, c2, e.i.b.c.k.TabLayout_tabTextColor);
            }
            if (c2.hasValue(e.i.b.c.k.TabLayout_tabSelectedTextColor)) {
                this.tabTextColors = a(this.tabTextColors.getDefaultColor(), c2.getColor(e.i.b.c.k.TabLayout_tabSelectedTextColor, 0));
            }
            this.tabIconTint = e.i.b.c.q.a.a(context, c2, e.i.b.c.k.TabLayout_tabIconTint);
            this.tabIconTintMode = l.a(c2.getInt(e.i.b.c.k.TabLayout_tabIconTintMode, -1), null);
            this.tabRippleColorStateList = e.i.b.c.q.a.a(context, c2, e.i.b.c.k.TabLayout_tabRippleColor);
            this.tabIndicatorAnimationDuration = c2.getInt(e.i.b.c.k.TabLayout_tabIndicatorAnimationDuration, 300);
            this.f13930i = c2.getDimensionPixelSize(e.i.b.c.k.TabLayout_tabMinWidth, -1);
            this.f13931j = c2.getDimensionPixelSize(e.i.b.c.k.TabLayout_tabMaxWidth, -1);
            this.tabBackgroundResId = c2.getResourceId(e.i.b.c.k.TabLayout_tabBackground, 0);
            this.f13933l = c2.getDimensionPixelSize(e.i.b.c.k.TabLayout_tabContentStart, 0);
            this.mode = c2.getInt(e.i.b.c.k.TabLayout_tabMode, 1);
            this.tabGravity = c2.getInt(e.i.b.c.k.TabLayout_tabGravity, 0);
            this.inlineLabel = c2.getBoolean(e.i.b.c.k.TabLayout_tabInlineLabel, false);
            this.unboundedRipple = c2.getBoolean(e.i.b.c.k.TabLayout_tabUnboundedRipple, false);
            c2.recycle();
            Resources resources = getResources();
            this.tabTextMultiLineSize = resources.getDimensionPixelSize(e.i.b.c.d.design_tab_text_size_2line);
            this.f13932k = resources.getDimensionPixelSize(e.i.b.c.d.design_tab_scrollable_min_width);
            a();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    private void d(@NonNull g gVar) {
        for (int size = this.n.size() - 1; size >= 0; size--) {
            this.n.get(size).b(gVar);
        }
    }

    public void addTab(@NonNull g gVar, boolean z) {
        addTab(gVar, this.f13926e.size(), z);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    public void addTab(@NonNull g gVar, int i2, boolean z) {
        if (gVar.f13958f == this) {
            a(gVar, i2);
            a(gVar);
            if (z) {
                gVar.g();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    public void setSelectedTabIndicator(@DrawableRes int i2) {
        if (i2 != 0) {
            setSelectedTabIndicator(a.a.k.a.a.c(getContext(), i2));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    public void setTabTextColors(int i2, int i3) {
        setTabTextColors(a(i2, i3));
    }

    private void c(@NonNull g gVar) {
        for (int size = this.n.size() - 1; size >= 0; size--) {
            this.n.get(size).a(gVar);
        }
    }

    private LinearLayout.LayoutParams b() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        a(layoutParams);
        return layoutParams;
    }

    private void a(@Nullable ViewPager viewPager, boolean z, boolean z2) {
        ViewPager viewPager2 = this.viewPager;
        if (viewPager2 != null) {
            h hVar = this.s;
            if (hVar != null) {
                viewPager2.removeOnPageChangeListener(hVar);
            }
            b bVar = this.t;
            if (bVar != null) {
                this.viewPager.removeOnAdapterChangeListener(bVar);
            }
        }
        c cVar = this.o;
        if (cVar != null) {
            removeOnTabSelectedListener(cVar);
            this.o = null;
        }
        if (viewPager != null) {
            this.viewPager = viewPager;
            if (this.s == null) {
                this.s = new h(this);
            }
            this.s.a();
            viewPager.addOnPageChangeListener(this.s);
            this.o = new j(viewPager);
            addOnTabSelectedListener(this.o);
            androidx.viewpager.widget.a adapter = viewPager.getAdapter();
            if (adapter != null) {
                setPagerAdapter(adapter, z);
            }
            if (this.t == null) {
                this.t = new b();
            }
            this.t.a(z);
            viewPager.addOnAdapterChangeListener(this.t);
            setScrollPosition(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.viewPager = null;
            setPagerAdapter(null, false);
        }
        this.u = z2;
    }

    private void b(int i2) {
        i iVar = (i) this.f13929h.getChildAt(i2);
        this.f13929h.removeViewAt(i2);
        if (iVar != null) {
            iVar.a();
            this.v.a(iVar);
        }
        requestLayout();
    }

    private void a(g gVar, int i2) {
        gVar.b(i2);
        this.f13926e.add(i2, gVar);
        int size = this.f13926e.size();
        while (true) {
            i2++;
            if (i2 >= size) {
                return;
            } else {
                this.f13926e.get(i2).b(i2);
            }
        }
    }

    private void a(g gVar) {
        this.f13929h.addView(gVar.f13959g, gVar.c(), b());
    }

    private void a(View view) {
        if (view instanceof TabItem) {
            a((TabItem) view);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    private void a(LinearLayout.LayoutParams layoutParams) {
        if (this.mode == 1 && this.tabGravity == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
    }

    private void a(int i2) {
        if (i2 == -1) {
            return;
        }
        if (getWindowToken() != null && ViewCompat.D(this) && !this.f13929h.a()) {
            int scrollX = getScrollX();
            int a2 = a(i2, 0.0f);
            if (scrollX != a2) {
                c();
                this.p.setIntValues(scrollX, a2);
                this.p.start();
            }
            this.f13929h.a(i2, this.tabIndicatorAnimationDuration);
            return;
        }
        setScrollPosition(i2, 0.0f, true);
    }

    private int a(int i2, float f2) {
        if (this.mode != 0) {
            return 0;
        }
        View childAt = this.f13929h.getChildAt(i2);
        int i3 = i2 + 1;
        View childAt2 = i3 < this.f13929h.getChildCount() ? this.f13929h.getChildAt(i3) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i4 = (int) ((width + width2) * 0.5f * f2);
        return ViewCompat.n(this) == 0 ? left + i4 : left - i4;
    }

    private void a() {
        ViewCompat.b(this.f13929h, this.mode == 0 ? Math.max(0, this.f13933l - this.tabPaddingStart) : 0, 0, 0, 0);
        int i2 = this.mode;
        if (i2 == 0) {
            this.f13929h.setGravity(8388611);
        } else if (i2 == 1) {
            this.f13929h.setGravity(1);
        }
        updateTabViews(true);
    }

    private static ColorStateList a(int i2, int i3) {
        return new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i3, i2});
    }
}

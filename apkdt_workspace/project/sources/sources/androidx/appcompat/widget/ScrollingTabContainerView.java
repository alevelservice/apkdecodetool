package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.LinearLayoutCompat;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: j, reason: collision with root package name */
    private static final Interpolator f1199j = new DecelerateInterpolator();

    /* renamed from: e, reason: collision with root package name */
    private c f1200e;

    /* renamed from: f, reason: collision with root package name */
    private Spinner f1201f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f1202g;

    /* renamed from: h, reason: collision with root package name */
    private int f1203h;

    /* renamed from: i, reason: collision with root package name */
    private int f1204i;
    int mMaxTabWidth;
    int mStackedTabMaxWidth;
    LinearLayoutCompat mTabLayout;
    Runnable mTabSelector;
    protected final e mVisAnimListener;
    protected ViewPropertyAnimator mVisibilityAnim;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ View f1205e;

        a(View view) {
            this.f1205e = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ScrollingTabContainerView.this.smoothScrollTo(this.f1205e.getLeft() - ((ScrollingTabContainerView.this.getWidth() - this.f1205e.getWidth()) / 2), 0);
            ScrollingTabContainerView.this.mTabSelector = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b extends BaseAdapter {
        b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return ScrollingTabContainerView.this.mTabLayout.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return ((d) ScrollingTabContainerView.this.mTabLayout.getChildAt(i2)).a();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                return ScrollingTabContainerView.this.createTabView((ActionBar.b) getItem(i2), true);
            }
            ((d) view).a((ActionBar.b) getItem(i2));
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((d) view).a().e();
            int childCount = ScrollingTabContainerView.this.mTabLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = ScrollingTabContainerView.this.mTabLayout.getChildAt(i2);
                childAt.setSelected(childAt == view);
            }
        }
    }

    /* loaded from: classes.dex */
    protected class e extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        private boolean f1215e = false;

        /* renamed from: f, reason: collision with root package name */
        private int f1216f;

        protected e() {
        }

        public e a(ViewPropertyAnimator viewPropertyAnimator, int i2) {
            this.f1216f = i2;
            ScrollingTabContainerView.this.mVisibilityAnim = viewPropertyAnimator;
            return this;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1215e = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f1215e) {
                return;
            }
            ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
            scrollingTabContainerView.mVisibilityAnim = null;
            scrollingTabContainerView.setVisibility(this.f1216f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ScrollingTabContainerView.this.setVisibility(0);
            this.f1215e = false;
        }
    }

    public ScrollingTabContainerView(@NonNull Context context) {
        super(context);
        this.mVisAnimListener = new e();
        setHorizontalScrollBarEnabled(false);
        a.a.n.a a2 = a.a.n.a.a(context);
        setContentHeight(a2.e());
        this.mStackedTabMaxWidth = a2.d();
        this.mTabLayout = b();
        addView(this.mTabLayout, new ViewGroup.LayoutParams(-2, -1));
    }

    private Spinner a() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, a.a.a.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    private LinearLayoutCompat b() {
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), null, a.a.a.actionBarTabBarStyle);
        linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
        linearLayoutCompat.setGravity(17);
        linearLayoutCompat.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        return linearLayoutCompat;
    }

    private boolean c() {
        Spinner spinner = this.f1201f;
        return spinner != null && spinner.getParent() == this;
    }

    private void d() {
        if (c()) {
            return;
        }
        if (this.f1201f == null) {
            this.f1201f = a();
        }
        removeView(this.mTabLayout);
        addView(this.f1201f, new ViewGroup.LayoutParams(-2, -1));
        if (this.f1201f.getAdapter() == null) {
            this.f1201f.setAdapter((SpinnerAdapter) new b());
        }
        Runnable runnable = this.mTabSelector;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.mTabSelector = null;
        }
        this.f1201f.setSelection(this.f1204i);
    }

    private boolean e() {
        if (!c()) {
            return false;
        }
        removeView(this.f1201f);
        addView(this.mTabLayout, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f1201f.getSelectedItemPosition());
        return false;
    }

    public void addTab(ActionBar.b bVar, boolean z) {
        d createTabView = createTabView(bVar, false);
        this.mTabLayout.addView(createTabView, new LinearLayoutCompat.LayoutParams(0, -1, 1.0f));
        Spinner spinner = this.f1201f;
        if (spinner != null) {
            ((b) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            createTabView.setSelected(true);
        }
        if (this.f1202g) {
            requestLayout();
        }
    }

    public void animateToTab(int i2) {
        View childAt = this.mTabLayout.getChildAt(i2);
        Runnable runnable = this.mTabSelector;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        this.mTabSelector = new a(childAt);
        post(this.mTabSelector);
    }

    public void animateToVisibility(int i2) {
        ViewPropertyAnimator viewPropertyAnimator = this.mVisibilityAnim;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
        if (i2 == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            ViewPropertyAnimator alpha = animate().alpha(1.0f);
            alpha.setDuration(200L);
            alpha.setInterpolator(f1199j);
            e eVar = this.mVisAnimListener;
            eVar.a(alpha, i2);
            alpha.setListener(eVar);
            alpha.start();
            return;
        }
        ViewPropertyAnimator alpha2 = animate().alpha(0.0f);
        alpha2.setDuration(200L);
        alpha2.setInterpolator(f1199j);
        e eVar2 = this.mVisAnimListener;
        eVar2.a(alpha2, i2);
        alpha2.setListener(eVar2);
        alpha2.start();
    }

    d createTabView(ActionBar.b bVar, boolean z) {
        d dVar = new d(getContext(), bVar, z);
        if (z) {
            dVar.setBackgroundDrawable(null);
            dVar.setLayoutParams(new AbsListView.LayoutParams(-1, this.f1203h));
        } else {
            dVar.setFocusable(true);
            if (this.f1200e == null) {
                this.f1200e = new c();
            }
            dVar.setOnClickListener(this.f1200e);
        }
        return dVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.mTabSelector;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        a.a.n.a a2 = a.a.n.a.a(getContext());
        setContentHeight(a2.e());
        this.mStackedTabMaxWidth = a2.d();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.mTabSelector;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j2) {
        ((d) view).a().e();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        boolean z = mode == 1073741824;
        setFillViewport(z);
        int childCount = this.mTabLayout.getChildCount();
        if (childCount > 1 && (mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            if (childCount > 2) {
                this.mMaxTabWidth = (int) (View.MeasureSpec.getSize(i2) * 0.4f);
            } else {
                this.mMaxTabWidth = View.MeasureSpec.getSize(i2) / 2;
            }
            this.mMaxTabWidth = Math.min(this.mMaxTabWidth, this.mStackedTabMaxWidth);
        } else {
            this.mMaxTabWidth = -1;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1203h, 1073741824);
        if (!z && this.f1202g) {
            this.mTabLayout.measure(0, makeMeasureSpec);
            if (this.mTabLayout.getMeasuredWidth() > View.MeasureSpec.getSize(i2)) {
                d();
            } else {
                e();
            }
        } else {
            e();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i2, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.f1204i);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void removeAllTabs() {
        this.mTabLayout.removeAllViews();
        Spinner spinner = this.f1201f;
        if (spinner != null) {
            ((b) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1202g) {
            requestLayout();
        }
    }

    public void removeTabAt(int i2) {
        this.mTabLayout.removeViewAt(i2);
        Spinner spinner = this.f1201f;
        if (spinner != null) {
            ((b) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1202g) {
            requestLayout();
        }
    }

    public void setAllowCollapse(boolean z) {
        this.f1202g = z;
    }

    public void setContentHeight(int i2) {
        this.f1203h = i2;
        requestLayout();
    }

    public void setTabSelected(int i2) {
        this.f1204i = i2;
        int childCount = this.mTabLayout.getChildCount();
        int i3 = 0;
        while (i3 < childCount) {
            View childAt = this.mTabLayout.getChildAt(i3);
            boolean z = i3 == i2;
            childAt.setSelected(z);
            if (z) {
                animateToTab(i2);
            }
            i3++;
        }
        Spinner spinner = this.f1201f;
        if (spinner == null || i2 < 0) {
            return;
        }
        spinner.setSelection(i2);
    }

    public void updateTab(int i2) {
        ((d) this.mTabLayout.getChildAt(i2)).b();
        Spinner spinner = this.f1201f;
        if (spinner != null) {
            ((b) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1202g) {
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d extends LinearLayout {

        /* renamed from: e, reason: collision with root package name */
        private final int[] f1209e;

        /* renamed from: f, reason: collision with root package name */
        private ActionBar.b f1210f;

        /* renamed from: g, reason: collision with root package name */
        private TextView f1211g;

        /* renamed from: h, reason: collision with root package name */
        private ImageView f1212h;

        /* renamed from: i, reason: collision with root package name */
        private View f1213i;

        public d(Context context, ActionBar.b bVar, boolean z) {
            super(context, null, a.a.a.actionBarTabStyle);
            this.f1209e = new int[]{R.attr.background};
            this.f1210f = bVar;
            d0 a2 = d0.a(context, null, this.f1209e, a.a.a.actionBarTabStyle, 0);
            if (a2.g(0)) {
                setBackgroundDrawable(a2.b(0));
            }
            a2.b();
            if (z) {
                setGravity(8388627);
            }
            b();
        }

        public void a(ActionBar.b bVar) {
            this.f1210f = bVar;
            b();
        }

        public void b() {
            ActionBar.b bVar = this.f1210f;
            View b2 = bVar.b();
            if (b2 != null) {
                ViewParent parent = b2.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(b2);
                    }
                    addView(b2);
                }
                this.f1213i = b2;
                TextView textView = this.f1211g;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f1212h;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f1212h.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.f1213i;
            if (view != null) {
                removeView(view);
                this.f1213i = null;
            }
            Drawable c2 = bVar.c();
            CharSequence d2 = bVar.d();
            if (c2 != null) {
                if (this.f1212h == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f1212h = appCompatImageView;
                }
                this.f1212h.setImageDrawable(c2);
                this.f1212h.setVisibility(0);
            } else {
                ImageView imageView2 = this.f1212h;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f1212h.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(d2);
            if (z) {
                if (this.f1211g == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, a.a.a.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f1211g = appCompatTextView;
                }
                this.f1211g.setText(d2);
                this.f1211g.setVisibility(0);
            } else {
                TextView textView2 = this.f1211g;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f1211g.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.f1212h;
            if (imageView3 != null) {
                imageView3.setContentDescription(bVar.a());
            }
            f0.a(this, z ? null : bVar.a());
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
            if (ScrollingTabContainerView.this.mMaxTabWidth > 0) {
                int measuredWidth = getMeasuredWidth();
                int i4 = ScrollingTabContainerView.this.mMaxTabWidth;
                if (measuredWidth > i4) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), i3);
                }
            }
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }

        public ActionBar.b a() {
            return this.f1210f;
        }
    }

    public void addTab(ActionBar.b bVar, int i2, boolean z) {
        d createTabView = createTabView(bVar, false);
        this.mTabLayout.addView(createTabView, i2, new LinearLayoutCompat.LayoutParams(0, -1, 1.0f));
        Spinner spinner = this.f1201f;
        if (spinner != null) {
            ((b) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            createTabView.setSelected(true);
        }
        if (this.f1202g) {
            requestLayout();
        }
    }
}

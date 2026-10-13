package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.c;
import androidx.core.view.ViewCompat;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ActivityChooserView extends ViewGroup implements c.a {

    /* renamed from: e, reason: collision with root package name */
    private final g f1091e;

    /* renamed from: f, reason: collision with root package name */
    private final View f1092f;

    /* renamed from: g, reason: collision with root package name */
    private final Drawable f1093g;

    /* renamed from: h, reason: collision with root package name */
    private final ImageView f1094h;

    /* renamed from: i, reason: collision with root package name */
    private final ImageView f1095i;

    /* renamed from: j, reason: collision with root package name */
    private final int f1096j;

    /* renamed from: k, reason: collision with root package name */
    private final ViewTreeObserver.OnGlobalLayoutListener f1097k;

    /* renamed from: l, reason: collision with root package name */
    private ListPopupWindow f1098l;
    private boolean m;
    final f mAdapter;
    final FrameLayout mDefaultActivityButton;
    final FrameLayout mExpandActivityOverflowButton;
    int mInitialActivityCount;
    boolean mIsSelectingDefaultActivity;
    final DataSetObserver mModelDataSetObserver;
    PopupWindow.OnDismissListener mOnDismissListener;
    androidx.core.view.b mProvider;
    private int n;

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public static class InnerLayout extends LinearLayout {

        /* renamed from: e, reason: collision with root package name */
        private static final int[] f1099e = {R.attr.background};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            d0 a2 = d0.a(context, attributeSet, f1099e);
            setBackgroundDrawable(a2.b(0));
            a2.b();
        }
    }

    /* loaded from: classes.dex */
    class a extends DataSetObserver {
        a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.mAdapter.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            super.onInvalidated();
            ActivityChooserView.this.mAdapter.notifyDataSetInvalidated();
        }
    }

    /* loaded from: classes.dex */
    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (ActivityChooserView.this.isShowingPopup()) {
                if (!ActivityChooserView.this.isShown()) {
                    ActivityChooserView.this.getListPopupWindow().dismiss();
                    return;
                }
                ActivityChooserView.this.getListPopupWindow().show();
                androidx.core.view.b bVar = ActivityChooserView.this.mProvider;
                if (bVar != null) {
                    bVar.a(true);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    class c extends View.AccessibilityDelegate {
        c(ActivityChooserView activityChooserView) {
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            androidx.core.view.f0.d.a(accessibilityNodeInfo).b(true);
        }
    }

    /* loaded from: classes.dex */
    class d extends s {
        d(View view) {
            super(view);
        }

        @Override // androidx.appcompat.widget.s
        public androidx.appcompat.view.menu.p a() {
            return ActivityChooserView.this.getListPopupWindow();
        }

        @Override // androidx.appcompat.widget.s
        protected boolean b() {
            ActivityChooserView.this.showPopup();
            return true;
        }

        @Override // androidx.appcompat.widget.s
        protected boolean c() {
            ActivityChooserView.this.dismissPopup();
            return true;
        }
    }

    /* loaded from: classes.dex */
    class e extends DataSetObserver {
        e() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.updateAppearance();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class g implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener {
        g() {
        }

        private void a() {
            PopupWindow.OnDismissListener onDismissListener = ActivityChooserView.this.mOnDismissListener;
            if (onDismissListener != null) {
                onDismissListener.onDismiss();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.mDefaultActivityButton) {
                activityChooserView.dismissPopup();
                Intent a2 = ActivityChooserView.this.mAdapter.b().a(ActivityChooserView.this.mAdapter.b().a(ActivityChooserView.this.mAdapter.c()));
                if (a2 != null) {
                    a2.addFlags(524288);
                    ActivityChooserView.this.getContext().startActivity(a2);
                    return;
                }
                return;
            }
            if (view == activityChooserView.mExpandActivityOverflowButton) {
                activityChooserView.mIsSelectingDefaultActivity = false;
                activityChooserView.showPopupUnchecked(activityChooserView.mInitialActivityCount);
                return;
            }
            throw new IllegalArgumentException();
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            a();
            androidx.core.view.b bVar = ActivityChooserView.this.mProvider;
            if (bVar != null) {
                bVar.a(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            int itemViewType = ((f) adapterView.getAdapter()).getItemViewType(i2);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    ActivityChooserView.this.showPopupUnchecked(Integer.MAX_VALUE);
                    return;
                }
                throw new IllegalArgumentException();
            }
            ActivityChooserView.this.dismissPopup();
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (activityChooserView.mIsSelectingDefaultActivity) {
                if (i2 > 0) {
                    activityChooserView.mAdapter.b().c(i2);
                    return;
                }
                return;
            }
            if (!activityChooserView.mAdapter.e()) {
                i2++;
            }
            Intent a2 = ActivityChooserView.this.mAdapter.b().a(i2);
            if (a2 != null) {
                a2.addFlags(524288);
                ActivityChooserView.this.getContext().startActivity(a2);
            }
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.mDefaultActivityButton) {
                if (activityChooserView.mAdapter.getCount() > 0) {
                    ActivityChooserView activityChooserView2 = ActivityChooserView.this;
                    activityChooserView2.mIsSelectingDefaultActivity = true;
                    activityChooserView2.showPopupUnchecked(activityChooserView2.mInitialActivityCount);
                }
                return true;
            }
            throw new IllegalArgumentException();
        }
    }

    public ActivityChooserView(@NonNull Context context) {
        this(context, null);
    }

    public boolean dismissPopup() {
        if (!isShowingPopup()) {
            return true;
        }
        getListPopupWindow().dismiss();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        viewTreeObserver.removeGlobalOnLayoutListener(this.f1097k);
        return true;
    }

    public androidx.appcompat.widget.c getDataModel() {
        return this.mAdapter.b();
    }

    ListPopupWindow getListPopupWindow() {
        if (this.f1098l == null) {
            this.f1098l = new ListPopupWindow(getContext());
            this.f1098l.a(this.mAdapter);
            this.f1098l.a(this);
            this.f1098l.a(true);
            this.f1098l.a((AdapterView.OnItemClickListener) this.f1091e);
            this.f1098l.a((PopupWindow.OnDismissListener) this.f1091e);
        }
        return this.f1098l;
    }

    public boolean isShowingPopup() {
        return getListPopupWindow().c();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        androidx.appcompat.widget.c b2 = this.mAdapter.b();
        if (b2 != null) {
            b2.registerObserver(this.mModelDataSetObserver);
        }
        this.m = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        androidx.appcompat.widget.c b2 = this.mAdapter.b();
        if (b2 != null) {
            b2.unregisterObserver(this.mModelDataSetObserver);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f1097k);
        }
        if (isShowingPopup()) {
            dismissPopup();
        }
        this.m = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        this.f1092f.layout(0, 0, i4 - i2, i5 - i3);
        if (isShowingPopup()) {
            return;
        }
        dismissPopup();
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        View view = this.f1092f;
        if (this.mDefaultActivityButton.getVisibility() != 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3), 1073741824);
        }
        measureChild(view, i2, i3);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setActivityChooserModel(androidx.appcompat.widget.c cVar) {
        this.mAdapter.a(cVar);
        if (isShowingPopup()) {
            dismissPopup();
            showPopup();
        }
    }

    public void setDefaultActionButtonContentDescription(int i2) {
        this.n = i2;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i2) {
        this.f1094h.setContentDescription(getContext().getString(i2));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.f1094h.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i2) {
        this.mInitialActivityCount = i2;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setProvider(androidx.core.view.b bVar) {
        this.mProvider = bVar;
    }

    public boolean showPopup() {
        if (isShowingPopup() || !this.m) {
            return false;
        }
        this.mIsSelectingDefaultActivity = false;
        showPopupUnchecked(this.mInitialActivityCount);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7, types: [boolean, int] */
    void showPopupUnchecked(int i2) {
        if (this.mAdapter.b() != null) {
            getViewTreeObserver().addOnGlobalLayoutListener(this.f1097k);
            ?? r0 = this.mDefaultActivityButton.getVisibility() == 0 ? 1 : 0;
            int a2 = this.mAdapter.a();
            if (i2 != Integer.MAX_VALUE && a2 > i2 + r0) {
                this.mAdapter.a(true);
                this.mAdapter.a(i2 - 1);
            } else {
                this.mAdapter.a(false);
                this.mAdapter.a(i2);
            }
            ListPopupWindow listPopupWindow = getListPopupWindow();
            if (listPopupWindow.c()) {
                return;
            }
            if (!this.mIsSelectingDefaultActivity && r0 != 0) {
                this.mAdapter.a(false, false);
            } else {
                this.mAdapter.a(true, r0);
            }
            listPopupWindow.e(Math.min(this.mAdapter.f(), this.f1096j));
            listPopupWindow.show();
            androidx.core.view.b bVar = this.mProvider;
            if (bVar != null) {
                bVar.a(true);
            }
            listPopupWindow.e().setContentDescription(getContext().getString(a.a.h.abc_activitychooserview_choose_application));
            listPopupWindow.e().setSelector(new ColorDrawable(0));
            return;
        }
        throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }

    void updateAppearance() {
        if (this.mAdapter.getCount() > 0) {
            this.mExpandActivityOverflowButton.setEnabled(true);
        } else {
            this.mExpandActivityOverflowButton.setEnabled(false);
        }
        int a2 = this.mAdapter.a();
        int d2 = this.mAdapter.d();
        if (a2 != 1 && (a2 <= 1 || d2 <= 0)) {
            this.mDefaultActivityButton.setVisibility(8);
        } else {
            this.mDefaultActivityButton.setVisibility(0);
            ResolveInfo c2 = this.mAdapter.c();
            PackageManager packageManager = getContext().getPackageManager();
            this.f1095i.setImageDrawable(c2.loadIcon(packageManager));
            if (this.n != 0) {
                this.mDefaultActivityButton.setContentDescription(getContext().getString(this.n, c2.loadLabel(packageManager)));
            }
        }
        if (this.mDefaultActivityButton.getVisibility() == 0) {
            this.f1092f.setBackgroundDrawable(this.f1093g);
        } else {
            this.f1092f.setBackgroundDrawable(null);
        }
    }

    public ActivityChooserView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityChooserView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mModelDataSetObserver = new a();
        this.f1097k = new b();
        this.mInitialActivityCount = 4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.a.j.ActivityChooserView, i2, 0);
        ViewCompat.a(this, context, a.a.j.ActivityChooserView, attributeSet, obtainStyledAttributes, i2, 0);
        this.mInitialActivityCount = obtainStyledAttributes.getInt(a.a.j.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = obtainStyledAttributes.getDrawable(a.a.j.ActivityChooserView_expandActivityOverflowButtonDrawable);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(a.a.g.abc_activity_chooser_view, (ViewGroup) this, true);
        this.f1091e = new g();
        this.f1092f = findViewById(a.a.f.activity_chooser_view_content);
        this.f1093g = this.f1092f.getBackground();
        this.mDefaultActivityButton = (FrameLayout) findViewById(a.a.f.default_activity_button);
        this.mDefaultActivityButton.setOnClickListener(this.f1091e);
        this.mDefaultActivityButton.setOnLongClickListener(this.f1091e);
        this.f1095i = (ImageView) this.mDefaultActivityButton.findViewById(a.a.f.image);
        FrameLayout frameLayout = (FrameLayout) findViewById(a.a.f.expand_activities_button);
        frameLayout.setOnClickListener(this.f1091e);
        frameLayout.setAccessibilityDelegate(new c(this));
        frameLayout.setOnTouchListener(new d(frameLayout));
        this.mExpandActivityOverflowButton = frameLayout;
        this.f1094h = (ImageView) frameLayout.findViewById(a.a.f.image);
        this.f1094h.setImageDrawable(drawable);
        this.mAdapter = new f();
        this.mAdapter.registerDataSetObserver(new e());
        Resources resources = context.getResources();
        this.f1096j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(a.a.d.abc_config_prefDialogWidth));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class f extends BaseAdapter {

        /* renamed from: e, reason: collision with root package name */
        private androidx.appcompat.widget.c f1103e;

        /* renamed from: f, reason: collision with root package name */
        private int f1104f = 4;

        /* renamed from: g, reason: collision with root package name */
        private boolean f1105g;

        /* renamed from: h, reason: collision with root package name */
        private boolean f1106h;

        /* renamed from: i, reason: collision with root package name */
        private boolean f1107i;

        f() {
        }

        public void a(androidx.appcompat.widget.c cVar) {
            androidx.appcompat.widget.c b2 = ActivityChooserView.this.mAdapter.b();
            if (b2 != null && ActivityChooserView.this.isShown()) {
                b2.unregisterObserver(ActivityChooserView.this.mModelDataSetObserver);
            }
            this.f1103e = cVar;
            if (cVar != null && ActivityChooserView.this.isShown()) {
                cVar.registerObserver(ActivityChooserView.this.mModelDataSetObserver);
            }
            notifyDataSetChanged();
        }

        public androidx.appcompat.widget.c b() {
            return this.f1103e;
        }

        public ResolveInfo c() {
            return this.f1103e.b();
        }

        public int d() {
            return this.f1103e.c();
        }

        public boolean e() {
            return this.f1105g;
        }

        public int f() {
            int i2 = this.f1104f;
            this.f1104f = Integer.MAX_VALUE;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
            int count = getCount();
            View view = null;
            int i3 = 0;
            for (int i4 = 0; i4 < count; i4++) {
                view = getView(i4, view, null);
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                i3 = Math.max(i3, view.getMeasuredWidth());
            }
            this.f1104f = i2;
            return i3;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int a2 = this.f1103e.a();
            if (!this.f1105g && this.f1103e.b() != null) {
                a2--;
            }
            int min = Math.min(a2, this.f1104f);
            return this.f1107i ? min + 1 : min;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            int itemViewType = getItemViewType(i2);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    return null;
                }
                throw new IllegalArgumentException();
            }
            if (!this.f1105g && this.f1103e.b() != null) {
                i2++;
            }
            return this.f1103e.b(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i2) {
            return (this.f1107i && i2 == getCount() - 1) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            int itemViewType = getItemViewType(i2);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    if (view != null && view.getId() == 1) {
                        return view;
                    }
                    View inflate = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(a.a.g.abc_activity_chooser_view_list_item, viewGroup, false);
                    inflate.setId(1);
                    ((TextView) inflate.findViewById(a.a.f.title)).setText(ActivityChooserView.this.getContext().getString(a.a.h.abc_activity_chooser_view_see_all));
                    return inflate;
                }
                throw new IllegalArgumentException();
            }
            if (view == null || view.getId() != a.a.f.list_item) {
                view = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(a.a.g.abc_activity_chooser_view_list_item, viewGroup, false);
            }
            PackageManager packageManager = ActivityChooserView.this.getContext().getPackageManager();
            ImageView imageView = (ImageView) view.findViewById(a.a.f.icon);
            ResolveInfo resolveInfo = (ResolveInfo) getItem(i2);
            imageView.setImageDrawable(resolveInfo.loadIcon(packageManager));
            ((TextView) view.findViewById(a.a.f.title)).setText(resolveInfo.loadLabel(packageManager));
            if (this.f1105g && i2 == 0 && this.f1106h) {
                view.setActivated(true);
            } else {
                view.setActivated(false);
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }

        public void a(int i2) {
            if (this.f1104f != i2) {
                this.f1104f = i2;
                notifyDataSetChanged();
            }
        }

        public void a(boolean z) {
            if (this.f1107i != z) {
                this.f1107i = z;
                notifyDataSetChanged();
            }
        }

        public int a() {
            return this.f1103e.a();
        }

        public void a(boolean z, boolean z2) {
            if (this.f1105g == z && this.f1106h == z2) {
                return;
            }
            this.f1105g = z;
            this.f1106h = z2;
            notifyDataSetChanged();
        }
    }
}

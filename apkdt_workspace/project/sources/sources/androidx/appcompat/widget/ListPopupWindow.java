package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class ListPopupWindow implements androidx.appcompat.view.menu.p {
    private static Method J;
    private static Method K;
    private static Method L;
    final g A;
    private final f B;
    private final e C;
    private final c D;
    final Handler E;
    private final Rect F;
    private Rect G;
    private boolean H;
    PopupWindow I;

    /* renamed from: e, reason: collision with root package name */
    private Context f1184e;

    /* renamed from: f, reason: collision with root package name */
    private ListAdapter f1185f;

    /* renamed from: g, reason: collision with root package name */
    q f1186g;

    /* renamed from: h, reason: collision with root package name */
    private int f1187h;

    /* renamed from: i, reason: collision with root package name */
    private int f1188i;

    /* renamed from: j, reason: collision with root package name */
    private int f1189j;

    /* renamed from: k, reason: collision with root package name */
    private int f1190k;

    /* renamed from: l, reason: collision with root package name */
    private int f1191l;
    private boolean m;
    private boolean n;
    private boolean o;
    private int p;
    private boolean q;
    private boolean r;
    int s;
    private View t;
    private int u;
    private DataSetObserver v;
    private View w;
    private Drawable x;
    private AdapterView.OnItemClickListener y;
    private AdapterView.OnItemSelectedListener z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View h2 = ListPopupWindow.this.h();
            if (h2 == null || h2.getWindowToken() == null) {
                return;
            }
            ListPopupWindow.this.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements AdapterView.OnItemSelectedListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j2) {
            q qVar;
            if (i2 == -1 || (qVar = ListPopupWindow.this.f1186g) == null) {
                return;
            }
            qVar.setListSelectionHidden(false);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ListPopupWindow.this.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d extends DataSetObserver {
        d() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (ListPopupWindow.this.c()) {
                ListPopupWindow.this.show();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class e implements AbsListView.OnScrollListener {
        e() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i2, int i3, int i4) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i2) {
            if (i2 != 1 || ListPopupWindow.this.j() || ListPopupWindow.this.I.getContentView() == null) {
                return;
            }
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            listPopupWindow.E.removeCallbacks(listPopupWindow.A);
            ListPopupWindow.this.A.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class f implements View.OnTouchListener {
        f() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = ListPopupWindow.this.I) != null && popupWindow.isShowing() && x >= 0 && x < ListPopupWindow.this.I.getWidth() && y >= 0 && y < ListPopupWindow.this.I.getHeight()) {
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                listPopupWindow.E.postDelayed(listPopupWindow.A, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            ListPopupWindow listPopupWindow2 = ListPopupWindow.this;
            listPopupWindow2.E.removeCallbacks(listPopupWindow2.A);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q qVar = ListPopupWindow.this.f1186g;
            if (qVar == null || !ViewCompat.C(qVar) || ListPopupWindow.this.f1186g.getCount() <= ListPopupWindow.this.f1186g.getChildCount()) {
                return;
            }
            int childCount = ListPopupWindow.this.f1186g.getChildCount();
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (childCount <= listPopupWindow.s) {
                listPopupWindow.I.setInputMethodMode(2);
                ListPopupWindow.this.show();
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                J = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
            }
            try {
                L = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                K = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException unused3) {
            }
        }
    }

    public ListPopupWindow(@NonNull Context context) {
        this(context, null, a.a.a.listPopupWindowStyle);
    }

    private int l() {
        int i2;
        int i3;
        int makeMeasureSpec;
        int i4;
        if (this.f1186g == null) {
            Context context = this.f1184e;
            new a();
            this.f1186g = a(context, !this.H);
            Drawable drawable = this.x;
            if (drawable != null) {
                this.f1186g.setSelector(drawable);
            }
            this.f1186g.setAdapter(this.f1185f);
            this.f1186g.setOnItemClickListener(this.y);
            this.f1186g.setFocusable(true);
            this.f1186g.setFocusableInTouchMode(true);
            this.f1186g.setOnItemSelectedListener(new b());
            this.f1186g.setOnScrollListener(this.C);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.z;
            if (onItemSelectedListener != null) {
                this.f1186g.setOnItemSelectedListener(onItemSelectedListener);
            }
            View view = this.f1186g;
            View view2 = this.t;
            if (view2 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i5 = this.u;
                if (i5 == 0) {
                    linearLayout.addView(view2);
                    linearLayout.addView(view, layoutParams);
                } else if (i5 != 1) {
                    String str = "Invalid hint position " + this.u;
                } else {
                    linearLayout.addView(view, layoutParams);
                    linearLayout.addView(view2);
                }
                int i6 = this.f1188i;
                if (i6 >= 0) {
                    i4 = e.b.b.a.a.a.c.ALL_INT;
                } else {
                    i6 = 0;
                    i4 = 0;
                }
                view2.measure(View.MeasureSpec.makeMeasureSpec(i6, i4), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                i2 = view2.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                view = linearLayout;
            } else {
                i2 = 0;
            }
            this.I.setContentView(view);
        } else {
            View view3 = this.t;
            if (view3 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                i2 = view3.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                i2 = 0;
            }
        }
        Drawable background = this.I.getBackground();
        if (background != null) {
            background.getPadding(this.F);
            Rect rect = this.F;
            int i7 = rect.top;
            i3 = rect.bottom + i7;
            if (!this.m) {
                this.f1190k = -i7;
            }
        } else {
            this.F.setEmpty();
            i3 = 0;
        }
        int a2 = a(h(), this.f1190k, this.I.getInputMethodMode() == 2);
        if (this.q || this.f1187h == -1) {
            return a2 + i3;
        }
        int i8 = this.f1188i;
        if (i8 == -2) {
            int i9 = this.f1184e.getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = this.F;
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i9 - (rect2.left + rect2.right), e.b.b.a.a.a.c.ALL_INT);
        } else if (i8 != -1) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i8, 1073741824);
        } else {
            int i10 = this.f1184e.getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = this.F;
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i10 - (rect3.left + rect3.right), 1073741824);
        }
        int measureHeightOfChildrenCompat = this.f1186g.measureHeightOfChildrenCompat(makeMeasureSpec, 0, -1, a2 - i2, -1);
        if (measureHeightOfChildrenCompat > 0) {
            i2 += i3 + this.f1186g.getPaddingTop() + this.f1186g.getPaddingBottom();
        }
        return measureHeightOfChildrenCompat + i2;
    }

    private void m() {
        View view = this.t;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.t);
            }
        }
    }

    public void a(@Nullable ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.v;
        if (dataSetObserver == null) {
            this.v = new d();
        } else {
            ListAdapter listAdapter2 = this.f1185f;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f1185f = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.v);
        }
        q qVar = this.f1186g;
        if (qVar != null) {
            qVar.setAdapter(this.f1185f);
        }
    }

    public void b(int i2) {
        this.f1190k = i2;
        this.m = true;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean c() {
        return this.I.isShowing();
    }

    @Nullable
    public Drawable d() {
        return this.I.getBackground();
    }

    @Override // androidx.appcompat.view.menu.p
    public void dismiss() {
        this.I.dismiss();
        m();
        this.I.setContentView(null);
        this.f1186g = null;
        this.E.removeCallbacks(this.A);
    }

    public void e(int i2) {
        Drawable background = this.I.getBackground();
        if (background != null) {
            background.getPadding(this.F);
            Rect rect = this.F;
            this.f1188i = rect.left + rect.right + i2;
            return;
        }
        j(i2);
    }

    public int f() {
        if (this.m) {
            return this.f1190k;
        }
        return 0;
    }

    public void g(int i2) {
        this.I.setInputMethodMode(i2);
    }

    public void h(int i2) {
        this.u = i2;
    }

    public int i() {
        return this.f1188i;
    }

    public void j(int i2) {
        this.f1188i = i2;
    }

    public boolean k() {
        return this.H;
    }

    @Override // androidx.appcompat.view.menu.p
    public void show() {
        int l2 = l();
        boolean j2 = j();
        androidx.core.widget.h.a(this.I, this.f1191l);
        if (this.I.isShowing()) {
            if (ViewCompat.C(h())) {
                int i2 = this.f1188i;
                if (i2 == -1) {
                    i2 = -1;
                } else if (i2 == -2) {
                    i2 = h().getWidth();
                }
                int i3 = this.f1187h;
                if (i3 == -1) {
                    if (!j2) {
                        l2 = -1;
                    }
                    if (j2) {
                        this.I.setWidth(this.f1188i == -1 ? -1 : 0);
                        this.I.setHeight(0);
                    } else {
                        this.I.setWidth(this.f1188i == -1 ? -1 : 0);
                        this.I.setHeight(-1);
                    }
                } else if (i3 != -2) {
                    l2 = i3;
                }
                this.I.setOutsideTouchable((this.r || this.q) ? false : true);
                this.I.update(h(), this.f1189j, this.f1190k, i2 < 0 ? -1 : i2, l2 < 0 ? -1 : l2);
                return;
            }
            return;
        }
        int i4 = this.f1188i;
        if (i4 == -1) {
            i4 = -1;
        } else if (i4 == -2) {
            i4 = h().getWidth();
        }
        int i5 = this.f1187h;
        if (i5 == -1) {
            l2 = -1;
        } else if (i5 != -2) {
            l2 = i5;
        }
        this.I.setWidth(i4);
        this.I.setHeight(l2);
        c(true);
        this.I.setOutsideTouchable((this.r || this.q) ? false : true);
        this.I.setTouchInterceptor(this.B);
        if (this.o) {
            androidx.core.widget.h.a(this.I, this.n);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = L;
            if (method != null) {
                try {
                    method.invoke(this.I, this.G);
                } catch (Exception unused) {
                }
            }
        } else {
            this.I.setEpicenterBounds(this.G);
        }
        androidx.core.widget.h.a(this.I, h(), this.f1189j, this.f1190k, this.p);
        this.f1186g.setSelection(-1);
        if (!this.H || this.f1186g.isInTouchMode()) {
            g();
        }
        if (this.H) {
            return;
        }
        this.E.post(this.D);
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2) {
        this(context, attributeSet, i2, 0);
    }

    private void c(boolean z) {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = J;
            if (method != null) {
                try {
                    method.invoke(this.I, Boolean.valueOf(z));
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            return;
        }
        this.I.setIsClippedToScreen(z);
    }

    public void d(@StyleRes int i2) {
        this.I.setAnimationStyle(i2);
    }

    public void g() {
        q qVar = this.f1186g;
        if (qVar != null) {
            qVar.setListSelectionHidden(true);
            qVar.requestLayout();
        }
    }

    @Nullable
    public View h() {
        return this.w;
    }

    public void i(int i2) {
        q qVar = this.f1186g;
        if (!c() || qVar == null) {
            return;
        }
        qVar.setListSelectionHidden(false);
        qVar.setSelection(i2);
        if (qVar.getChoiceMode() != 0) {
            qVar.setItemChecked(i2, true);
        }
    }

    public boolean j() {
        return this.I.getInputMethodMode() == 2;
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i3) {
        this.f1187h = -2;
        this.f1188i = -2;
        this.f1191l = 1002;
        this.p = 0;
        this.q = false;
        this.r = false;
        this.s = Integer.MAX_VALUE;
        this.u = 0;
        this.A = new g();
        this.B = new f();
        this.C = new e();
        this.D = new c();
        this.F = new Rect();
        this.f1184e = context;
        this.E = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.a.j.ListPopupWindow, i2, i3);
        this.f1189j = obtainStyledAttributes.getDimensionPixelOffset(a.a.j.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        this.f1190k = obtainStyledAttributes.getDimensionPixelOffset(a.a.j.ListPopupWindow_android_dropDownVerticalOffset, 0);
        if (this.f1190k != 0) {
            this.m = true;
        }
        obtainStyledAttributes.recycle();
        this.I = new AppCompatPopupWindow(context, attributeSet, i2, i3);
        this.I.setInputMethodMode(1);
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void b(boolean z) {
        this.o = true;
        this.n = z;
    }

    public void f(int i2) {
        this.p = i2;
    }

    @Override // androidx.appcompat.view.menu.p
    @Nullable
    public ListView e() {
        return this.f1186g;
    }

    public void a(boolean z) {
        this.H = z;
        this.I.setFocusable(z);
    }

    public void a(@Nullable Drawable drawable) {
        this.I.setBackgroundDrawable(drawable);
    }

    public void a(@Nullable View view) {
        this.w = view;
    }

    public int a() {
        return this.f1189j;
    }

    public void a(int i2) {
        this.f1189j = i2;
    }

    public void a(@Nullable Rect rect) {
        this.G = rect != null ? new Rect(rect) : null;
    }

    public void a(@Nullable AdapterView.OnItemClickListener onItemClickListener) {
        this.y = onItemClickListener;
    }

    public void a(@Nullable PopupWindow.OnDismissListener onDismissListener) {
        this.I.setOnDismissListener(onDismissListener);
    }

    @NonNull
    q a(Context context, boolean z) {
        return new q(context, z);
    }

    private int a(View view, int i2, boolean z) {
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = K;
            if (method != null) {
                try {
                    return ((Integer) method.invoke(this.I, view, Integer.valueOf(i2), Boolean.valueOf(z))).intValue();
                } catch (Exception unused) {
                }
            }
            return this.I.getMaxAvailableHeight(view, i2);
        }
        return this.I.getMaxAvailableHeight(view, i2, z);
    }
}

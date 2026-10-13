package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.f;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;

/* compiled from: ToolbarWidgetWrapper.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class e0 implements o {

    /* renamed from: a, reason: collision with root package name */
    Toolbar f1321a;

    /* renamed from: b, reason: collision with root package name */
    private int f1322b;

    /* renamed from: c, reason: collision with root package name */
    private View f1323c;

    /* renamed from: d, reason: collision with root package name */
    private View f1324d;

    /* renamed from: e, reason: collision with root package name */
    private Drawable f1325e;

    /* renamed from: f, reason: collision with root package name */
    private Drawable f1326f;

    /* renamed from: g, reason: collision with root package name */
    private Drawable f1327g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f1328h;

    /* renamed from: i, reason: collision with root package name */
    CharSequence f1329i;

    /* renamed from: j, reason: collision with root package name */
    private CharSequence f1330j;

    /* renamed from: k, reason: collision with root package name */
    private CharSequence f1331k;

    /* renamed from: l, reason: collision with root package name */
    Window.Callback f1332l;
    boolean m;
    private ActionMenuPresenter n;
    private int o;
    private int p;
    private Drawable q;

    /* compiled from: ToolbarWidgetWrapper.java */
    /* loaded from: classes.dex */
    class a implements View.OnClickListener {

        /* renamed from: e, reason: collision with root package name */
        final androidx.appcompat.view.menu.a f1333e;

        a() {
            this.f1333e = new androidx.appcompat.view.menu.a(e0.this.f1321a.getContext(), 0, R.id.home, 0, 0, e0.this.f1329i);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e0 e0Var = e0.this;
            Window.Callback callback = e0Var.f1332l;
            if (callback == null || !e0Var.m) {
                return;
            }
            callback.onMenuItemSelected(0, this.f1333e);
        }
    }

    /* compiled from: ToolbarWidgetWrapper.java */
    /* loaded from: classes.dex */
    class b extends androidx.core.view.c0 {

        /* renamed from: a, reason: collision with root package name */
        private boolean f1335a = false;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1336b;

        b(int i2) {
            this.f1336b = i2;
        }

        @Override // androidx.core.view.c0, androidx.core.view.b0
        public void a(View view) {
            this.f1335a = true;
        }

        @Override // androidx.core.view.b0
        public void b(View view) {
            if (this.f1335a) {
                return;
            }
            e0.this.f1321a.setVisibility(this.f1336b);
        }

        @Override // androidx.core.view.c0, androidx.core.view.b0
        public void c(View view) {
            e0.this.f1321a.setVisibility(0);
        }
    }

    public e0(Toolbar toolbar, boolean z) {
        this(toolbar, z, a.a.h.abc_action_bar_up_description, a.a.e.abc_ic_ab_back_material);
    }

    private void c(CharSequence charSequence) {
        this.f1329i = charSequence;
        if ((this.f1322b & 8) != 0) {
            this.f1321a.setTitle(charSequence);
        }
    }

    private int k() {
        if (this.f1321a.getNavigationIcon() == null) {
            return 11;
        }
        this.q = this.f1321a.getNavigationIcon();
        return 15;
    }

    private void l() {
        if ((this.f1322b & 4) != 0) {
            if (TextUtils.isEmpty(this.f1331k)) {
                this.f1321a.setNavigationContentDescription(this.p);
            } else {
                this.f1321a.setNavigationContentDescription(this.f1331k);
            }
        }
    }

    private void m() {
        if ((this.f1322b & 4) != 0) {
            Toolbar toolbar = this.f1321a;
            Drawable drawable = this.f1327g;
            if (drawable == null) {
                drawable = this.q;
            }
            toolbar.setNavigationIcon(drawable);
            return;
        }
        this.f1321a.setNavigationIcon((Drawable) null);
    }

    private void n() {
        Drawable drawable;
        int i2 = this.f1322b;
        if ((i2 & 2) == 0) {
            drawable = null;
        } else if ((i2 & 1) != 0) {
            drawable = this.f1326f;
            if (drawable == null) {
                drawable = this.f1325e;
            }
        } else {
            drawable = this.f1325e;
        }
        this.f1321a.setLogo(drawable);
    }

    @Override // androidx.appcompat.widget.o
    public void a() {
        this.f1321a.dismissPopupMenus();
    }

    @Override // androidx.appcompat.widget.o
    public void a(boolean z) {
    }

    @Override // androidx.appcompat.widget.o
    public boolean b() {
        return this.f1321a.hasExpandedActionView();
    }

    @Override // androidx.appcompat.widget.o
    public boolean canShowOverflowMenu() {
        return this.f1321a.canShowOverflowMenu();
    }

    @Override // androidx.appcompat.widget.o
    public void collapseActionView() {
        this.f1321a.collapseActionView();
    }

    public void d(int i2) {
        if (i2 == this.p) {
            return;
        }
        this.p = i2;
        if (TextUtils.isEmpty(this.f1321a.getNavigationContentDescription())) {
            e(this.p);
        }
    }

    @Override // androidx.appcompat.widget.o
    public boolean e() {
        return this.f1325e != null;
    }

    @Override // androidx.appcompat.widget.o
    public ViewGroup f() {
        return this.f1321a;
    }

    @Override // androidx.appcompat.widget.o
    public boolean g() {
        return this.f1326f != null;
    }

    @Override // androidx.appcompat.widget.o
    public Context getContext() {
        return this.f1321a.getContext();
    }

    @Override // androidx.appcompat.widget.o
    public CharSequence getTitle() {
        return this.f1321a.getTitle();
    }

    @Override // androidx.appcompat.widget.o
    public int h() {
        return this.f1322b;
    }

    @Override // androidx.appcompat.widget.o
    public boolean hideOverflowMenu() {
        return this.f1321a.hideOverflowMenu();
    }

    @Override // androidx.appcompat.widget.o
    public void i() {
    }

    @Override // androidx.appcompat.widget.o
    public boolean isOverflowMenuShowPending() {
        return this.f1321a.isOverflowMenuShowPending();
    }

    @Override // androidx.appcompat.widget.o
    public boolean isOverflowMenuShowing() {
        return this.f1321a.isOverflowMenuShowing();
    }

    @Override // androidx.appcompat.widget.o
    public void j() {
    }

    @Override // androidx.appcompat.widget.o
    public void setIcon(int i2) {
        setIcon(i2 != 0 ? a.a.k.a.a.c(getContext(), i2) : null);
    }

    @Override // androidx.appcompat.widget.o
    public void setMenu(Menu menu, m.a aVar) {
        if (this.n == null) {
            this.n = new ActionMenuPresenter(this.f1321a.getContext());
            this.n.a(a.a.f.action_menu_presenter);
        }
        this.n.a(aVar);
        this.f1321a.setMenu((androidx.appcompat.view.menu.f) menu, this.n);
    }

    @Override // androidx.appcompat.widget.o
    public void setMenuPrepared() {
        this.m = true;
    }

    @Override // androidx.appcompat.widget.o
    public void setTitle(CharSequence charSequence) {
        this.f1328h = true;
        c(charSequence);
    }

    @Override // androidx.appcompat.widget.o
    public void setWindowCallback(Window.Callback callback) {
        this.f1332l = callback;
    }

    @Override // androidx.appcompat.widget.o
    public void setWindowTitle(CharSequence charSequence) {
        if (this.f1328h) {
            return;
        }
        c(charSequence);
    }

    @Override // androidx.appcompat.widget.o
    public boolean showOverflowMenu() {
        return this.f1321a.showOverflowMenu();
    }

    public e0(Toolbar toolbar, boolean z, int i2, int i3) {
        Drawable drawable;
        this.o = 0;
        this.p = 0;
        this.f1321a = toolbar;
        this.f1329i = toolbar.getTitle();
        this.f1330j = toolbar.getSubtitle();
        this.f1328h = this.f1329i != null;
        this.f1327g = toolbar.getNavigationIcon();
        d0 a2 = d0.a(toolbar.getContext(), null, a.a.j.ActionBar, a.a.a.actionBarStyle, 0);
        this.q = a2.b(a.a.j.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence e2 = a2.e(a.a.j.ActionBar_title);
            if (!TextUtils.isEmpty(e2)) {
                setTitle(e2);
            }
            CharSequence e3 = a2.e(a.a.j.ActionBar_subtitle);
            if (!TextUtils.isEmpty(e3)) {
                b(e3);
            }
            Drawable b2 = a2.b(a.a.j.ActionBar_logo);
            if (b2 != null) {
                b(b2);
            }
            Drawable b3 = a2.b(a.a.j.ActionBar_icon);
            if (b3 != null) {
                setIcon(b3);
            }
            if (this.f1327g == null && (drawable = this.q) != null) {
                c(drawable);
            }
            a(a2.d(a.a.j.ActionBar_displayOptions, 0));
            int g2 = a2.g(a.a.j.ActionBar_customNavigationLayout, 0);
            if (g2 != 0) {
                a(LayoutInflater.from(this.f1321a.getContext()).inflate(g2, (ViewGroup) this.f1321a, false));
                a(this.f1322b | 16);
            }
            int f2 = a2.f(a.a.j.ActionBar_height, 0);
            if (f2 > 0) {
                ViewGroup.LayoutParams layoutParams = this.f1321a.getLayoutParams();
                layoutParams.height = f2;
                this.f1321a.setLayoutParams(layoutParams);
            }
            int b4 = a2.b(a.a.j.ActionBar_contentInsetStart, -1);
            int b5 = a2.b(a.a.j.ActionBar_contentInsetEnd, -1);
            if (b4 >= 0 || b5 >= 0) {
                this.f1321a.setContentInsetsRelative(Math.max(b4, 0), Math.max(b5, 0));
            }
            int g3 = a2.g(a.a.j.ActionBar_titleTextStyle, 0);
            if (g3 != 0) {
                Toolbar toolbar2 = this.f1321a;
                toolbar2.setTitleTextAppearance(toolbar2.getContext(), g3);
            }
            int g4 = a2.g(a.a.j.ActionBar_subtitleTextStyle, 0);
            if (g4 != 0) {
                Toolbar toolbar3 = this.f1321a;
                toolbar3.setSubtitleTextAppearance(toolbar3.getContext(), g4);
            }
            int g5 = a2.g(a.a.j.ActionBar_popupTheme, 0);
            if (g5 != 0) {
                this.f1321a.setPopupTheme(g5);
            }
        } else {
            this.f1322b = k();
        }
        a2.b();
        d(i2);
        this.f1331k = this.f1321a.getNavigationContentDescription();
        this.f1321a.setNavigationOnClickListener(new a());
    }

    @Override // androidx.appcompat.widget.o
    public void a(int i2) {
        View view;
        int i3 = this.f1322b ^ i2;
        this.f1322b = i2;
        if (i3 != 0) {
            if ((i3 & 4) != 0) {
                if ((i2 & 4) != 0) {
                    l();
                }
                m();
            }
            if ((i3 & 3) != 0) {
                n();
            }
            if ((i3 & 8) != 0) {
                if ((i2 & 8) != 0) {
                    this.f1321a.setTitle(this.f1329i);
                    this.f1321a.setSubtitle(this.f1330j);
                } else {
                    this.f1321a.setTitle((CharSequence) null);
                    this.f1321a.setSubtitle((CharSequence) null);
                }
            }
            if ((i3 & 16) == 0 || (view = this.f1324d) == null) {
                return;
            }
            if ((i2 & 16) != 0) {
                this.f1321a.addView(view);
            } else {
                this.f1321a.removeView(view);
            }
        }
    }

    public void b(CharSequence charSequence) {
        this.f1330j = charSequence;
        if ((this.f1322b & 8) != 0) {
            this.f1321a.setSubtitle(charSequence);
        }
    }

    public void e(int i2) {
        a(i2 == 0 ? null : getContext().getString(i2));
    }

    @Override // androidx.appcompat.widget.o
    public void setIcon(Drawable drawable) {
        this.f1325e = drawable;
        n();
    }

    public void c(Drawable drawable) {
        this.f1327g = drawable;
        m();
    }

    @Override // androidx.appcompat.widget.o
    public void b(int i2) {
        b(i2 != 0 ? a.a.k.a.a.c(getContext(), i2) : null);
    }

    @Override // androidx.appcompat.widget.o
    public int d() {
        return this.o;
    }

    public void b(Drawable drawable) {
        this.f1326f = drawable;
        n();
    }

    @Override // androidx.appcompat.widget.o
    public void c(int i2) {
        this.f1321a.setVisibility(i2);
    }

    @Override // androidx.appcompat.widget.o
    public Menu c() {
        return this.f1321a.getMenu();
    }

    @Override // androidx.appcompat.widget.o
    public void b(boolean z) {
        this.f1321a.setCollapsible(z);
    }

    @Override // androidx.appcompat.widget.o
    public void b(SparseArray<Parcelable> sparseArray) {
        this.f1321a.restoreHierarchyState(sparseArray);
    }

    @Override // androidx.appcompat.widget.o
    public void a(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f1323c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f1321a;
            if (parent == toolbar) {
                toolbar.removeView(this.f1323c);
            }
        }
        this.f1323c = scrollingTabContainerView;
        if (scrollingTabContainerView == null || this.o != 2) {
            return;
        }
        this.f1321a.addView(this.f1323c, 0);
        Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.f1323c.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) layoutParams).width = -2;
        ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
        layoutParams.f727a = 8388691;
        scrollingTabContainerView.setAllowCollapse(true);
    }

    public void a(View view) {
        View view2 = this.f1324d;
        if (view2 != null && (this.f1322b & 16) != 0) {
            this.f1321a.removeView(view2);
        }
        this.f1324d = view;
        if (view == null || (this.f1322b & 16) == 0) {
            return;
        }
        this.f1321a.addView(this.f1324d);
    }

    @Override // androidx.appcompat.widget.o
    public androidx.core.view.a0 a(int i2, long j2) {
        androidx.core.view.a0 a2 = ViewCompat.a(this.f1321a);
        a2.a(i2 == 0 ? 1.0f : 0.0f);
        a2.a(j2);
        a2.a(new b(i2));
        return a2;
    }

    public void a(CharSequence charSequence) {
        this.f1331k = charSequence;
        l();
    }

    @Override // androidx.appcompat.widget.o
    public void a(SparseArray<Parcelable> sparseArray) {
        this.f1321a.saveHierarchyState(sparseArray);
    }

    @Override // androidx.appcompat.widget.o
    public void a(Drawable drawable) {
        ViewCompat.a(this.f1321a, drawable);
    }

    @Override // androidx.appcompat.widget.o
    public void a(m.a aVar, f.a aVar2) {
        this.f1321a.setMenuCallbacks(aVar, aVar2);
    }
}

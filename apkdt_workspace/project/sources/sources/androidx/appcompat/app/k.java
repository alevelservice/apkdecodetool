package androidx.appcompat.app;

import a.a.n.b;
import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.annotation.RestrictTo;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.menu.f;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ScrollingTabContainerView;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.o;
import androidx.core.view.ViewCompat;
import androidx.core.view.a0;
import androidx.core.view.b0;
import androidx.core.view.c0;
import androidx.core.view.d0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* compiled from: WindowDecorActionBar.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class k extends ActionBar implements ActionBarOverlayLayout.d {
    private static final Interpolator B = new AccelerateInterpolator();
    private static final Interpolator C = new DecelerateInterpolator();
    final d0 A;

    /* renamed from: a, reason: collision with root package name */
    Context f870a;

    /* renamed from: b, reason: collision with root package name */
    private Context f871b;

    /* renamed from: c, reason: collision with root package name */
    ActionBarOverlayLayout f872c;

    /* renamed from: d, reason: collision with root package name */
    ActionBarContainer f873d;

    /* renamed from: e, reason: collision with root package name */
    o f874e;

    /* renamed from: f, reason: collision with root package name */
    ActionBarContextView f875f;

    /* renamed from: g, reason: collision with root package name */
    View f876g;

    /* renamed from: h, reason: collision with root package name */
    ScrollingTabContainerView f877h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f878i;

    /* renamed from: j, reason: collision with root package name */
    d f879j;

    /* renamed from: k, reason: collision with root package name */
    a.a.n.b f880k;

    /* renamed from: l, reason: collision with root package name */
    b.a f881l;
    private boolean m;
    private ArrayList<ActionBar.a> n;
    private boolean o;
    private int p;
    boolean q;
    boolean r;
    boolean s;
    private boolean t;
    private boolean u;
    a.a.n.h v;
    private boolean w;
    boolean x;
    final b0 y;
    final b0 z;

    /* compiled from: WindowDecorActionBar.java */
    /* loaded from: classes.dex */
    class a extends c0 {
        a() {
        }

        @Override // androidx.core.view.b0
        public void b(View view) {
            View view2;
            k kVar = k.this;
            if (kVar.q && (view2 = kVar.f876g) != null) {
                view2.setTranslationY(0.0f);
                k.this.f873d.setTranslationY(0.0f);
            }
            k.this.f873d.setVisibility(8);
            k.this.f873d.setTransitioning(false);
            k kVar2 = k.this;
            kVar2.v = null;
            kVar2.n();
            ActionBarOverlayLayout actionBarOverlayLayout = k.this.f872c;
            if (actionBarOverlayLayout != null) {
                ViewCompat.I(actionBarOverlayLayout);
            }
        }
    }

    /* compiled from: WindowDecorActionBar.java */
    /* loaded from: classes.dex */
    class b extends c0 {
        b() {
        }

        @Override // androidx.core.view.b0
        public void b(View view) {
            k kVar = k.this;
            kVar.v = null;
            kVar.f873d.requestLayout();
        }
    }

    /* compiled from: WindowDecorActionBar.java */
    /* loaded from: classes.dex */
    class c implements d0 {
        c() {
        }

        @Override // androidx.core.view.d0
        public void a(View view) {
            ((View) k.this.f873d.getParent()).invalidate();
        }
    }

    /* compiled from: WindowDecorActionBar.java */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public class d extends a.a.n.b implements f.a {

        /* renamed from: g, reason: collision with root package name */
        private final Context f885g;

        /* renamed from: h, reason: collision with root package name */
        private final androidx.appcompat.view.menu.f f886h;

        /* renamed from: i, reason: collision with root package name */
        private b.a f887i;

        /* renamed from: j, reason: collision with root package name */
        private WeakReference<View> f888j;

        public d(Context context, b.a aVar) {
            this.f885g = context;
            this.f887i = aVar;
            androidx.appcompat.view.menu.f fVar = new androidx.appcompat.view.menu.f(context);
            fVar.c(1);
            this.f886h = fVar;
            this.f886h.a(this);
        }

        @Override // a.a.n.b
        public void a() {
            k kVar = k.this;
            if (kVar.f879j != this) {
                return;
            }
            if (!k.a(kVar.r, kVar.s, false)) {
                k kVar2 = k.this;
                kVar2.f880k = this;
                kVar2.f881l = this.f887i;
            } else {
                this.f887i.a(this);
            }
            this.f887i = null;
            k.this.h(false);
            k.this.f875f.closeMode();
            k.this.f874e.f().sendAccessibilityEvent(32);
            k kVar3 = k.this;
            kVar3.f872c.setHideOnContentScrollEnabled(kVar3.x);
            k.this.f879j = null;
        }

        @Override // a.a.n.b
        public void b(CharSequence charSequence) {
            k.this.f875f.setTitle(charSequence);
        }

        @Override // a.a.n.b
        public Menu c() {
            return this.f886h;
        }

        @Override // a.a.n.b
        public MenuInflater d() {
            return new a.a.n.g(this.f885g);
        }

        @Override // a.a.n.b
        public CharSequence e() {
            return k.this.f875f.getSubtitle();
        }

        @Override // a.a.n.b
        public CharSequence g() {
            return k.this.f875f.getTitle();
        }

        @Override // a.a.n.b
        public void i() {
            if (k.this.f879j != this) {
                return;
            }
            this.f886h.s();
            try {
                this.f887i.b(this, this.f886h);
            } finally {
                this.f886h.r();
            }
        }

        @Override // a.a.n.b
        public boolean j() {
            return k.this.f875f.isTitleOptional();
        }

        public boolean k() {
            this.f886h.s();
            try {
                return this.f887i.a(this, this.f886h);
            } finally {
                this.f886h.r();
            }
        }

        @Override // a.a.n.b
        public void b(int i2) {
            b(k.this.f870a.getResources().getString(i2));
        }

        @Override // a.a.n.b
        public View b() {
            WeakReference<View> weakReference = this.f888j;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // a.a.n.b
        public void a(View view) {
            k.this.f875f.setCustomView(view);
            this.f888j = new WeakReference<>(view);
        }

        @Override // a.a.n.b
        public void a(CharSequence charSequence) {
            k.this.f875f.setSubtitle(charSequence);
        }

        @Override // a.a.n.b
        public void a(int i2) {
            a((CharSequence) k.this.f870a.getResources().getString(i2));
        }

        @Override // a.a.n.b
        public void a(boolean z) {
            super.a(z);
            k.this.f875f.setTitleOptional(z);
        }

        @Override // androidx.appcompat.view.menu.f.a
        public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
            b.a aVar = this.f887i;
            if (aVar != null) {
                return aVar.a(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.f.a
        public void a(androidx.appcompat.view.menu.f fVar) {
            if (this.f887i == null) {
                return;
            }
            i();
            k.this.f875f.showOverflowMenu();
        }
    }

    public k(Activity activity, boolean z) {
        new ArrayList();
        this.n = new ArrayList<>();
        this.p = 0;
        this.q = true;
        this.u = true;
        this.y = new a();
        this.z = new b();
        this.A = new c();
        View decorView = activity.getWindow().getDecorView();
        b(decorView);
        if (z) {
            return;
        }
        this.f876g = decorView.findViewById(R.id.content);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private o a(View view) {
        if (view instanceof o) {
            return (o) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != 0 ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb.toString());
    }

    static boolean a(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return (z || z2) ? false : true;
    }

    private void b(View view) {
        this.f872c = (ActionBarOverlayLayout) view.findViewById(a.a.f.decor_content_parent);
        ActionBarOverlayLayout actionBarOverlayLayout = this.f872c;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f874e = a(view.findViewById(a.a.f.action_bar));
        this.f875f = (ActionBarContextView) view.findViewById(a.a.f.action_context_bar);
        this.f873d = (ActionBarContainer) view.findViewById(a.a.f.action_bar_container);
        o oVar = this.f874e;
        if (oVar != null && this.f875f != null && this.f873d != null) {
            this.f870a = oVar.getContext();
            boolean z = (this.f874e.h() & 4) != 0;
            if (z) {
                this.f878i = true;
            }
            a.a.n.a a2 = a.a.n.a.a(this.f870a);
            l(a2.a() || z);
            m(a2.f());
            TypedArray obtainStyledAttributes = this.f870a.obtainStyledAttributes(null, a.a.j.ActionBar, a.a.a.actionBarStyle, 0);
            if (obtainStyledAttributes.getBoolean(a.a.j.ActionBar_hideOnContentScroll, false)) {
                k(true);
            }
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(a.a.j.ActionBar_elevation, 0);
            if (dimensionPixelSize != 0) {
                a(dimensionPixelSize);
            }
            obtainStyledAttributes.recycle();
            return;
        }
        throw new IllegalStateException(k.class.getSimpleName() + " can only be used with a compatible window decor layout");
    }

    private void m(boolean z) {
        this.o = z;
        if (!this.o) {
            this.f874e.a((ScrollingTabContainerView) null);
            this.f873d.setTabContainer(this.f877h);
        } else {
            this.f873d.setTabContainer(null);
            this.f874e.a(this.f877h);
        }
        boolean z2 = o() == 2;
        ScrollingTabContainerView scrollingTabContainerView = this.f877h;
        if (scrollingTabContainerView != null) {
            if (z2) {
                scrollingTabContainerView.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f872c;
                if (actionBarOverlayLayout != null) {
                    ViewCompat.I(actionBarOverlayLayout);
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
        }
        this.f874e.b(!this.o && z2);
        this.f872c.setHasNonEmbeddedTabs(!this.o && z2);
    }

    private void p() {
        if (this.t) {
            this.t = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f872c;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            n(false);
        }
    }

    private boolean q() {
        return ViewCompat.D(this.f873d);
    }

    private void r() {
        if (this.t) {
            return;
        }
        this.t = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.f872c;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setShowingForActionMode(true);
        }
        n(false);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void b() {
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void c() {
        if (this.s) {
            return;
        }
        this.s = true;
        n(true);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void d(boolean z) {
        a(z ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void e(boolean z) {
        a(z ? 2 : 0, 2);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void f(boolean z) {
        a(z ? 8 : 0, 8);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void g(boolean z) {
        a.a.n.h hVar;
        this.w = z;
        if (z || (hVar = this.v) == null) {
            return;
        }
        hVar.a();
    }

    public void h(boolean z) {
        a0 a2;
        a0 a0Var;
        if (z) {
            r();
        } else {
            p();
        }
        if (!q()) {
            if (z) {
                this.f874e.c(4);
                this.f875f.setVisibility(0);
                return;
            } else {
                this.f874e.c(0);
                this.f875f.setVisibility(8);
                return;
            }
        }
        if (z) {
            a0Var = this.f874e.a(4, 100L);
            a2 = this.f875f.setupAnimatorToVisibility(0, 200L);
        } else {
            a2 = this.f874e.a(0, 200L);
            a0Var = this.f875f.setupAnimatorToVisibility(8, 100L);
        }
        a.a.n.h hVar = new a.a.n.h();
        hVar.a(a0Var, a2);
        hVar.c();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void i() {
        if (this.r) {
            return;
        }
        this.r = true;
        n(false);
    }

    public void j(boolean z) {
        View view;
        View view2;
        a.a.n.h hVar = this.v;
        if (hVar != null) {
            hVar.a();
        }
        this.f873d.setVisibility(0);
        if (this.p == 0 && (this.w || z)) {
            this.f873d.setTranslationY(0.0f);
            float f2 = -this.f873d.getHeight();
            if (z) {
                this.f873d.getLocationInWindow(new int[]{0, 0});
                f2 -= r5[1];
            }
            this.f873d.setTranslationY(f2);
            a.a.n.h hVar2 = new a.a.n.h();
            a0 a2 = ViewCompat.a(this.f873d);
            a2.b(0.0f);
            a2.a(this.A);
            hVar2.a(a2);
            if (this.q && (view2 = this.f876g) != null) {
                view2.setTranslationY(f2);
                a0 a3 = ViewCompat.a(this.f876g);
                a3.b(0.0f);
                hVar2.a(a3);
            }
            hVar2.a(C);
            hVar2.a(250L);
            hVar2.a(this.z);
            this.v = hVar2;
            hVar2.c();
        } else {
            this.f873d.setAlpha(1.0f);
            this.f873d.setTranslationY(0.0f);
            if (this.q && (view = this.f876g) != null) {
                view.setTranslationY(0.0f);
            }
            this.z.b(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f872c;
        if (actionBarOverlayLayout != null) {
            ViewCompat.I(actionBarOverlayLayout);
        }
    }

    public void k(boolean z) {
        if (z && !this.f872c.isInOverlayMode()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.x = z;
        this.f872c.setHideOnContentScrollEnabled(z);
    }

    public void l(boolean z) {
        this.f874e.a(z);
    }

    void n() {
        b.a aVar = this.f881l;
        if (aVar != null) {
            aVar.a(this.f880k);
            this.f880k = null;
            this.f881l = null;
        }
    }

    public int o() {
        return this.f874e.d();
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void onWindowVisibilityChanged(int i2) {
        this.p = i2;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void d() {
        a.a.n.h hVar = this.v;
        if (hVar != null) {
            hVar.a();
            this.v = null;
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean f() {
        o oVar = this.f874e;
        if (oVar == null || !oVar.b()) {
            return false;
        }
        this.f874e.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void c(boolean z) {
        if (this.f878i) {
            return;
        }
        d(z);
    }

    @Override // androidx.appcompat.app.ActionBar
    public int g() {
        return this.f874e.h();
    }

    public void i(boolean z) {
        View view;
        a.a.n.h hVar = this.v;
        if (hVar != null) {
            hVar.a();
        }
        if (this.p == 0 && (this.w || z)) {
            this.f873d.setAlpha(1.0f);
            this.f873d.setTransitioning(true);
            a.a.n.h hVar2 = new a.a.n.h();
            float f2 = -this.f873d.getHeight();
            if (z) {
                this.f873d.getLocationInWindow(new int[]{0, 0});
                f2 -= r5[1];
            }
            a0 a2 = ViewCompat.a(this.f873d);
            a2.b(f2);
            a2.a(this.A);
            hVar2.a(a2);
            if (this.q && (view = this.f876g) != null) {
                a0 a3 = ViewCompat.a(view);
                a3.b(f2);
                hVar2.a(a3);
            }
            hVar2.a(B);
            hVar2.a(250L);
            hVar2.a(this.y);
            this.v = hVar2;
            hVar2.c();
            return;
        }
        this.y.b(null);
    }

    private void n(boolean z) {
        if (a(this.r, this.s, this.t)) {
            if (this.u) {
                return;
            }
            this.u = true;
            j(z);
            return;
        }
        if (this.u) {
            this.u = false;
            i(z);
        }
    }

    public void a(float f2) {
        ViewCompat.a(this.f873d, f2);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void a(Configuration configuration) {
        m(a.a.n.a.a(this.f870a).f());
    }

    @Override // androidx.appcompat.app.ActionBar
    public void a(CharSequence charSequence) {
        this.f874e.setTitle(charSequence);
    }

    public void a(int i2, int i3) {
        int h2 = this.f874e.h();
        if ((i3 & 4) != 0) {
            this.f878i = true;
        }
        this.f874e.a((i2 & i3) | ((i3 ^ (-1)) & h2));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void a(Drawable drawable) {
        this.f873d.setPrimaryBackground(drawable);
    }

    public k(Dialog dialog) {
        new ArrayList();
        this.n = new ArrayList<>();
        this.p = 0;
        this.q = true;
        this.u = true;
        this.y = new a();
        this.z = new b();
        this.A = new c();
        b(dialog.getWindow().getDecorView());
    }

    @Override // androidx.appcompat.app.ActionBar
    public a.a.n.b a(b.a aVar) {
        d dVar = this.f879j;
        if (dVar != null) {
            dVar.a();
        }
        this.f872c.setHideOnContentScrollEnabled(false);
        this.f875f.killMode();
        d dVar2 = new d(this.f875f.getContext(), aVar);
        if (!dVar2.k()) {
            return null;
        }
        this.f879j = dVar2;
        dVar2.i();
        this.f875f.initForMode(dVar2);
        h(true);
        this.f875f.sendAccessibilityEvent(32);
        return dVar2;
    }

    @Override // androidx.appcompat.app.ActionBar
    public Context h() {
        if (this.f871b == null) {
            TypedValue typedValue = new TypedValue();
            this.f870a.getTheme().resolveAttribute(a.a.a.actionBarWidgetTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                this.f871b = new ContextThemeWrapper(this.f870a, i2);
            } else {
                this.f871b = this.f870a;
            }
        }
        return this.f871b;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void m() {
        if (this.r) {
            this.r = false;
            n(false);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void b(boolean z) {
        if (z == this.m) {
            return;
        }
        this.m = z;
        int size = this.n.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.n.get(i2).a(z);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void a(boolean z) {
        this.q = z;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void b(CharSequence charSequence) {
        this.f874e.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void a() {
        if (this.s) {
            this.s = false;
            n(true);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean a(int i2, KeyEvent keyEvent) {
        Menu c2;
        d dVar = this.f879j;
        if (dVar == null || (c2 = dVar.c()) == null) {
            return false;
        }
        c2.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return c2.performShortcut(i2, keyEvent, 0);
    }
}

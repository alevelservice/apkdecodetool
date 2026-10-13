package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.appcompat.widget.t;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class CascadingMenuPopup extends k implements m, View.OnKeyListener, PopupWindow.OnDismissListener {
    private static final int F = a.a.g.abc_cascading_menu_item_layout;
    private boolean A;
    private m.a B;
    ViewTreeObserver C;
    private PopupWindow.OnDismissListener D;
    boolean E;

    /* renamed from: f, reason: collision with root package name */
    private final Context f924f;

    /* renamed from: g, reason: collision with root package name */
    private final int f925g;

    /* renamed from: h, reason: collision with root package name */
    private final int f926h;

    /* renamed from: i, reason: collision with root package name */
    private final int f927i;

    /* renamed from: j, reason: collision with root package name */
    private final boolean f928j;

    /* renamed from: k, reason: collision with root package name */
    final Handler f929k;
    private View s;
    View t;
    private boolean v;
    private boolean w;
    private int x;
    private int y;

    /* renamed from: l, reason: collision with root package name */
    private final List<f> f930l = new ArrayList();
    final List<d> m = new ArrayList();
    final ViewTreeObserver.OnGlobalLayoutListener n = new a();
    private final View.OnAttachStateChangeListener o = new b();
    private final t p = new c();
    private int q = 0;
    private int r = 0;
    private boolean z = false;
    private int u = h();

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface HorizPosition {
    }

    /* loaded from: classes.dex */
    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!CascadingMenuPopup.this.c() || CascadingMenuPopup.this.m.size() <= 0 || CascadingMenuPopup.this.m.get(0).f938a.k()) {
                return;
            }
            View view = CascadingMenuPopup.this.t;
            if (view != null && view.isShown()) {
                Iterator<d> it = CascadingMenuPopup.this.m.iterator();
                while (it.hasNext()) {
                    it.next().f938a.show();
                }
                return;
            }
            CascadingMenuPopup.this.dismiss();
        }
    }

    /* loaded from: classes.dex */
    class b implements View.OnAttachStateChangeListener {
        b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = CascadingMenuPopup.this.C;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    CascadingMenuPopup.this.C = view.getViewTreeObserver();
                }
                CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
                cascadingMenuPopup.C.removeGlobalOnLayoutListener(cascadingMenuPopup.n);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    /* loaded from: classes.dex */
    class c implements t {

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ d f934e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ MenuItem f935f;

            /* renamed from: g, reason: collision with root package name */
            final /* synthetic */ f f936g;

            a(d dVar, MenuItem menuItem, f fVar) {
                this.f934e = dVar;
                this.f935f = menuItem;
                this.f936g = fVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                d dVar = this.f934e;
                if (dVar != null) {
                    CascadingMenuPopup.this.E = true;
                    dVar.f939b.a(false);
                    CascadingMenuPopup.this.E = false;
                }
                if (this.f935f.isEnabled() && this.f935f.hasSubMenu()) {
                    this.f936g.a(this.f935f, 4);
                }
            }
        }

        c() {
        }

        @Override // androidx.appcompat.widget.t
        public void a(@NonNull f fVar, @NonNull MenuItem menuItem) {
            CascadingMenuPopup.this.f929k.removeCallbacksAndMessages(null);
            int size = CascadingMenuPopup.this.m.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                } else if (fVar == CascadingMenuPopup.this.m.get(i2).f939b) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 == -1) {
                return;
            }
            int i3 = i2 + 1;
            CascadingMenuPopup.this.f929k.postAtTime(new a(i3 < CascadingMenuPopup.this.m.size() ? CascadingMenuPopup.this.m.get(i3) : null, menuItem, fVar), fVar, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.t
        public void b(@NonNull f fVar, @NonNull MenuItem menuItem) {
            CascadingMenuPopup.this.f929k.removeCallbacksAndMessages(fVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public final MenuPopupWindow f938a;

        /* renamed from: b, reason: collision with root package name */
        public final f f939b;

        /* renamed from: c, reason: collision with root package name */
        public final int f940c;

        public d(@NonNull MenuPopupWindow menuPopupWindow, @NonNull f fVar, int i2) {
            this.f938a = menuPopupWindow;
            this.f939b = fVar;
            this.f940c = i2;
        }

        public ListView a() {
            return this.f938a.e();
        }
    }

    public CascadingMenuPopup(@NonNull Context context, @NonNull View view, @AttrRes int i2, @StyleRes int i3, boolean z) {
        this.f924f = context;
        this.s = view;
        this.f926h = i2;
        this.f927i = i3;
        this.f928j = z;
        Resources resources = context.getResources();
        this.f925g = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(a.a.d.abc_config_prefDialogWidth));
        this.f929k = new Handler();
    }

    private int d(int i2) {
        List<d> list = this.m;
        ListView a2 = list.get(list.size() - 1).a();
        int[] iArr = new int[2];
        a2.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.t.getWindowVisibleDisplayFrame(rect);
        return this.u == 1 ? (iArr[0] + a2.getWidth()) + i2 > rect.right ? 0 : 1 : iArr[0] - i2 < 0 ? 1 : 0;
    }

    private MenuPopupWindow g() {
        MenuPopupWindow menuPopupWindow = new MenuPopupWindow(this.f924f, null, this.f926h, this.f927i);
        menuPopupWindow.a(this.p);
        menuPopupWindow.a((AdapterView.OnItemClickListener) this);
        menuPopupWindow.a((PopupWindow.OnDismissListener) this);
        menuPopupWindow.a(this.s);
        menuPopupWindow.f(this.r);
        menuPopupWindow.a(true);
        menuPopupWindow.g(2);
        return menuPopupWindow;
    }

    private int h() {
        return ViewCompat.n(this.s) == 1 ? 0 : 1;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.k
    public void a(f fVar) {
        fVar.a(this, this.f924f);
        if (c()) {
            d(fVar);
        } else {
            this.f930l.add(fVar);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public Parcelable b() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.k
    public void b(boolean z) {
        this.z = z;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean c() {
        return this.m.size() > 0 && this.m.get(0).f938a.c();
    }

    @Override // androidx.appcompat.view.menu.k
    protected boolean d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public void dismiss() {
        int size = this.m.size();
        if (size > 0) {
            d[] dVarArr = (d[]) this.m.toArray(new d[size]);
            for (int i2 = size - 1; i2 >= 0; i2--) {
                d dVar = dVarArr[i2];
                if (dVar.f938a.c()) {
                    dVar.f938a.dismiss();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView e() {
        if (this.m.isEmpty()) {
            return null;
        }
        return this.m.get(r0.size() - 1).a();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        d dVar;
        int size = this.m.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                dVar = null;
                break;
            }
            dVar = this.m.get(i2);
            if (!dVar.f938a.c()) {
                break;
            } else {
                i2++;
            }
        }
        if (dVar != null) {
            dVar.f939b.a(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i2 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // androidx.appcompat.view.menu.p
    public void show() {
        if (c()) {
            return;
        }
        Iterator<f> it = this.f930l.iterator();
        while (it.hasNext()) {
            d(it.next());
        }
        this.f930l.clear();
        this.t = this.s;
        if (this.t != null) {
            boolean z = this.C == null;
            this.C = this.t.getViewTreeObserver();
            if (z) {
                this.C.addOnGlobalLayoutListener(this.n);
            }
            this.t.addOnAttachStateChangeListener(this.o);
        }
    }

    private int c(@NonNull f fVar) {
        int size = this.m.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (fVar == this.m.get(i2).f939b) {
                return i2;
            }
        }
        return -1;
    }

    @Override // androidx.appcompat.view.menu.k
    public void b(int i2) {
        this.v = true;
        this.x = i2;
    }

    private MenuItem a(@NonNull f fVar, @NonNull f fVar2) {
        int size = fVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = fVar.getItem(i2);
            if (item.hasSubMenu() && fVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.k
    public void c(int i2) {
        this.w = true;
        this.y = i2;
    }

    @Override // androidx.appcompat.view.menu.k
    public void c(boolean z) {
        this.A = z;
    }

    @Nullable
    private View a(@NonNull d dVar, @NonNull f fVar) {
        e eVar;
        int i2;
        int firstVisiblePosition;
        MenuItem a2 = a(dVar.f939b, fVar);
        if (a2 == null) {
            return null;
        }
        ListView a3 = dVar.a();
        ListAdapter adapter = a3.getAdapter();
        int i3 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i2 = headerViewListAdapter.getHeadersCount();
            eVar = (e) headerViewListAdapter.getWrappedAdapter();
        } else {
            eVar = (e) adapter;
            i2 = 0;
        }
        int count = eVar.getCount();
        while (true) {
            if (i3 >= count) {
                i3 = -1;
                break;
            }
            if (a2 == eVar.getItem(i3)) {
                break;
            }
            i3++;
        }
        if (i3 != -1 && (firstVisiblePosition = (i3 + i2) - a3.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < a3.getChildCount()) {
            return a3.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    private void d(@NonNull f fVar) {
        d dVar;
        View view;
        int i2;
        int i3;
        int i4;
        LayoutInflater from = LayoutInflater.from(this.f924f);
        e eVar = new e(fVar, from, this.f928j, F);
        if (!c() && this.z) {
            eVar.a(true);
        } else if (c()) {
            eVar.a(k.b(fVar));
        }
        int a2 = k.a(eVar, null, this.f924f, this.f925g);
        MenuPopupWindow g2 = g();
        g2.a((ListAdapter) eVar);
        g2.e(a2);
        g2.f(this.r);
        if (this.m.size() > 0) {
            List<d> list = this.m;
            dVar = list.get(list.size() - 1);
            view = a(dVar, fVar);
        } else {
            dVar = null;
            view = null;
        }
        if (view != null) {
            g2.c(false);
            g2.a((Object) null);
            int d2 = d(a2);
            boolean z = d2 == 1;
            this.u = d2;
            if (Build.VERSION.SDK_INT >= 26) {
                g2.a(view);
                i3 = 0;
                i2 = 0;
            } else {
                int[] iArr = new int[2];
                this.s.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                if ((this.r & 7) == 5) {
                    iArr[0] = iArr[0] + this.s.getWidth();
                    iArr2[0] = iArr2[0] + view.getWidth();
                }
                i2 = iArr2[0] - iArr[0];
                i3 = iArr2[1] - iArr[1];
            }
            if ((this.r & 5) == 5) {
                if (!z) {
                    a2 = view.getWidth();
                    i4 = i2 - a2;
                }
                i4 = i2 + a2;
            } else {
                if (z) {
                    a2 = view.getWidth();
                    i4 = i2 + a2;
                }
                i4 = i2 - a2;
            }
            g2.a(i4);
            g2.b(true);
            g2.b(i3);
        } else {
            if (this.v) {
                g2.a(this.x);
            }
            if (this.w) {
                g2.b(this.y);
            }
            g2.a(f());
        }
        this.m.add(new d(g2, fVar, this.u));
        g2.show();
        ListView e2 = g2.e();
        e2.setOnKeyListener(this);
        if (dVar == null && this.A && fVar.h() != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(a.a.g.abc_popup_menu_header_item_layout, (ViewGroup) e2, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(fVar.h());
            e2.addHeaderView(frameLayout, null, false);
            g2.show();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(boolean z) {
        Iterator<d> it = this.m.iterator();
        while (it.hasNext()) {
            k.a(it.next().a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(m.a aVar) {
        this.B = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean a(r rVar) {
        for (d dVar : this.m) {
            if (rVar == dVar.f939b) {
                dVar.a().requestFocus();
                return true;
            }
        }
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        a((f) rVar);
        m.a aVar = this.B;
        if (aVar != null) {
            aVar.a(rVar);
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(f fVar, boolean z) {
        int c2 = c(fVar);
        if (c2 < 0) {
            return;
        }
        int i2 = c2 + 1;
        if (i2 < this.m.size()) {
            this.m.get(i2).f939b.a(false);
        }
        d remove = this.m.remove(c2);
        remove.f939b.b(this);
        if (this.E) {
            remove.f938a.b((Object) null);
            remove.f938a.d(0);
        }
        remove.f938a.dismiss();
        int size = this.m.size();
        if (size > 0) {
            this.u = this.m.get(size - 1).f940c;
        } else {
            this.u = h();
        }
        if (size != 0) {
            if (z) {
                this.m.get(0).f939b.a(false);
                return;
            }
            return;
        }
        dismiss();
        m.a aVar = this.B;
        if (aVar != null) {
            aVar.a(fVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.C;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.C.removeGlobalOnLayoutListener(this.n);
            }
            this.C = null;
        }
        this.t.removeOnAttachStateChangeListener(this.o);
        this.D.onDismiss();
    }

    @Override // androidx.appcompat.view.menu.k
    public void a(int i2) {
        if (this.q != i2) {
            this.q = i2;
            this.r = androidx.core.view.e.a(i2, ViewCompat.n(this.s));
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void a(@NonNull View view) {
        if (this.s != view) {
            this.s = view;
            this.r = androidx.core.view.e.a(this.q, ViewCompat.n(this.s));
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.D = onDismissListener;
    }
}

package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.core.view.ViewCompat;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StandardMenuPopup.java */
/* loaded from: classes.dex */
public final class q extends k implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, m, View.OnKeyListener {
    private static final int z = a.a.g.abc_popup_menu_item_layout;

    /* renamed from: f, reason: collision with root package name */
    private final Context f1045f;

    /* renamed from: g, reason: collision with root package name */
    private final f f1046g;

    /* renamed from: h, reason: collision with root package name */
    private final e f1047h;

    /* renamed from: i, reason: collision with root package name */
    private final boolean f1048i;

    /* renamed from: j, reason: collision with root package name */
    private final int f1049j;

    /* renamed from: k, reason: collision with root package name */
    private final int f1050k;

    /* renamed from: l, reason: collision with root package name */
    private final int f1051l;
    final MenuPopupWindow m;
    private PopupWindow.OnDismissListener p;
    private View q;
    View r;
    private m.a s;
    ViewTreeObserver t;
    private boolean u;
    private boolean v;
    private int w;
    private boolean y;
    final ViewTreeObserver.OnGlobalLayoutListener n = new a();
    private final View.OnAttachStateChangeListener o = new b();
    private int x = 0;

    /* compiled from: StandardMenuPopup.java */
    /* loaded from: classes.dex */
    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!q.this.c() || q.this.m.k()) {
                return;
            }
            View view = q.this.r;
            if (view != null && view.isShown()) {
                q.this.m.show();
            } else {
                q.this.dismiss();
            }
        }
    }

    /* compiled from: StandardMenuPopup.java */
    /* loaded from: classes.dex */
    class b implements View.OnAttachStateChangeListener {
        b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = q.this.t;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    q.this.t = view.getViewTreeObserver();
                }
                q qVar = q.this;
                qVar.t.removeGlobalOnLayoutListener(qVar.n);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public q(Context context, f fVar, View view, int i2, int i3, boolean z2) {
        this.f1045f = context;
        this.f1046g = fVar;
        this.f1048i = z2;
        this.f1047h = new e(fVar, LayoutInflater.from(context), this.f1048i, z);
        this.f1050k = i2;
        this.f1051l = i3;
        Resources resources = context.getResources();
        this.f1049j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(a.a.d.abc_config_prefDialogWidth));
        this.q = view;
        this.m = new MenuPopupWindow(this.f1045f, null, this.f1050k, this.f1051l);
        fVar.a(this, context);
    }

    private boolean g() {
        View view;
        if (c()) {
            return true;
        }
        if (this.u || (view = this.q) == null) {
            return false;
        }
        this.r = view;
        this.m.a((PopupWindow.OnDismissListener) this);
        this.m.a((AdapterView.OnItemClickListener) this);
        this.m.a(true);
        View view2 = this.r;
        boolean z2 = this.t == null;
        this.t = view2.getViewTreeObserver();
        if (z2) {
            this.t.addOnGlobalLayoutListener(this.n);
        }
        view2.addOnAttachStateChangeListener(this.o);
        this.m.a(view2);
        this.m.f(this.x);
        if (!this.v) {
            this.w = k.a(this.f1047h, null, this.f1045f, this.f1049j);
            this.v = true;
        }
        this.m.e(this.w);
        this.m.g(2);
        this.m.a(f());
        this.m.show();
        ListView e2 = this.m.e();
        e2.setOnKeyListener(this);
        if (this.y && this.f1046g.h() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f1045f).inflate(a.a.g.abc_popup_menu_header_item_layout, (ViewGroup) e2, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            if (textView != null) {
                textView.setText(this.f1046g.h());
            }
            frameLayout.setEnabled(false);
            e2.addHeaderView(frameLayout, null, false);
        }
        this.m.a((ListAdapter) this.f1047h);
        this.m.show();
        return true;
    }

    @Override // androidx.appcompat.view.menu.k
    public void a(int i2) {
        this.x = i2;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.k
    public void a(f fVar) {
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
    public void b(boolean z2) {
        this.f1047h.a(z2);
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean c() {
        return !this.u && this.m.c();
    }

    @Override // androidx.appcompat.view.menu.p
    public void dismiss() {
        if (c()) {
            this.m.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView e() {
        return this.m.e();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.u = true;
        this.f1046g.close();
        ViewTreeObserver viewTreeObserver = this.t;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.t = this.r.getViewTreeObserver();
            }
            this.t.removeGlobalOnLayoutListener(this.n);
            this.t = null;
        }
        this.r.removeOnAttachStateChangeListener(this.o);
        PopupWindow.OnDismissListener onDismissListener = this.p;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
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
        if (!g()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(boolean z2) {
        this.v = false;
        e eVar = this.f1047h;
        if (eVar != null) {
            eVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void b(int i2) {
        this.m.a(i2);
    }

    @Override // androidx.appcompat.view.menu.k
    public void c(int i2) {
        this.m.b(i2);
    }

    @Override // androidx.appcompat.view.menu.k
    public void c(boolean z2) {
        this.y = z2;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(m.a aVar) {
        this.s = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean a(r rVar) {
        if (rVar.hasVisibleItems()) {
            l lVar = new l(this.f1045f, rVar, this.r, this.f1048i, this.f1050k, this.f1051l);
            lVar.a(this.s);
            lVar.a(k.b(rVar));
            lVar.a(this.p);
            this.p = null;
            this.f1046g.a(false);
            int a2 = this.m.a();
            int f2 = this.m.f();
            if ((Gravity.getAbsoluteGravity(this.x, ViewCompat.n(this.q)) & 7) == 5) {
                a2 += this.q.getWidth();
            }
            if (lVar.a(a2, f2)) {
                m.a aVar = this.s;
                if (aVar == null) {
                    return true;
                }
                aVar.a(rVar);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(f fVar, boolean z2) {
        if (fVar != this.f1046g) {
            return;
        }
        dismiss();
        m.a aVar = this.s;
        if (aVar != null) {
            aVar.a(fVar, z2);
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void a(View view) {
        this.q = view;
    }

    @Override // androidx.appcompat.view.menu.k
    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.p = onDismissListener;
    }
}

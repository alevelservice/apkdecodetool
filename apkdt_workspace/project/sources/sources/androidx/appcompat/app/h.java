package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.menu.f;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.e0;
import androidx.appcompat.widget.o;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ToolbarActionBar.java */
/* loaded from: classes.dex */
public class h extends ActionBar {

    /* renamed from: a, reason: collision with root package name */
    o f842a;

    /* renamed from: b, reason: collision with root package name */
    boolean f843b;

    /* renamed from: c, reason: collision with root package name */
    Window.Callback f844c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f845d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f846e;

    /* renamed from: f, reason: collision with root package name */
    private ArrayList<ActionBar.a> f847f = new ArrayList<>();

    /* renamed from: g, reason: collision with root package name */
    private final Runnable f848g = new a();

    /* renamed from: h, reason: collision with root package name */
    private final Toolbar.e f849h = new b();

    /* compiled from: ToolbarActionBar.java */
    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.o();
        }
    }

    /* compiled from: ToolbarActionBar.java */
    /* loaded from: classes.dex */
    class b implements Toolbar.e {
        b() {
        }

        @Override // androidx.appcompat.widget.Toolbar.e
        public boolean onMenuItemClick(MenuItem menuItem) {
            return h.this.f844c.onMenuItemSelected(0, menuItem);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ToolbarActionBar.java */
    /* loaded from: classes.dex */
    public final class d implements f.a {
        d() {
        }

        @Override // androidx.appcompat.view.menu.f.a
        public void a(androidx.appcompat.view.menu.f fVar) {
            h hVar = h.this;
            if (hVar.f844c != null) {
                if (hVar.f842a.isOverflowMenuShowing()) {
                    h.this.f844c.onPanelClosed(108, fVar);
                } else if (h.this.f844c.onPreparePanel(0, null, fVar)) {
                    h.this.f844c.onMenuOpened(108, fVar);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.f.a
        public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
            return false;
        }
    }

    /* compiled from: ToolbarActionBar.java */
    /* loaded from: classes.dex */
    private class e extends a.a.n.i {
        public e(Window.Callback callback) {
            super(callback);
        }

        @Override // a.a.n.i, android.view.Window.Callback
        public View onCreatePanelView(int i2) {
            if (i2 == 0) {
                return new View(h.this.f842a.getContext());
            }
            return super.onCreatePanelView(i2);
        }

        @Override // a.a.n.i, android.view.Window.Callback
        public boolean onPreparePanel(int i2, View view, Menu menu) {
            boolean onPreparePanel = super.onPreparePanel(i2, view, menu);
            if (onPreparePanel) {
                h hVar = h.this;
                if (!hVar.f843b) {
                    hVar.f842a.setMenuPrepared();
                    h.this.f843b = true;
                }
            }
            return onPreparePanel;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        this.f842a = new e0(toolbar, false);
        this.f844c = new e(callback);
        this.f842a.setWindowCallback(this.f844c);
        toolbar.setOnMenuItemClickListener(this.f849h);
        this.f842a.setWindowTitle(charSequence);
    }

    private Menu p() {
        if (!this.f845d) {
            this.f842a.a(new c(), new d());
            this.f845d = true;
        }
        return this.f842a.c();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void a(Configuration configuration) {
        super.a(configuration);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void b(CharSequence charSequence) {
        this.f842a.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void c(boolean z) {
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
    public int g() {
        return this.f842a.h();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void g(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public Context h() {
        return this.f842a.getContext();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void i() {
        this.f842a.c(8);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean j() {
        this.f842a.f().removeCallbacks(this.f848g);
        ViewCompat.a(this.f842a.f(), this.f848g);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.app.ActionBar
    public void k() {
        this.f842a.f().removeCallbacks(this.f848g);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean l() {
        return this.f842a.showOverflowMenu();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void m() {
        this.f842a.c(0);
    }

    public Window.Callback n() {
        return this.f844c;
    }

    void o() {
        Menu p = p();
        androidx.appcompat.view.menu.f fVar = p instanceof androidx.appcompat.view.menu.f ? (androidx.appcompat.view.menu.f) p : null;
        if (fVar != null) {
            fVar.s();
        }
        try {
            p.clear();
            if (!this.f844c.onCreatePanelMenu(0, p) || !this.f844c.onPreparePanel(0, null, p)) {
                p.clear();
            }
        } finally {
            if (fVar != null) {
                fVar.r();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ToolbarActionBar.java */
    /* loaded from: classes.dex */
    public final class c implements m.a {

        /* renamed from: e, reason: collision with root package name */
        private boolean f852e;

        c() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean a(androidx.appcompat.view.menu.f fVar) {
            Window.Callback callback = h.this.f844c;
            if (callback == null) {
                return false;
            }
            callback.onMenuOpened(108, fVar);
            return true;
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void a(androidx.appcompat.view.menu.f fVar, boolean z) {
            if (this.f852e) {
                return;
            }
            this.f852e = true;
            h.this.f842a.a();
            Window.Callback callback = h.this.f844c;
            if (callback != null) {
                callback.onPanelClosed(108, fVar);
            }
            this.f852e = false;
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void a(CharSequence charSequence) {
        this.f842a.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void b(boolean z) {
        if (z == this.f846e) {
            return;
        }
        this.f846e = z;
        int size = this.f847f.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f847f.get(i2).a(z);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean e() {
        return this.f842a.hideOverflowMenu();
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean f() {
        if (!this.f842a.b()) {
            return false;
        }
        this.f842a.collapseActionView();
        return true;
    }

    public void a(int i2, int i3) {
        this.f842a.a((i2 & i3) | ((i3 ^ (-1)) & this.f842a.h()));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void a(@Nullable Drawable drawable) {
        this.f842a.a(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            l();
        }
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean a(int i2, KeyEvent keyEvent) {
        Menu p = p();
        if (p == null) {
            return false;
        }
        p.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return p.performShortcut(i2, keyEvent, 0);
    }
}

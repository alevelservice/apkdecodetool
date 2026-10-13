package a.a.n;

import a.a.n.b;
import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.f;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* compiled from: StandaloneActionMode.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class e extends b implements f.a {

    /* renamed from: g, reason: collision with root package name */
    private Context f14g;

    /* renamed from: h, reason: collision with root package name */
    private ActionBarContextView f15h;

    /* renamed from: i, reason: collision with root package name */
    private b.a f16i;

    /* renamed from: j, reason: collision with root package name */
    private WeakReference<View> f17j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f18k;

    /* renamed from: l, reason: collision with root package name */
    private androidx.appcompat.view.menu.f f19l;

    public e(Context context, ActionBarContextView actionBarContextView, b.a aVar, boolean z) {
        this.f14g = context;
        this.f15h = actionBarContextView;
        this.f16i = aVar;
        androidx.appcompat.view.menu.f fVar = new androidx.appcompat.view.menu.f(actionBarContextView.getContext());
        fVar.c(1);
        this.f19l = fVar;
        this.f19l.a(this);
    }

    @Override // a.a.n.b
    public void a(CharSequence charSequence) {
        this.f15h.setSubtitle(charSequence);
    }

    @Override // a.a.n.b
    public void b(CharSequence charSequence) {
        this.f15h.setTitle(charSequence);
    }

    @Override // a.a.n.b
    public Menu c() {
        return this.f19l;
    }

    @Override // a.a.n.b
    public MenuInflater d() {
        return new g(this.f15h.getContext());
    }

    @Override // a.a.n.b
    public CharSequence e() {
        return this.f15h.getSubtitle();
    }

    @Override // a.a.n.b
    public CharSequence g() {
        return this.f15h.getTitle();
    }

    @Override // a.a.n.b
    public void i() {
        this.f16i.b(this, this.f19l);
    }

    @Override // a.a.n.b
    public boolean j() {
        return this.f15h.isTitleOptional();
    }

    @Override // a.a.n.b
    public void a(int i2) {
        a((CharSequence) this.f14g.getString(i2));
    }

    @Override // a.a.n.b
    public void b(int i2) {
        b(this.f14g.getString(i2));
    }

    @Override // a.a.n.b
    public void a(boolean z) {
        super.a(z);
        this.f15h.setTitleOptional(z);
    }

    @Override // a.a.n.b
    public View b() {
        WeakReference<View> weakReference = this.f17j;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // a.a.n.b
    public void a(View view) {
        this.f15h.setCustomView(view);
        this.f17j = view != null ? new WeakReference<>(view) : null;
    }

    @Override // a.a.n.b
    public void a() {
        if (this.f18k) {
            return;
        }
        this.f18k = true;
        this.f15h.sendAccessibilityEvent(32);
        this.f16i.a(this);
    }

    @Override // androidx.appcompat.view.menu.f.a
    public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
        return this.f16i.a(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.f.a
    public void a(androidx.appcompat.view.menu.f fVar) {
        i();
        this.f15h.showOverflowMenu();
    }
}

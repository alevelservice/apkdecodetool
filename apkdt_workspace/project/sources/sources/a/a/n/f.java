package a.a.n;

import a.a.n.b;
import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.view.menu.o;
import java.util.ArrayList;

/* compiled from: SupportActionModeWrapper.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class f extends ActionMode {

    /* renamed from: a, reason: collision with root package name */
    final Context f20a;

    /* renamed from: b, reason: collision with root package name */
    final b f21b;

    public f(Context context, b bVar) {
        this.f20a = context;
        this.f21b = bVar;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f21b.a();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f21b.b();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new o(this.f20a, (a.i.i.a.a) this.f21b.c());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f21b.d();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f21b.e();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f21b.f();
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f21b.g();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f21b.h();
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f21b.i();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f21b.j();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f21b.a(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f21b.a(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f21b.a(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f21b.b(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.f21b.a(z);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i2) {
        this.f21b.a(i2);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i2) {
        this.f21b.b(i2);
    }

    /* compiled from: SupportActionModeWrapper.java */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public static class a implements b.a {

        /* renamed from: a, reason: collision with root package name */
        final ActionMode.Callback f22a;

        /* renamed from: b, reason: collision with root package name */
        final Context f23b;

        /* renamed from: c, reason: collision with root package name */
        final ArrayList<f> f24c = new ArrayList<>();

        /* renamed from: d, reason: collision with root package name */
        final a.e.g<Menu, Menu> f25d = new a.e.g<>();

        public a(Context context, ActionMode.Callback callback) {
            this.f23b = context;
            this.f22a = callback;
        }

        @Override // a.a.n.b.a
        public boolean a(b bVar, Menu menu) {
            return this.f22a.onCreateActionMode(b(bVar), a(menu));
        }

        @Override // a.a.n.b.a
        public boolean b(b bVar, Menu menu) {
            return this.f22a.onPrepareActionMode(b(bVar), a(menu));
        }

        @Override // a.a.n.b.a
        public boolean a(b bVar, MenuItem menuItem) {
            return this.f22a.onActionItemClicked(b(bVar), new j(this.f23b, (a.i.i.a.b) menuItem));
        }

        public ActionMode b(b bVar) {
            int size = this.f24c.size();
            for (int i2 = 0; i2 < size; i2++) {
                f fVar = this.f24c.get(i2);
                if (fVar != null && fVar.f21b == bVar) {
                    return fVar;
                }
            }
            f fVar2 = new f(this.f23b, bVar);
            this.f24c.add(fVar2);
            return fVar2;
        }

        @Override // a.a.n.b.a
        public void a(b bVar) {
            this.f22a.onDestroyActionMode(b(bVar));
        }

        private Menu a(Menu menu) {
            Menu menu2 = this.f25d.get(menu);
            if (menu2 != null) {
                return menu2;
            }
            o oVar = new o(this.f23b, (a.i.i.a.a) menu);
            this.f25d.put(menu, oVar);
            return oVar;
        }
    }
}

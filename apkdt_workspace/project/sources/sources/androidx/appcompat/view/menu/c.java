package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BaseMenuWrapper.java */
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    final Context f972a;

    /* renamed from: b, reason: collision with root package name */
    private a.e.g<a.i.i.a.b, MenuItem> f973b;

    /* renamed from: c, reason: collision with root package name */
    private a.e.g<a.i.i.a.c, SubMenu> f974c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context) {
        this.f972a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final MenuItem a(MenuItem menuItem) {
        if (!(menuItem instanceof a.i.i.a.b)) {
            return menuItem;
        }
        a.i.i.a.b bVar = (a.i.i.a.b) menuItem;
        if (this.f973b == null) {
            this.f973b = new a.e.g<>();
        }
        MenuItem menuItem2 = this.f973b.get(menuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        j jVar = new j(this.f972a, bVar);
        this.f973b.put(bVar, jVar);
        return jVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        a.e.g<a.i.i.a.b, MenuItem> gVar = this.f973b;
        if (gVar != null) {
            gVar.clear();
        }
        a.e.g<a.i.i.a.c, SubMenu> gVar2 = this.f974c;
        if (gVar2 != null) {
            gVar2.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(int i2) {
        if (this.f973b == null) {
            return;
        }
        for (int i3 = 0; i3 < this.f973b.size(); i3++) {
            if (this.f973b.b(i3).getItemId() == i2) {
                this.f973b.c(i3);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SubMenu a(SubMenu subMenu) {
        if (!(subMenu instanceof a.i.i.a.c)) {
            return subMenu;
        }
        a.i.i.a.c cVar = (a.i.i.a.c) subMenu;
        if (this.f974c == null) {
            this.f974c = new a.e.g<>();
        }
        SubMenu subMenu2 = this.f974c.get(cVar);
        if (subMenu2 != null) {
            return subMenu2;
        }
        s sVar = new s(this.f972a, cVar);
        this.f974c.put(cVar, sVar);
        return sVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i2) {
        if (this.f973b == null) {
            return;
        }
        int i3 = 0;
        while (i3 < this.f973b.size()) {
            if (this.f973b.b(i3).getGroupId() == i2) {
                this.f973b.c(i3);
                i3--;
            }
            i3++;
        }
    }
}

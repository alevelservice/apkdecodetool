package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.f;

/* compiled from: SubMenuBuilder.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class r extends f implements SubMenu {
    private f B;
    private i C;

    public r(Context context, f fVar, i iVar) {
        super(context);
        this.B = fVar;
        this.C = iVar;
    }

    @Override // androidx.appcompat.view.menu.f
    public void a(f.a aVar) {
        this.B.a(aVar);
    }

    @Override // androidx.appcompat.view.menu.f
    public boolean b(i iVar) {
        return this.B.b(iVar);
    }

    @Override // androidx.appcompat.view.menu.f
    public String d() {
        i iVar = this.C;
        int itemId = iVar != null ? iVar.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.d() + ":" + itemId;
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.C;
    }

    @Override // androidx.appcompat.view.menu.f
    public f m() {
        return this.B.m();
    }

    @Override // androidx.appcompat.view.menu.f
    public boolean o() {
        return this.B.o();
    }

    @Override // androidx.appcompat.view.menu.f
    public boolean p() {
        return this.B.p();
    }

    @Override // androidx.appcompat.view.menu.f
    public boolean q() {
        return this.B.q();
    }

    @Override // androidx.appcompat.view.menu.f, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.B.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        super.a(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        super.a(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        super.a(view);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.C.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.f, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.B.setQwertyMode(z);
    }

    public Menu t() {
        return this.B;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.view.menu.f
    public boolean a(f fVar, MenuItem menuItem) {
        return super.a(fVar, menuItem) || this.B.a(fVar, menuItem);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i2) {
        super.d(i2);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i2) {
        super.e(i2);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i2) {
        this.C.setIcon(i2);
        return this;
    }

    @Override // androidx.appcompat.view.menu.f
    public boolean a(i iVar) {
        return this.B.a(iVar);
    }
}

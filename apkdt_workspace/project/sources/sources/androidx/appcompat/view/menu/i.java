package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.n;
import androidx.core.view.b;
import com.alipay.mobile.security.faceauth.api.AntDetector;

/* compiled from: MenuItemImpl.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class i implements a.i.i.a.b {
    private View A;
    private androidx.core.view.b B;
    private MenuItem.OnActionExpandListener C;
    private ContextMenu.ContextMenuInfo E;

    /* renamed from: a, reason: collision with root package name */
    private final int f1007a;

    /* renamed from: b, reason: collision with root package name */
    private final int f1008b;

    /* renamed from: c, reason: collision with root package name */
    private final int f1009c;

    /* renamed from: d, reason: collision with root package name */
    private final int f1010d;

    /* renamed from: e, reason: collision with root package name */
    private CharSequence f1011e;

    /* renamed from: f, reason: collision with root package name */
    private CharSequence f1012f;

    /* renamed from: g, reason: collision with root package name */
    private Intent f1013g;

    /* renamed from: h, reason: collision with root package name */
    private char f1014h;

    /* renamed from: j, reason: collision with root package name */
    private char f1016j;

    /* renamed from: l, reason: collision with root package name */
    private Drawable f1018l;
    f n;
    private r o;
    private Runnable p;
    private MenuItem.OnMenuItemClickListener q;
    private CharSequence r;
    private CharSequence s;
    private int z;

    /* renamed from: i, reason: collision with root package name */
    private int f1015i = 4096;

    /* renamed from: k, reason: collision with root package name */
    private int f1017k = 4096;
    private int m = 0;
    private ColorStateList t = null;
    private PorterDuff.Mode u = null;
    private boolean v = false;
    private boolean w = false;
    private boolean x = false;
    private int y = 16;
    private boolean D = false;

    /* compiled from: MenuItemImpl.java */
    /* loaded from: classes.dex */
    class a implements b.InterfaceC0037b {
        a() {
        }

        @Override // androidx.core.view.b.InterfaceC0037b
        public void onActionProviderVisibilityChanged(boolean z) {
            i iVar = i.this;
            iVar.n.d(iVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(f fVar, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6) {
        this.z = 0;
        this.n = fVar;
        this.f1007a = i3;
        this.f1008b = i2;
        this.f1009c = i4;
        this.f1010d = i5;
        this.f1011e = charSequence;
        this.z = i6;
    }

    private static void a(StringBuilder sb, int i2, int i3, String str) {
        if ((i2 & i3) == i3) {
            sb.append(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        int i2 = this.y;
        this.y = (z ? 2 : 0) | (i2 & (-3));
        if (i2 != this.y) {
            this.n.b(false);
        }
    }

    public int c() {
        return this.f1010d;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.z & 8) == 0) {
            return false;
        }
        if (this.A == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.n.a(this);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public char d() {
        return this.n.p() ? this.f1016j : this.f1014h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e() {
        char d2 = d();
        if (d2 == 0) {
            return "";
        }
        Resources resources = this.n.e().getResources();
        StringBuilder sb = new StringBuilder();
        if (ViewConfiguration.get(this.n.e()).hasPermanentMenuKey()) {
            sb.append(resources.getString(a.a.h.abc_prepend_shortcut_label));
        }
        int i2 = this.n.p() ? this.f1017k : this.f1015i;
        a(sb, i2, AntDetector.ACTION_ID_SAMPLE, resources.getString(a.a.h.abc_menu_meta_shortcut_label));
        a(sb, i2, 4096, resources.getString(a.a.h.abc_menu_ctrl_shortcut_label));
        a(sb, i2, 2, resources.getString(a.a.h.abc_menu_alt_shortcut_label));
        a(sb, i2, 1, resources.getString(a.a.h.abc_menu_shift_shortcut_label));
        a(sb, i2, 4, resources.getString(a.a.h.abc_menu_sym_shortcut_label));
        a(sb, i2, 8, resources.getString(a.a.h.abc_menu_function_shortcut_label));
        if (d2 == '\b') {
            sb.append(resources.getString(a.a.h.abc_menu_delete_shortcut_label));
        } else if (d2 == '\n') {
            sb.append(resources.getString(a.a.h.abc_menu_enter_shortcut_label));
        } else if (d2 != ' ') {
            sb.append(d2);
        } else {
            sb.append(resources.getString(a.a.h.abc_menu_space_shortcut_label));
        }
        return sb.toString();
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public boolean expandActionView() {
        if (!f()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.n.b(this);
        }
        return false;
    }

    public boolean f() {
        androidx.core.view.b bVar;
        if ((this.z & 8) == 0) {
            return false;
        }
        if (this.A == null && (bVar = this.B) != null) {
            this.A = bVar.a(this);
        }
        return this.A != null;
    }

    public boolean g() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.q;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        f fVar = this.n;
        if (fVar.a(fVar, this)) {
            return true;
        }
        Runnable runnable = this.p;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.f1013g != null) {
            try {
                this.n.e().startActivity(this.f1013g);
                return true;
            } catch (ActivityNotFoundException unused) {
            }
        }
        androidx.core.view.b bVar = this.B;
        return bVar != null && bVar.d();
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public View getActionView() {
        View view = this.A;
        if (view != null) {
            return view;
        }
        androidx.core.view.b bVar = this.B;
        if (bVar == null) {
            return null;
        }
        this.A = bVar.a(this);
        return this.A;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f1017k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f1016j;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.r;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f1008b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.f1018l;
        if (drawable != null) {
            return a(drawable);
        }
        if (this.m == 0) {
            return null;
        }
        Drawable c2 = a.a.k.a.a.c(this.n.e(), this.m);
        this.m = 0;
        this.f1018l = c2;
        return a(c2);
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.t;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.u;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f1013g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f1007a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.E;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f1015i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f1014h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f1009c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.o;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f1011e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f1012f;
        if (charSequence == null) {
            charSequence = this.f1011e;
        }
        return (Build.VERSION.SDK_INT >= 18 || charSequence == null || (charSequence instanceof String)) ? charSequence : charSequence.toString();
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.s;
    }

    public boolean h() {
        return (this.y & 32) == 32;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.o != null;
    }

    public boolean i() {
        return (this.y & 4) != 0;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.D;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.y & 1) == 1;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.y & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        androidx.core.view.b bVar = this.B;
        return (bVar == null || !bVar.e()) ? (this.y & 8) == 0 : (this.y & 8) == 0 && this.B.b();
    }

    public boolean j() {
        return (this.z & 1) == 1;
    }

    public boolean k() {
        return (this.z & 2) == 2;
    }

    public boolean l() {
        return this.n.k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean m() {
        return this.n.q() && d() != 0;
    }

    public boolean n() {
        return (this.z & 4) == 4;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(int i2) {
        setActionView(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2) {
        if (this.f1016j == c2) {
            return this;
        }
        this.f1016j = Character.toLowerCase(c2);
        this.n.b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        int i2 = this.y;
        this.y = (z ? 1 : 0) | (i2 & (-2));
        if (i2 != this.y) {
            this.n.b(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        if ((this.y & 4) != 0) {
            this.n.a((MenuItem) this);
        } else {
            b(z);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        if (z) {
            this.y |= 16;
        } else {
            this.y &= -17;
        }
        this.n.b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.m = 0;
        this.f1018l = drawable;
        this.x = true;
        this.n.b(false);
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public MenuItem setIconTintList(@Nullable ColorStateList colorStateList) {
        this.t = colorStateList;
        this.v = true;
        this.x = true;
        this.n.b(false);
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.u = mode;
        this.w = true;
        this.x = true;
        this.n.b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f1013g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2) {
        if (this.f1014h == c2) {
            return this;
        }
        this.f1014h = c2;
        this.n.b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.q = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3) {
        this.f1014h = c2;
        this.f1016j = Character.toLowerCase(c3);
        this.n.b(false);
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public void setShowAsAction(int i2) {
        int i3 = i2 & 3;
        if (i3 != 0 && i3 != 1 && i3 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.z = i2;
        this.n.c(this);
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setShowAsActionFlags(int i2) {
        setShowAsActionFlags(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f1011e = charSequence;
        this.n.b(false);
        r rVar = this.o;
        if (rVar != null) {
            rVar.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1012f = charSequence;
        this.n.b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        if (e(z)) {
            this.n.d(this);
        }
        return this;
    }

    public String toString() {
        CharSequence charSequence = this.f1011e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public void a(r rVar) {
        this.o = rVar;
        rVar.setHeaderTitle(getTitle());
    }

    public void c(boolean z) {
        this.y = (z ? 4 : 0) | (this.y & (-5));
    }

    public void d(boolean z) {
        if (z) {
            this.y |= 32;
        } else {
            this.y &= -33;
        }
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(View view) {
        setActionView(view);
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public a.i.i.a.b setContentDescription(CharSequence charSequence) {
        this.r = charSequence;
        this.n.b(false);
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public a.i.i.a.b setShowAsActionFlags(int i2) {
        setShowAsAction(i2);
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public a.i.i.a.b setTooltipText(CharSequence charSequence) {
        this.s = charSequence;
        this.n.b(false);
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public a.i.i.a.b setActionView(View view) {
        int i2;
        this.A = view;
        this.B = null;
        if (view != null && view.getId() == -1 && (i2 = this.f1007a) > 0) {
            view.setId(i2);
        }
        this.n.c(this);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence a(n.a aVar) {
        if (aVar != null && aVar.prefersCondensedTitle()) {
            return getTitleCondensed();
        }
        return getTitle();
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2, int i2) {
        if (this.f1016j == c2 && this.f1017k == i2) {
            return this;
        }
        this.f1016j = Character.toLowerCase(c2);
        this.f1017k = KeyEvent.normalizeMetaState(i2);
        this.n.b(false);
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c2, int i2) {
        if (this.f1014h == c2 && this.f1015i == i2) {
            return this;
        }
        this.f1014h = c2;
        this.f1015i = KeyEvent.normalizeMetaState(i2);
        this.n.b(false);
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3, int i2, int i3) {
        this.f1014h = c2;
        this.f1015i = KeyEvent.normalizeMetaState(i2);
        this.f1016j = Character.toLowerCase(c3);
        this.f1017k = KeyEvent.normalizeMetaState(i3);
        this.n.b(false);
        return this;
    }

    public void b() {
        this.n.c(this);
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i2) {
        this.f1018l = null;
        this.m = i2;
        this.x = true;
        this.n.b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i2) {
        setTitle(this.n.e().getString(i2));
        return this;
    }

    private Drawable a(Drawable drawable) {
        if (drawable != null && this.x && (this.v || this.w)) {
            drawable = androidx.core.graphics.drawable.a.i(drawable).mutate();
            if (this.v) {
                androidx.core.graphics.drawable.a.a(drawable, this.t);
            }
            if (this.w) {
                androidx.core.graphics.drawable.a.a(drawable, this.u);
            }
            this.x = false;
        }
        return drawable;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public a.i.i.a.b setActionView(int i2) {
        Context e2 = this.n.e();
        setActionView(LayoutInflater.from(e2).inflate(i2, (ViewGroup) new LinearLayout(e2), false));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.E = contextMenuInfo;
    }

    @Override // a.i.i.a.b
    public androidx.core.view.b a() {
        return this.B;
    }

    @Override // a.i.i.a.b
    public a.i.i.a.b a(androidx.core.view.b bVar) {
        androidx.core.view.b bVar2 = this.B;
        if (bVar2 != null) {
            bVar2.f();
        }
        this.A = null;
        this.B = bVar;
        this.n.b(true);
        androidx.core.view.b bVar3 = this.B;
        if (bVar3 != null) {
            bVar3.a(new a());
        }
        return this;
    }

    public void a(boolean z) {
        this.D = z;
        this.n.b(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e(boolean z) {
        int i2 = this.y;
        this.y = (z ? 0 : 8) | (i2 & (-9));
        return i2 != this.y;
    }
}

package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* compiled from: ActionMenuItem.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class a implements a.i.i.a.b {

    /* renamed from: a, reason: collision with root package name */
    private final int f952a;

    /* renamed from: b, reason: collision with root package name */
    private final int f953b;

    /* renamed from: c, reason: collision with root package name */
    private final int f954c;

    /* renamed from: d, reason: collision with root package name */
    private CharSequence f955d;

    /* renamed from: e, reason: collision with root package name */
    private CharSequence f956e;

    /* renamed from: f, reason: collision with root package name */
    private Intent f957f;

    /* renamed from: g, reason: collision with root package name */
    private char f958g;

    /* renamed from: i, reason: collision with root package name */
    private char f960i;

    /* renamed from: k, reason: collision with root package name */
    private Drawable f962k;

    /* renamed from: l, reason: collision with root package name */
    private Context f963l;
    private CharSequence m;
    private CharSequence n;

    /* renamed from: h, reason: collision with root package name */
    private int f959h = 4096;

    /* renamed from: j, reason: collision with root package name */
    private int f961j = 4096;
    private ColorStateList o = null;
    private PorterDuff.Mode p = null;
    private boolean q = false;
    private boolean r = false;
    private int s = 16;

    public a(Context context, int i2, int i3, int i4, int i5, CharSequence charSequence) {
        this.f963l = context;
        this.f952a = i3;
        this.f953b = i2;
        this.f954c = i5;
        this.f955d = charSequence;
    }

    private void b() {
        if (this.f962k != null) {
            if (this.q || this.r) {
                this.f962k = androidx.core.graphics.drawable.a.i(this.f962k);
                this.f962k = this.f962k.mutate();
                if (this.q) {
                    androidx.core.graphics.drawable.a.a(this.f962k, this.o);
                }
                if (this.r) {
                    androidx.core.graphics.drawable.a.a(this.f962k, this.p);
                }
            }
        }
    }

    @Override // a.i.i.a.b
    public a.i.i.a.b a(androidx.core.view.b bVar) {
        throw new UnsupportedOperationException();
    }

    @Override // a.i.i.a.b
    public androidx.core.view.b a() {
        return null;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f961j;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f960i;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.m;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f953b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f962k;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.o;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.p;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f957f;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f952a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f959h;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f958g;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f954c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f955d;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f956e;
        return charSequence != null ? charSequence : this.f955d;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.n;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.s & 1) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.s & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.s & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.s & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(int i2) {
        setActionView(i2);
        throw null;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2) {
        this.f960i = Character.toLowerCase(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.s = (z ? 1 : 0) | (this.s & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.s = (z ? 2 : 0) | (this.s & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.s = (z ? 16 : 0) | (this.s & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f962k = drawable;
        b();
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public MenuItem setIconTintList(@Nullable ColorStateList colorStateList) {
        this.o = colorStateList;
        this.q = true;
        b();
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.p = mode;
        this.r = true;
        b();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f957f = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2) {
        this.f958g = c2;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3) {
        this.f958g = c2;
        this.f960i = Character.toLowerCase(c3);
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public void setShowAsAction(int i2) {
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setShowAsActionFlags(int i2) {
        setShowAsActionFlags(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f955d = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f956e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        this.s = (this.s & 8) | (z ? 0 : 8);
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(View view) {
        setActionView(view);
        throw null;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2, int i2) {
        this.f960i = Character.toLowerCase(c2);
        this.f961j = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public a.i.i.a.b setContentDescription(CharSequence charSequence) {
        this.m = charSequence;
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c2, int i2) {
        this.f958g = c2;
        this.f959h = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public a.i.i.a.b setShowAsActionFlags(int i2) {
        setShowAsAction(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i2) {
        this.f955d = this.f963l.getResources().getString(i2);
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public a.i.i.a.b setTooltipText(CharSequence charSequence) {
        this.n = charSequence;
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public a.i.i.a.b setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i2) {
        this.f962k = androidx.core.content.a.c(this.f963l, i2);
        b();
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3, int i2, int i3) {
        this.f958g = c2;
        this.f959h = KeyEvent.normalizeMetaState(i2);
        this.f960i = Character.toLowerCase(c3);
        this.f961j = KeyEvent.normalizeMetaState(i3);
        return this;
    }

    @Override // a.i.i.a.b, android.view.MenuItem
    public a.i.i.a.b setActionView(int i2) {
        throw new UnsupportedOperationException();
    }
}

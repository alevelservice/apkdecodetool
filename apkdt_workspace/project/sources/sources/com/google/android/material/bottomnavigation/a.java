package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.f;
import androidx.appcompat.view.menu.i;

/* compiled from: BottomNavigationMenu.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class a extends f {
    public a(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.view.menu.f
    public MenuItem a(int i2, int i3, int i4, CharSequence charSequence) {
        if (size() + 1 <= 5) {
            s();
            MenuItem a2 = super.a(i2, i3, i4, charSequence);
            if (a2 instanceof i) {
                ((i) a2).c(true);
            }
            r();
            return a2;
        }
        throw new IllegalArgumentException("Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()");
    }

    @Override // androidx.appcompat.view.menu.f, android.view.Menu
    public SubMenu addSubMenu(int i2, int i3, int i4, CharSequence charSequence) {
        throw new UnsupportedOperationException("BottomNavigationView does not support submenus");
    }
}

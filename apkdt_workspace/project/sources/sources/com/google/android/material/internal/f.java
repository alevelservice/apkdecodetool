package com.google.android.material.internal;

import android.content.Context;
import android.view.SubMenu;
import androidx.annotation.RestrictTo;

/* compiled from: NavigationMenu.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class f extends androidx.appcompat.view.menu.f {
    public f(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.f, android.view.Menu
    public SubMenu addSubMenu(int i2, int i3, int i4, CharSequence charSequence) {
        androidx.appcompat.view.menu.i iVar = (androidx.appcompat.view.menu.i) a(i2, i3, i4, charSequence);
        h hVar = new h(e(), this, iVar);
        iVar.a(hVar);
        return hVar;
    }
}

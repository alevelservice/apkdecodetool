package androidx.core.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.view.MenuItem;

/* compiled from: MenuItemCompat.java */
/* loaded from: classes.dex */
public final class i {
    public static MenuItem a(MenuItem menuItem, b bVar) {
        return menuItem instanceof a.i.i.a.b ? ((a.i.i.a.b) menuItem).a(bVar) : menuItem;
    }

    public static void b(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof a.i.i.a.b) {
            ((a.i.i.a.b) menuItem).setTooltipText(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setTooltipText(charSequence);
        }
    }

    public static void a(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof a.i.i.a.b) {
            ((a.i.i.a.b) menuItem).setContentDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setContentDescription(charSequence);
        }
    }

    public static void b(MenuItem menuItem, char c2, int i2) {
        if (menuItem instanceof a.i.i.a.b) {
            ((a.i.i.a.b) menuItem).setNumericShortcut(c2, i2);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setNumericShortcut(c2, i2);
        }
    }

    public static void a(MenuItem menuItem, char c2, int i2) {
        if (menuItem instanceof a.i.i.a.b) {
            ((a.i.i.a.b) menuItem).setAlphabeticShortcut(c2, i2);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setAlphabeticShortcut(c2, i2);
        }
    }

    public static void a(MenuItem menuItem, ColorStateList colorStateList) {
        if (menuItem instanceof a.i.i.a.b) {
            ((a.i.i.a.b) menuItem).setIconTintList(colorStateList);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setIconTintList(colorStateList);
        }
    }

    public static void a(MenuItem menuItem, PorterDuff.Mode mode) {
        if (menuItem instanceof a.i.i.a.b) {
            ((a.i.i.a.b) menuItem).setIconTintMode(mode);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setIconTintMode(mode);
        }
    }
}

package a.a.n;

import a.a.j;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.view.ViewConfiguration;
import androidx.annotation.RestrictTo;

/* compiled from: ActionBarPolicy.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private Context f6a;

    private a(Context context) {
        this.f6a = context;
    }

    public static a a(Context context) {
        return new a(context);
    }

    public int b() {
        return this.f6a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    public int c() {
        Configuration configuration = this.f6a.getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        int i3 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i2 > 600) {
            return 5;
        }
        if (i2 > 960 && i3 > 720) {
            return 5;
        }
        if (i2 > 720 && i3 > 960) {
            return 5;
        }
        if (i2 >= 500) {
            return 4;
        }
        if (i2 > 640 && i3 > 480) {
            return 4;
        }
        if (i2 <= 480 || i3 <= 640) {
            return i2 >= 360 ? 3 : 2;
        }
        return 4;
    }

    public int d() {
        return this.f6a.getResources().getDimensionPixelSize(a.a.d.abc_action_bar_stacked_tab_max_width);
    }

    public int e() {
        TypedArray obtainStyledAttributes = this.f6a.obtainStyledAttributes(null, j.ActionBar, a.a.a.actionBarStyle, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(j.ActionBar_height, 0);
        Resources resources = this.f6a.getResources();
        if (!f()) {
            layoutDimension = Math.min(layoutDimension, resources.getDimensionPixelSize(a.a.d.abc_action_bar_stacked_max_height));
        }
        obtainStyledAttributes.recycle();
        return layoutDimension;
    }

    public boolean f() {
        return this.f6a.getResources().getBoolean(a.a.b.abc_action_bar_embed_tabs);
    }

    public boolean g() {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return !ViewConfiguration.get(this.f6a).hasPermanentMenuKey();
    }

    public boolean a() {
        return this.f6a.getApplicationInfo().targetSdkVersion < 14;
    }
}

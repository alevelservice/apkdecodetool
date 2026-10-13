package e.f.f.f;

import android.graphics.drawable.Drawable;
import javax.annotation.Nullable;

/* compiled from: DrawableUtils.java */
/* loaded from: classes.dex */
public class f {
    public static int a(int i2) {
        int i3 = i2 >>> 24;
        if (i3 == 255) {
            return -1;
        }
        return i3 == 0 ? -2 : -3;
    }

    public static int a(int i2, int i3) {
        if (i3 == 255) {
            return i2;
        }
        if (i3 == 0) {
            return i2 & 16777215;
        }
        return (i2 & 16777215) | ((((i2 >>> 24) * (i3 + (i3 >> 7))) >> 8) << 24);
    }

    public static void a(@Nullable Drawable drawable, @Nullable Drawable drawable2) {
        if (drawable2 == null || drawable == null || drawable == drawable2) {
            return;
        }
        drawable.setBounds(drawable2.getBounds());
        drawable.setChangingConfigurations(drawable2.getChangingConfigurations());
        drawable.setLevel(drawable2.getLevel());
        drawable.setVisible(drawable2.isVisible(), false);
        drawable.setState(drawable2.getState());
    }

    public static void a(@Nullable Drawable drawable, @Nullable e eVar) {
        if (drawable == null || eVar == null) {
            return;
        }
        eVar.a(drawable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(@Nullable Drawable drawable, @Nullable Drawable.Callback callback, @Nullable s sVar) {
        if (drawable != 0) {
            drawable.setCallback(callback);
            if (drawable instanceof r) {
                ((r) drawable).a(sVar);
            }
        }
    }
}

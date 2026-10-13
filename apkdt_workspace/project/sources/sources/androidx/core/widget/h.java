package androidx.core.widget;

import android.os.Build;
import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* compiled from: PopupWindowCompat.java */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    private static Method f2038a;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f2039b;

    /* renamed from: c, reason: collision with root package name */
    private static Field f2040c;

    /* renamed from: d, reason: collision with root package name */
    private static boolean f2041d;

    public static void a(@NonNull PopupWindow popupWindow, @NonNull View view, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 19) {
            popupWindow.showAsDropDown(view, i2, i3, i4);
            return;
        }
        if ((androidx.core.view.e.a(i4, ViewCompat.n(view)) & 7) == 5) {
            i2 -= popupWindow.getWidth() - view.getWidth();
        }
        popupWindow.showAsDropDown(view, i2, i3);
    }

    public static void a(@NonNull PopupWindow popupWindow, boolean z) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            popupWindow.setOverlapAnchor(z);
            return;
        }
        if (i2 >= 21) {
            if (!f2041d) {
                try {
                    f2040c = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                    f2040c.setAccessible(true);
                } catch (NoSuchFieldException unused) {
                }
                f2041d = true;
            }
            Field field = f2040c;
            if (field != null) {
                try {
                    field.set(popupWindow, Boolean.valueOf(z));
                } catch (IllegalAccessException unused2) {
                }
            }
        }
    }

    public static void a(@NonNull PopupWindow popupWindow, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setWindowLayoutType(i2);
            return;
        }
        if (!f2039b) {
            try {
                f2038a = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                f2038a.setAccessible(true);
            } catch (Exception unused) {
            }
            f2039b = true;
        }
        Method method = f2038a;
        if (method != null) {
            try {
                method.invoke(popupWindow, Integer.valueOf(i2));
            } catch (Exception unused2) {
            }
        }
    }
}
